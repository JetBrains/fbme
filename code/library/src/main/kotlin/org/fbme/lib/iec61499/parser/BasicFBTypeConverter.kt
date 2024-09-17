package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.declarations.AlgorithmLanguage
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.ecc.ECTransitionCondition
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.lib.st.STFactory
import org.jdom.CDATA
import org.jdom.Element

open class BasicFBTypeConverter(arguments: ConverterArguments) :
    DeclarationConverterBase<BasicFBTypeDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): BasicFBTypeDeclaration {
        checkNotNull(element)
        val fbtd = factory.createBasicFBTypeDeclaration(identifier)
        val basicFbElement = element.getChild("BasicFB")

        //val bezierpointValues = basicFbElement.getChild("ECC").getChild("ECTransition").getChild("Attribute").getAttribute("Value").value
        //val fbtd.setAuxilaryData(bezierpointValues)

        FBInterfaceConverter(this, fbtd).extractInterface()
        FBInterfaceAdaptersConverter(this, fbtd).extractAdapters()
        ParameterDeclarationConverter.extractAll(with(basicFbElement.getChild("InternalVars")), fbtd.internalVariables)
        val eccElement = basicFbElement.getChild("ECC")
        if (eccElement != null) {
            val ecc = fbtd.ecc
            val ecStateElements = eccElement.getChildren("ECState")
            for (ecStateElement in ecStateElements) {
                ecc.states.add(StateConverter(with(ecStateElement)).extract())
            }
            val ecTransitionElements = eccElement.getChildren("ECTransition")
            for (ecTransitionElement in ecTransitionElements) {
                ecc.transitions.add(convertEcTransition(ecTransitionElement, fbtd))
            }
        }
        val algorithmElements = basicFbElement.getChildren("Algorithm")
        for (algorithmElement in algorithmElements) {
            fbtd.algorithms.add(AlgorithmConverter(with(algorithmElement), stAlgorithmConverter).extract())
        }
        return fbtd
    }

    private class StateConverter(arguments: ConverterArguments) :
        DeclarationConverterBase<StateDeclaration>(arguments) {
        override fun extractDeclarationBody(identifier: Identifier?): StateDeclaration {
            checkNotNull(element)
            val state = factory.createStateDeclaration(identifier)
            val ecActionElements = element.getChildren("ECAction")
            for (ecActionElement in ecActionElements) {
                val action = factory.createStateAction()
                val algorithmName = ecActionElement.getAttributeValue("Algorithm")
                val eventName = ecActionElement.getAttributeValue("Output")
                if (algorithmName != null && algorithmName.isNotEmpty()) {
                    action.algorithm.setTargetName(algorithmName)
                }
                if (eventName != null && eventName.isNotEmpty()) {
                    action.event.setFQName(eventName)
                }
                state.actions.add(action)
            }
            state.x = element.getAttributeValue("x").toFloat().toInt()
            state.y = element.getAttributeValue("y").toFloat().toInt()
            return state
        }
    }

    private fun convertEcTransition(ecTransitionElement: Element, fbtd: BasicFBTypeDeclaration): StateTransition {
        val transition = factory.createStateTransition()
        transition.sourceReference.setTargetName(ecTransitionElement.getAttributeValue("Source"))
        transition.targetReference.setTargetName(ecTransitionElement.getAttributeValue("Destination"))
        parseCondition(transition.condition, ecTransitionElement.getAttributeValue("Condition"), fbtd)
        transition.centerX = ecTransitionElement.getAttributeValue("x").toFloat().toInt()
        transition.centerY = ecTransitionElement.getAttributeValue("y").toFloat().toInt()
        return transition
    }

    protected open fun parseCondition(
        condition: ECTransitionCondition,
        rawCondition: String,
        fbtd: BasicFBTypeDeclaration
    ) {
        if (rawCondition == "1") {
            return
        }
        val openBracketIndex = rawCondition.indexOf('[')
        val closeBracketIndex = rawCondition.lastIndexOf(']')
        if (openBracketIndex == -1) {
            condition.eventReference.setFQName(rawCondition)
            return
        }
        require(closeBracketIndex == rawCondition.length - 1) { "Malformed transition condition" }
        if (openBracketIndex > 0) {
            condition.eventReference.setFQName(rawCondition.substring(0, openBracketIndex))
        }
        val guardConditionText = rawCondition.substring(openBracketIndex + 1, closeBracketIndex).unescapeXML()
        val expression = STConverter.parseExpression(stFactory, guardConditionText) ?: return
        condition.setGuardCondition(expression)
    }

    fun interface StAlgorithmConverter {
        fun convert(
            iec61499factory: IEC61499Factory,
            factory: STFactory,
            algorithmDeclaration: AlgorithmDeclaration,
            st: AlgorithmBody.ST,
            text: String
        )
    }

    object DefaultStAlgorithmConverter : StAlgorithmConverter {
        override fun convert(
            iec61499factory: IEC61499Factory,
            factory: STFactory,
            algorithmDeclaration: AlgorithmDeclaration,
            st: AlgorithmBody.ST,
            text: String
        ) {
            st.statements.addAll(STConverter.parseStatementList(factory, text))
        }
    }

    protected open val stAlgorithmConverter: StAlgorithmConverter = DefaultStAlgorithmConverter

    private class AlgorithmConverter(
        arguments: ConverterArguments,
        private val stAlgorithmConverter: StAlgorithmConverter
    ) :
        DeclarationConverterBase<AlgorithmDeclaration>(arguments) {
        override fun extractDeclarationBody(identifier: Identifier?): AlgorithmDeclaration {
            checkNotNull(element)
            val algorithmDeclaration = factory.createAlgorithmDeclaration(identifier)
            ParameterDeclarationConverter.extractAll(this, algorithmDeclaration.temporaryVariables)
            val stBodyElement = element.getChild("ST")
            if (stBodyElement != null) {
                val st = factory.createAlgorithmBody(AlgorithmLanguage.ST)
                algorithmDeclaration.body = st
                var stText = stBodyElement.getAttributeValue("Text")?.unescapeXML()
                if (stText != null) {
                    stAlgorithmConverter.convert(factory, stFactory, algorithmDeclaration, st, stText)
                } else {
                    val content = stBodyElement.content[0] as CDATA
                    stText = content.text
                    if (stText != null) {
                        stText = removeComments(stText.unescapeXML())
                        stAlgorithmConverter.convert(factory, stFactory, algorithmDeclaration, st, stText)
                    }
                }
            }
            val otherBodyElement = element.getChild("Other")
            if (otherBodyElement != null) {
                val unknown =
                    factory.createAlgorithmBody(AlgorithmLanguage.unknown(otherBodyElement.getAttributeValue("Language")))
                algorithmDeclaration.body = unknown
                val text = otherBodyElement.getAttributeValue("Text")?.unescapeXML()
                if (text != null) {
                    unknown.text = text
                }
            }
            return algorithmDeclaration
        }

        private fun removeComments(rawData: String): String {
            val cleanedData = StringBuilder(rawData)
            var insideString = false
            var index1 = 0

            while (index1 < cleanedData.length) {
                // Toggle the insideString flag if we encounter a double quote.
                if (cleanedData[index1] == '\"') {
                    insideString = !insideString
                    index1++
                    continue
                }

                if (!insideString && cleanedData[index1] == '/') {
                    if (index1 + 1 < cleanedData.length) {
                        when (cleanedData[index1 + 1]) {
                            '/' -> {
                                // Line comment, remove until end of line.
                                var index2 = cleanedData.indexOf('\n', index1)
                                // If comment doesn't start a new line though, spare the last linebreak char.
                                if (index1 != 0) {
                                    if (cleanedData[index1 - 1] != '\n') {
                                        index2 -= 1
                                    }
                                }
                                if (index2 != -1) {
                                    cleanedData.delete(index1, index2)
                                } else {
                                    cleanedData.delete(index1, cleanedData.length)
                                }
                            }
                            '*' -> {
                                // Block comment, remove until "*/".
                                val endBlockIndex = cleanedData.indexOf("*/", index1 + 2)
                                if (endBlockIndex != -1) {
                                    cleanedData.delete(index1, endBlockIndex + 2)
                                } else {
                                    cleanedData.delete(index1, cleanedData.length)
                                }
                            }
                        }
                    }
                }
                index1++
            }
            return cleanedData.toString()
        }

    }
}
