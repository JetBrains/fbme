package org.fbme.integration.nxt.importer

import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.ecc.ECTransitionCondition
import org.fbme.lib.iec61499.parser.BasicFBTypeConverter
import org.fbme.lib.iec61499.parser.ConverterArguments
import org.fbme.lib.iec61499.parser.STConverter.parseExpression
import org.fbme.lib.iec61499.parser.STConverter.parseStatementListWithDeclarations
import org.fbme.lib.st.STFactory
import org.fbme.lib.st.expressions.*

class BasicFbTypeNxtImporter(arguments: ConverterArguments) : BasicFBTypeConverter(arguments) {
    override fun parseCondition(
        condition: ECTransitionCondition,
        rawCondition: String,
        fbtd: BasicFBTypeDeclaration
    ) {
        var rawCondition = rawCondition
        rawCondition = rawCondition.trim { it <= ' ' }
        if (rawCondition == "1") {
            return
        }
        val openBracketIndex = rawCondition.indexOf('[')
        val closeBracketIndex = rawCondition.lastIndexOf(']')
        if (openBracketIndex == -1) {
            val guardCondition = parseExpression(stFactory, unescapeXML(rawCondition))
            val checker = TransitionImportChecker(fbtd)
            checker.checkTransition(guardCondition)
            if (checker.satisfies()) {
                val eventName: String = checker.eventName
                if (eventName.isNotEmpty()) {
                    condition.eventReference.setFQName(eventName)
                }
                condition.setGuardCondition(checker.newGuardCondition)
            } else {
                condition.eventReference.setFQName(rawCondition)
            }
            return
        }
        require(closeBracketIndex == rawCondition.length - 1) { "Malformed transition condition" }
        if (openBracketIndex > 0) {
            condition.eventReference.setFQName(rawCondition.substring(0, openBracketIndex))
        }
        val guardConditionText = unescapeXML(rawCondition.substring(openBracketIndex + 1, closeBracketIndex))
        condition.setGuardCondition(parseExpression(stFactory, guardConditionText)!!)
    }

    private class TransitionImportChecker(
        val fbtd: BasicFBTypeDeclaration
    ) {
        private var satisfy = false
        var eventName = ""
            private set
        lateinit var newGuardCondition: Expression
            private set

        private fun setDefaultBraces(guardCondition: Expression) {
            eventName = ""
            newGuardCondition = guardCondition
            satisfy = true
        }

        fun checkTransition(guardCondition: Expression?) {
            if (guardCondition is VariableReference) {
                val variableName = (guardCondition.reference.identifier as StringIdentifier).value
                if (fbtd.inputParameters.stream().anyMatch { x: ParameterDeclaration -> x.name == variableName } ||
                    fbtd.internalVariables.stream().anyMatch { x: ParameterDeclaration -> x.name == variableName }) {
                    setDefaultBraces(guardCondition)
                    return
                }
            }
            if (guardCondition is ParenthesisExpression) {
                checkTransition(guardCondition.innerExpression)
                if (satisfies()) {
                    newGuardCondition = guardCondition
                }
                return
            }
            if (guardCondition is UnaryExpression) {
                setDefaultBraces(guardCondition)
                return
            }
            if (guardCondition is BinaryExpression) {
                val binaryExpression = guardCondition
                when (binaryExpression.operation) {
                    BinaryOperation.AND, BinaryOperation.OR, BinaryOperation.XOR -> {
                        val leftExpression = binaryExpression.leftExpression
                        if (leftExpression is VariableReference) {
                            val variableName = (leftExpression.reference.identifier as StringIdentifier).value
                            if (fbtd.inputEvents.stream().anyMatch { x: EventDeclaration -> x.name == variableName }) {
                                eventName = variableName
                                newGuardCondition = binaryExpression.rightExpression!!
                                satisfy = true
                                return
                            }
                        }
                        setDefaultBraces(guardCondition)
                        return
                    }

                    BinaryOperation.EQ, BinaryOperation.GT, BinaryOperation.GTE, BinaryOperation.LT, BinaryOperation.LTE, BinaryOperation.NEQ -> {
                        setDefaultBraces(guardCondition)
                        return
                    }

                    else -> {
                        return
                    }
                }
            }
            satisfy = false
        }

        fun satisfies(): Boolean {
            return satisfy
        }
    }

    companion object {
        private val stAlgorithmConverter: StAlgorithmConverter =
            StAlgorithmConverter { iec61499factory: IEC61499Factory, factory: STFactory, algorithmDeclaration: AlgorithmDeclaration, st: AlgorithmBody.ST, text: String ->
                val statements = parseStatementListWithDeclarations(factory, text) { name, type ->
                    val parameterDeclaration = iec61499factory.createParameterDeclaration(name)
                    parameterDeclaration.type = type
                    algorithmDeclaration.temporaryVariables.add(parameterDeclaration)
                }
                st.statements.addAll(statements)
            }
    }
}