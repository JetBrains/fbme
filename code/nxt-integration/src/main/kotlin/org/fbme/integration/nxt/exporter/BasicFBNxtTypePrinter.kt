package org.fbme.integration.nxt.exporter

import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.declarations.AlgorithmLanguage
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.lib.iec61499.stringify.DeclarationPrinterBase
import org.fbme.lib.iec61499.stringify.FBInterfacePrinterWithAdapters
import org.fbme.lib.iec61499.stringify.ParameterDeclarationPrinter
import org.fbme.lib.iec61499.stringify.STPrinter
import org.jdom.Element
import org.jdom.CDATA
import java.util.UUID
import java.time.LocalDate
import java.time.format.DateTimeFormatter

class BasicFBNxtTypePrinter(declaration: BasicFBTypeDeclaration) :
    DeclarationPrinterBase<BasicFBTypeDeclaration>(declaration, "FBType") {
    override fun printDeclarationBody(element: Element) {

        val guid : String = UUID.randomUUID().toString()
        //val guid : String = "ccbf2b60-58fa-4446-a3fb-00066c5e49e1"
        element.setAttribute("GUID", guid)

        element.setAttribute("Name", this.element.name)

        val comment : String = "Basic Function Block Type"
        element.setAttribute("Comment", comment)

        element.setAttribute("Namespace", "Main")

        val standardElement = Element("Identification")

        val standard : String = "61499-2"
        standardElement.setAttribute("Standard", standard)
        element.addContent(standardElement)

        val versionElement = Element("VersionInfo")

        val organization : String = "Schneider Electric"
        versionElement.setAttribute("Organization", organization)

        val version : String = "0.0"
        versionElement.setAttribute("Version", version)

        val author : String = "Unknown"
        versionElement.setAttribute("Author", author)

        val currentDate = LocalDate.now()
        val formatter = DateTimeFormatter.ofPattern("M/d/yyyy")
        val current : String = currentDate.format(formatter)
        //val current : String = "6/24/2024"
        versionElement.setAttribute("Date", current) // Can not have zeros.
        versionElement.setAttribute("Remarks", "Template")
        element.addContent(versionElement)

        element.addContent(FBInterfacePrinterWithAdapters(this.element).print()) // Maybe could be printed here too.
        val basicFB = Element("BasicFB")
        addNullableContent(
            basicFB,
            ParameterDeclarationPrinter.printAll("InternalVars", this.element.internalVariables)
        )

        val attributeElement = Element("Attribute")
        attributeElement.setAttribute("Order", "FBType.Basic.Algorithm.Order")

        val algorithmNamesBuilder = StringBuilder()
        for (algorithm in this.element.algorithms) {
            val name : String = algorithm.name
            algorithmNamesBuilder.append(name)
            algorithmNamesBuilder.append(",")
        }
        if (algorithmNamesBuilder.isNotEmpty()) {
            algorithmNamesBuilder.deleteCharAt(algorithmNamesBuilder.length - 1)
        }

        val algorithmNames : String = algorithmNamesBuilder.toString()
        attributeElement.setAttribute("Value", algorithmNames)
        basicFB.addContent(attributeElement)

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
        val condition = stateTransition.condition
        val guardCondition = condition.getGuardCondition()
        val eventPresentation = condition.eventReference.presentation
        val conditionText: String = when {
            guardCondition == null && eventPresentation.isEmpty() -> "1"
            guardCondition != null && eventPresentation.isEmpty() -> {
                "[" + STPrinter.printExpression(guardCondition) + "]"
            }

            guardCondition == null -> eventPresentation
            else -> "$eventPresentation[" + STPrinter.printExpression(guardCondition) + "]"
        }
        element.setAttribute("Condition", conditionText)
        element.setAttribute("x", "" + stateTransition.centerX)
        element.setAttribute("y", "" + stateTransition.centerY)

        val attributeElement = Element("Attribute")
        attributeElement.setAttribute("Name", "Configuration.Transaction.BezierPoints")
        attributeElement.setAttribute("Value", "TODO") // Don't know how to define bezierpoints yet...
        element.addContent(attributeElement)

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
                val algorithmsNextFormat = STPrinter.printStatementList((body as AlgorithmBody.ST).statements).trim()
                st.setContent(CDATA(algorithmsNextFormat))
                element.addContent(st)
            } else if (AlgorithmLanguage.isUnknown(language)) {
                val other = Element("Other")
                other.setAttribute("Language", language.languageName)
                other.setAttribute("Text", (body as AlgorithmBody.Unknown).text)
                element.addContent(other)
            } else {
                throw IllegalStateException("Unrecognized language")
            }
        }
    }

}

/*
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
                "[" + STPrinter.printExpression(guardCondition) + "]"
            }

            guardCondition == null -> eventPresentation
            else -> "$eventPresentation[" + STPrinter.printExpression(guardCondition) + "]"
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
                st.setAttribute("Text", STPrinter.printStatementList((body as AlgorithmBody.ST).statements))
                element.addContent(st)
            } else if (AlgorithmLanguage.isUnknown(language)) {
                val other = Element("Other")
                other.setAttribute("Language", language.languageName)
                other.setAttribute("Text", (body as AlgorithmBody.Unknown).text)
                element.addContent(other)
            } else {
                throw IllegalStateException("Unrecognized language")
            }
        }
    }
}
*/