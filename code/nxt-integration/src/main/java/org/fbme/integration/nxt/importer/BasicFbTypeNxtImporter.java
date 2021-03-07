package org.fbme.integration.nxt.importer;

import org.fbme.lib.common.StringIdentifier;
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration;
import org.fbme.lib.iec61499.ecc.ECTransitionCondition;
import org.fbme.lib.iec61499.parser.BasicFBTypeConverter;
import org.fbme.lib.iec61499.parser.ConverterArguments;
import org.fbme.lib.iec61499.parser.STConverter;
import org.fbme.lib.st.STFactory;
import org.fbme.lib.st.expressions.*;

import java.util.Objects;

public class BasicFbTypeNxtImporter extends BasicFBTypeConverter {

    public BasicFbTypeNxtImporter(ConverterArguments arguments) {
        super(arguments);
    }

    @Override
    protected void parseCondition(
            ECTransitionCondition condition,
            String rawCondition,
            BasicFBTypeDeclaration fbtd
    ) {
        rawCondition = rawCondition.trim();
        if (Objects.equals(rawCondition, "1")) {
            return;
        }
        int openBracketIndex = rawCondition.indexOf('[');
        int closeBracketIndex = rawCondition.lastIndexOf(']');
        if (openBracketIndex == -1) {
            Expression guardCondition = STConverter.parseExpression(myStFactory, unescapeXML(rawCondition));
            TransitionImportChecker checker = new TransitionImportChecker(myStFactory, fbtd);
            checker.checkTransition(guardCondition);
            if (checker.satisfies()) {
                String eventName = checker.getEventName();
                if (eventName.length() > 0) {
                    condition.getEventReference().setFQName(eventName);
                }
                condition.setGuardCondition(checker.getNewGuardCondition());
            } else {
                condition.getEventReference().setFQName(rawCondition);
            }
            return;
        }
        if (closeBracketIndex != rawCondition.length() - 1) {
            throw new IllegalArgumentException("Malformed transition condition");
        }
        if (openBracketIndex > 0) {
            condition.getEventReference().setFQName(rawCondition.substring(0, openBracketIndex));
        }
        String guardConditionText = unescapeXML(rawCondition.substring(openBracketIndex + 1, closeBracketIndex));
        condition.setGuardCondition(STConverter.parseExpression(myStFactory, guardConditionText));
    }

    private static class TransitionImportChecker {
        private boolean satisfy;
        private String eventName;
        private Expression newGuardCondition;
        protected final STFactory myStFactory;
        protected final BasicFBTypeDeclaration fbtd;

        TransitionImportChecker(STFactory myStFactory, BasicFBTypeDeclaration fbtd) {
            this.satisfy = false;
            this.eventName = "";
            this.newGuardCondition = null;
            this.myStFactory = myStFactory;
            this.fbtd = fbtd;
        }

        private void setDefaultBraces(Expression guardCondition) {
            this.eventName = "";
            this.newGuardCondition = guardCondition;
            this.satisfy = true;
        }

        public void checkTransition(Expression guardCondition) {
            if (guardCondition instanceof VariableReference) {
                String variableName = ((StringIdentifier) (((VariableReference) guardCondition).getReference().getIdentifier())).getValue();
                if (this.fbtd.getInputParameters().stream().anyMatch(x -> x.getName().equals(variableName))) {
                    setDefaultBraces(guardCondition);
                    return;
                }
            }
            if (guardCondition instanceof ParenthesisExpression) {
                checkTransition(((ParenthesisExpression) guardCondition).getInnerExpression());
                if (this.satisfies()) {
                    this.newGuardCondition = guardCondition;
                }
                return;
            }
            if (guardCondition instanceof UnaryExpression) {
                setDefaultBraces(guardCondition);
                return;
            }
            if (guardCondition instanceof BinaryExpression) {
                BinaryExpression binaryExpression = (BinaryExpression) guardCondition;
                switch (binaryExpression.getOperation()) {
                    case AND:
                    case OR:
                    case XOR: {
                        Expression leftExpression = binaryExpression.getLeftExpression();
                        if (leftExpression instanceof VariableReference) {
                            String variableName = ((StringIdentifier) (((VariableReference) leftExpression).getReference().getIdentifier())).getValue();
                            if (this.fbtd.getInputEvents().stream().anyMatch(x -> x.getName().equals(variableName))) {
                                this.eventName = variableName;
                                this.newGuardCondition = binaryExpression.getRightExpression();
                                this.satisfy = true;
                                return;
                            }
                        }
                        setDefaultBraces(guardCondition);
                        return;
                    }
                    case EQ:
                    case GT:
                    case GTE:
                    case LT:
                    case LTE:
                    case NEQ: {
                        setDefaultBraces(guardCondition);
                        return;
                    }
                    default: {
                        return;
                    }
                }
            }
            satisfy = false;
        }

        public boolean satisfies() {
            return satisfy;
        }

        public String getEventName() {
            return eventName;
        }

        public Expression getNewGuardCondition() {
            return newGuardCondition;
        }
    }
}
