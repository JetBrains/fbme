package org.fbme.lib.iec61499.stringify;


import org.fbme.lib.iec61499.declarations.AlgorithmBody;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.declarations.AlgorithmLanguage;
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration;
import org.fbme.lib.iec61499.ecc.*;
import org.fbme.lib.st.expressions.Expression;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

public final class BasicFBTypePrinter extends DeclarationPrinterBase<BasicFBTypeDeclaration> {

    public BasicFBTypePrinter(BasicFBTypeDeclaration declaration) {
        super(declaration, "FBType");
    }

    @Override
    protected void printDeclarationBody(@NotNull Element element) {
        element.addContent(new FBInterfacePrinterWithAdapters(myElement).print());
        Element basicFB = new Element("BasicFB");
        addNullableContent(basicFB, ParameterDeclarationPrinter.printAll("InternalVars", myElement.getInternalVariables()));
        Element eccElement = new Element("ECC");
        ECC ecc = myElement.getEcc();
        for (StateDeclaration stateDeclaration : ecc.getStates()) {
            eccElement.addContent(new StatePrinter(stateDeclaration).print());
        }
        for (StateTransition stateTransition : ecc.getTransitions()) {
            eccElement.addContent(printStateTransition(stateTransition));
        }
        basicFB.addContent(eccElement);
        for (AlgorithmDeclaration algorithmDeclaration : myElement.getAlgorithms()) {
            basicFB.addContent(new AlgorithmPrinter(algorithmDeclaration).print());
        }
        element.addContent(basicFB);
    }

    private static class StatePrinter extends DeclarationPrinterBase<StateDeclaration> {

        public StatePrinter(StateDeclaration stateDeclaration) {
            super(stateDeclaration, "ECState");
        }

        @Override
        protected void printDeclarationBody(@NotNull Element element) {
            for (StateAction action : myElement.getActions()) {
                Element actionElement = new Element("ECAction");
                String eventOutput = action.getEvent().getPresentation();
                String algorithm = action.getAlgorithm().getPresentation();
                if (!eventOutput.isEmpty()) {
                    actionElement.setAttribute("Output", eventOutput);
                }
                if (!algorithm.isEmpty()) {
                    actionElement.setAttribute("Algorithm", algorithm);
                }
            }
            element.setAttribute("x", "" + myElement.getX());
            element.setAttribute("y", "" + myElement.getY());
        }
    }


    private Element printStateTransition(StateTransition stateTransition) {
        Element element = new Element("ECTransition");
        element.setAttribute("Source", stateTransition.getSourceReference().getPresentation());
        element.setAttribute("Destination", stateTransition.getTargetReference().getPresentation());
        element.setAttribute("x", "" + stateTransition.getCenterX());
        element.setAttribute("y", "" + stateTransition.getCenterY());
        ECTransitionCondition condition = stateTransition.getCondition();
        Expression guardCondition = condition.getGuardCondition();
        String eventPresentation = condition.getEventReference().getPresentation();
        String conditionText;
        if (guardCondition == null && eventPresentation.isEmpty()) {
            conditionText = "1";
        } else if (guardCondition != null && eventPresentation.isEmpty()) {
            conditionText = "[" + escapeXML(STPrinter.printExpression(guardCondition)) + "]";
        } else if (guardCondition == null) {
            conditionText = eventPresentation;
        } else {
            conditionText = eventPresentation + "[" + escapeXML(STPrinter.printExpression(guardCondition)) + "]";
        }
        element.setAttribute("Condition", conditionText);
        return element;
    }

    private static class AlgorithmPrinter extends DeclarationPrinterBase<AlgorithmDeclaration> {

        public AlgorithmPrinter(AlgorithmDeclaration algorithmDeclaration) {
            super(algorithmDeclaration, "Algorithm");
        }

        @Override
        protected void printDeclarationBody(@NotNull Element element) {
            AlgorithmBody body = myElement.getBody();
            if (body == null) {
                return;
            }
            AlgorithmLanguage<?> language = body.getLanguage();
            if (language == AlgorithmLanguage.ST) {
                Element st = new Element("ST");
                st.setAttribute("Text", escapeXML(STPrinter.printStatementList(((AlgorithmBody.ST) body).getStatements())));
                element.addContent(st);
            } else if (AlgorithmLanguage.isUnknown(language)) {
                Element other = new Element("Other");
                other.setAttribute("Language", language.getLanguageName());
                other.setAttribute("Text", escapeXML(((AlgorithmBody.Unknown) body).getText()));
                element.addContent(other);
            } else {
                throw new IllegalStateException("Unrecognized language");
            }
        }
    }
}
