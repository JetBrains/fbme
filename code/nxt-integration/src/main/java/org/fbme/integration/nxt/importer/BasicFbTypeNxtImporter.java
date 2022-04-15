package org.fbme.integration.nxt.importer;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.fbme.lib.common.Identifier;
import org.fbme.lib.common.StringIdentifier;
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration;
import org.fbme.lib.iec61499.declarations.ParameterDeclaration;
import org.fbme.lib.iec61499.ecc.ECTransitionCondition;
import org.fbme.lib.iec61499.parser.BasicFBTypeConverter;
import org.fbme.lib.iec61499.parser.ConverterArguments;
import org.fbme.lib.iec61499.parser.STConverter;
import org.fbme.lib.st.STFactory;
import org.fbme.lib.st.expressions.*;
import org.fbme.lib.st.types.DataType;
import org.jetbrains.annotations.NotNull;

import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;

public class BasicFbTypeNxtImporter extends BasicFBTypeConverter {

    public BasicFbTypeNxtImporter(ConverterArguments arguments) {
        super(arguments);
    }

    @Override
    protected void parseCondition(
            @NotNull ECTransitionCondition condition,
            @NotNull String rawCondition,
            @NotNull BasicFBTypeDeclaration fbtd
    ) {
        rawCondition = rawCondition.trim();
        if (Objects.equals(rawCondition, "1")) {
            return;
        }
        int openBracketIndex = rawCondition.indexOf('[');
        int closeBracketIndex = rawCondition.lastIndexOf(']');
        var myStFactory = getStFactory();
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
        condition.setGuardCondition(Objects.requireNonNull(STConverter.parseExpression(myStFactory, guardConditionText)));
    }

    @NotNull
    @Override
    protected StAlgorithmConverter getStAlgorithmConverter() {
        return StAlgorithmNxtImporter;
    }

    private static final StAlgorithmConverter StAlgorithmNxtImporter = (iec61499factory, factory, algorithmDeclaration, st, text) -> {
        BiFunction<Identifier, DataType, kotlin.Unit> parameterCollector = (name, type) -> {
            ParameterDeclaration parameterDeclaration = iec61499factory.createParameterDeclaration(name);
            parameterDeclaration.setType(type);
            algorithmDeclaration.getTemporaryVariables().add(parameterDeclaration);
            return Unit.INSTANCE;
        };
        st.getStatements().addAll(STConverter.parseStatementListWithDeclarations(factory, parameterCollector::apply, text));
    };

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
                if (this.fbtd.getInputParameters().stream().anyMatch(x -> x.getName().equals(variableName)) ||
                        this.fbtd.getInternalVariables().stream().anyMatch(x -> x.getName().equals(variableName))) {
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
