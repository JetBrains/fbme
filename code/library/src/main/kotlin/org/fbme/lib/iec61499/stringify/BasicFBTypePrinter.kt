package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.declarations.AlgorithmLanguage
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.jdom.Element

class BasicFBTypePrinter(declaration: BasicFBTypeDeclaration) :
    DeclarationPrinterBase<BasicFBTypeDeclaration>(declaration, "FBType") {
    override fun printDeclarationBody(element: Element) {
        element.addContent(FBInterfacePrinterWithAdapters(this.element).print())
        val basicFB = Element("BasicFB")
        addNullableContent(
            basicFB,
            ParameterDeclarationPrinter.printAll("InternalVars", this.element.internalVariables)
        )
        val eccElement = Element("ECC")
        val ecc = this.element.ecc
        for (stateDeclaration in ecc.states) {
            eccElement.addContent(StatePrinter(stateDeclaration).print())
        }
        for (stateTransition in ecc.transitions) {
            eccElement.addContent(printStateTransition(stateTransition))
        }
        basicFB.addContent(eccElement)
        for (algorithmDeclaration in this.element.algorithms) {
            basicFB.addContent(AlgorithmPrinter(algorithmDeclaration).print())
        }
        element.addContent(basicFB)
    }

    private class StatePrinter(stateDeclaration: StateDeclaration) :
        DeclarationPrinterBase<StateDeclaration>(stateDeclaration, "ECState") {
        override fun printDeclarationBody(element: Element) {
            element.setAttribute("x", "" + this.element.x)
            element.setAttribute("y", "" + this.element.y)
            for (action in this.element.actions) {
                val actionElement = Element("ECAction")
                val eventOutput = action.event.presentation
                val algorithm = action.algorithm.presentation
                if (eventOutput.isNotEmpty()) {
                    actionElement.setAttribute("Output", eventOutput)
                }
                if (algorithm.isNotEmpty()) {
                    actionElement.setAttribute("Algorithm", algorithm)
                }
                element.addContent(actionElement)
            }
        }
    }

    private fun printStateTransition(stateTransition: StateTransition): Element {
        val element = Element("ECTransition")
        element.setAttribute("Source", stateTransition.sourceReference.presentation)
        element.setAttribute("Destination", stateTransition.targetReference.presentation)
        element.setAttribute("x", "" + stateTransition.centerX)
        element.setAttribute("y", "" + stateTransition.centerY)
        val condition = stateTransition.condition
        val guardCondition = condition.getGuardCondition()
        val eventPresentation = condition.eventReference.presentation
        val conditionText: String = when {
            guardCondition == null && eventPresentation.isEmpty() -> "1"
            guardCondition != null && eventPresentation.isEmpty() -> {
                "[" + escapeXML(STPrinter.printExpression(guardCondition)) + "]"
            }

            guardCondition == null -> eventPresentation
            else -> "$eventPresentation[" + escapeXML(STPrinter.printExpression(guardCondition)) + "]"
        }
        element.setAttribute("Condition", conditionText)
        return element
    }

    private class AlgorithmPrinter(algorithmDeclaration: AlgorithmDeclaration) :
        DeclarationPrinterBase<AlgorithmDeclaration>(algorithmDeclaration, "Algorithm") {
        override fun printDeclarationBody(element: Element) {
            val body = this.element.body ?: return
            val language = body.language
            ParameterDeclarationPrinter.printAll(this.element.temporaryVariables, element)
            if (language === AlgorithmLanguage.ST) {
                val st = Element("ST")
                st.setAttribute("Text", escapeXML(STPrinter.printStatementList((body as AlgorithmBody.ST).statements)))
                element.addContent(st)
            } else if (AlgorithmLanguage.isUnknown(language)) {
                val other = Element("Other")
                other.setAttribute("Language", language.languageName)
                other.setAttribute("Text", escapeXML((body as AlgorithmBody.Unknown).text))
                element.addContent(other)
            } else {
                throw IllegalStateException("Unrecognized language")
            }
        }
    }
}
