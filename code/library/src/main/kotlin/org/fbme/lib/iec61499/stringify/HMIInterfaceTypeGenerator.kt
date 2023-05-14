package org.fbme.lib.iec61499.stringify

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.parser.Iec61499ConverterConfiguration
import org.fbme.lib.iec61499.parser.STConverter
import org.fbme.lib.st.STFactory
import org.fbme.lib.st.expressions.Expression
import org.fbme.lib.st.statements.Statement
import org.fbme.lib.st.types.DataType
import org.fbme.lib.st.types.ElementaryType
import java.util.function.BiFunction

class HMIInterfaceTypeGenerator(val declaration: HMIInterfaceTypeDeclaration, val converterArguments: Iec61499ConverterConfiguration) {

    val factory = converterArguments.entryFactory
    val stFactory = converterArguments.stEntryFactory
    
    fun generateDependents(): List<FBTypeDeclaration> {
        val elements = mutableListOf<FBTypeDeclaration>()
        val outFb = generateDispatchOut(factory, stFactory, declaration.inputParameters, declaration.name)
        elements.add(outFb)
        val inFb = generateDispatchIn(
            factory,
            stFactory,
            declaration.outputParameters,
            declaration.name
        )
        elements.add(inFb)
//        val hmiElement = Element(declaration.name)
//        printComposite(hmiElement, outFb, inFb)
        return elements
    }


companion object {
    val CONNECTION_TYPES = listOf(
        ElementaryType.BOOL,
        ElementaryType.INT,
        ElementaryType.REAL,
        ElementaryType.LREAL,
        ElementaryType.STRING
    )

    fun generateDispatchOut(factory: IEC61499Factory, stFactory: STFactory, outputVars: List<ParameterDeclaration>, name: String = ""): FBTypeDeclaration {
        val bfb = factory.createBasicFBTypeDeclaration(null)
        bfb.name = "DISPATCH_OUT_${name}"

        val startState = factory.createStateDeclaration(null)
        startState.name = "START"
        bfb.ecc.states.add(startState)

        val nameDeclaration = generateParameterDeclaration(factory, "NAME", ElementaryType.STRING, listOf())
        val mappingDeclaration = generateParameterDeclaration(factory, "MAPPING", ElementaryType.STRING, listOf())
        bfb.inputParameters.add(mappingDeclaration)
        bfb.outputParameters.add(nameDeclaration)

        val outConnections = generateTypedConnections(factory, listOf(), CONNECTION_TYPES)
        bfb.outputParameters.addAll(outConnections)
        val typedEventsMap = mutableMapOf<DataType, EventDeclaration>()
        outConnections.forEach {
            val typedEvent = factory.createEventDeclaration(null)
            typedEvent.name = "IS_${it.type}"
            val assoc = factory.createEventAssociation()
            assoc.parameterReference.setTarget(it)
            typedEvent.associations.add(assoc)

            val nameAssoc = factory.createEventAssociation()
            nameAssoc.parameterReference.setTarget(nameDeclaration)
            typedEvent.associations.add(nameAssoc)
            bfb.outputEvents.add(typedEvent)
            typedEventsMap.put(it.type!!, typedEvent)
        }

        for (iV in outputVars) {
            val state = factory.createStateDeclaration(null)
            state.name = "SET_${iV.name}"
            val action = factory.createStateAction()
            val event = factory.createEventDeclaration(null)
            event.name = "IS_${iV.name}"
            val mappingAssoc = factory.createEventAssociation()
            mappingAssoc.parameterReference.setTarget(mappingDeclaration)
            event.associations.add(mappingAssoc)
            val currParameter = generateParameterDeclaration(factory, iV.name, iV.type, listOf(event))
            currParameter.initialValue = iV.initialValue
            bfb.inputParameters.add(currParameter)
            bfb.inputEvents.add(event)
            val algorithm = factory.createAlgorithmDeclaration(null)
            algorithm.name = "set${iV.name}"
            val algorithmBody = factory.createAlgorithmBody(AlgorithmLanguage.ST)
            val outCode = generateOutCode(iV, algorithm, factory, stFactory)
            algorithmBody.statements.addAll(outCode)
            algorithm.body = algorithmBody
            action.algorithm.setTarget(algorithm)
            bfb.algorithms.add(algorithm)
            state.actions.add(action)
            bfb.ecc.states.add(state)

            val fromStartTransition = factory.createStateTransition()
            fromStartTransition.condition.eventReference.setFQName("IS_${iV.name}")
            fromStartTransition.sourceReference.setTarget(startState)
            fromStartTransition.targetReference.setTarget(state)
            bfb.ecc.transitions.add(fromStartTransition)
            val toStartTransition = factory.createStateTransition()
            toStartTransition.sourceReference.setTarget(state)
            toStartTransition.targetReference.setTarget(startState)
            bfb.ecc.transitions.add(toStartTransition)
        }

        return bfb
    }


    fun generateDispatchIn(factory: IEC61499Factory, stFactory: STFactory, inputVars: List<ParameterDeclaration>, name: String = ""): FBTypeDeclaration {
        val bfb = factory.createBasicFBTypeDeclaration(null)
        bfb.name = "DISPATCH_IN_${name}"
        val startState = factory.createStateDeclaration(null)
        startState.name = "START"
        bfb.ecc.states.add(startState)
        val reqEvent = factory.createEventDeclaration(null)
        reqEvent.name = "REQ"
        bfb.inputEvents.add(reqEvent)
        val inConnections = generateTypedConnections(factory, listOf(reqEvent), CONNECTION_TYPES)
        val nameDeclaration = generateParameterDeclaration(factory, "NAME", ElementaryType.STRING, listOf(reqEvent))
        val mappingDeclaration = generateParameterDeclaration(factory, "MAPPING", ElementaryType.STRING, listOf(reqEvent))
        bfb.inputParameters.addAll(inConnections)
        bfb.inputParameters.add(nameDeclaration)
        bfb.inputParameters.add(mappingDeclaration)
        for (iV in inputVars) {
            if (iV.name == "MAPPING") {
                continue
            }

            val event = factory.createEventDeclaration(null)
            val eventAssociation = factory.createEventAssociation()

            val state = factory.createStateDeclaration(null)
            state.name = "SET_${iV.name}"
            val action = factory.createStateAction()
            val currParameter = factory.createParameterDeclaration(null)
            currParameter.name = iV.name
            currParameter.type = iV.type
            currParameter.initialValue = iV.initialValue
            bfb.outputParameters.add(currParameter)
            eventAssociation.parameterReference.setTarget(currParameter)
            event.name = "IS_${iV.name}"
            event.associations.add(eventAssociation)
            bfb.outputEvents.add(event)
            val algorithm = factory.createAlgorithmDeclaration(null)
            algorithm.name = "set${iV.name}"
            val algorithmBody = factory.createAlgorithmBody(AlgorithmLanguage.ST)
            val outCode = generateInCode(iV, algorithm, factory, stFactory)
            algorithmBody.statements.addAll(outCode)
            algorithm.body = algorithmBody
            action.algorithm.setTarget(algorithm)
            bfb.algorithms.add(algorithm)
            state.actions.add(action)
            bfb.ecc.states.add(state)
            val fromStartTransition = factory.createStateTransition()
            fromStartTransition.condition.setGuardCondition(generateInGuard(iV, stFactory))
            fromStartTransition.sourceReference.setTarget(startState)
            fromStartTransition.targetReference.setTarget(state)
            bfb.ecc.transitions.add(fromStartTransition)
            val toStartTransition = factory.createStateTransition()
            toStartTransition.sourceReference.setTarget(state)
            toStartTransition.targetReference.setTarget(startState)
            bfb.ecc.transitions.add(toStartTransition)
        }

        return bfb
    }

    fun generateTypedConnections(factory: IEC61499Factory, events: List<EventDeclaration>, types: List<DataType>): List<ParameterDeclaration> {
        val resTypes = mutableListOf<ParameterDeclaration>()
        types.forEach {
            val p = factory.createParameterDeclaration(null)
            p.type = it
            p.name = "${p.type}_VALUE"
            resTypes.add(p)
            events.forEach {
                val assoc = factory.createEventAssociation()
                assoc.parameterReference.setTarget(p)
                it.associations.add(assoc)
            }
        }
        return resTypes
    }

    fun generateParameterDeclaration(factory: IEC61499Factory, name: String, type: DataType?, associatedEvents: List<EventDeclaration>): ParameterDeclaration {
        val p_ = factory.createParameterDeclaration(null)
        p_.type = type
        p_.name = name
        associatedEvents.forEach {
            val assoc = factory.createEventAssociation()
            assoc.parameterReference.setTarget(p_)
            it.associations.add(assoc)
        }
        return p_
    }


    fun generateCode(code: String, factory: IEC61499Factory, stFactory: STFactory, algorithmDeclaration: AlgorithmDeclaration): List<Statement> {
        val parameterCollector =
            BiFunction { name: Identifier?, type: DataType? ->
                val parameterDeclaration: ParameterDeclaration =
                    factory.createParameterDeclaration(name)
                parameterDeclaration.type = type
                algorithmDeclaration.temporaryVariables.add(parameterDeclaration)
                Unit
            }
        return STConverter.parseStatementListWithDeclarations(
            stFactory,
            code,
            { t, u -> parameterCollector.apply(t, u) }
        )
    }

    fun generateOutCode(p: ParameterDeclaration, algorithmDeclaration: AlgorithmDeclaration, factory: IEC61499Factory, stFactory: STFactory): List<Statement> {
        val code = "VAR \n" +
                "TAG: STRING;\n" +
                "END_VAR;" +
                "TAG:= '#${p.name}';\n" +
                "NAME:=CONCAT(MAPPING, TAG);\n" +
                "${p.type}_VALUE:=${p.name};]]>"
        val statementList = generateCode(code, factory, stFactory, algorithmDeclaration)
        return statementList
    }

    fun generateInCode(p: ParameterDeclaration, algorithmDeclaration: AlgorithmDeclaration, factory: IEC61499Factory, stFactory: STFactory): List<Statement> {
        val code = "${p.name}:= ${p.type!!.stringify()}_VALUE;"

        return generateCode(code, factory, stFactory, algorithmDeclaration)
    }

    fun generateInGuard(p: ParameterDeclaration, stFactory: STFactory): Expression {
        val code = "(LEFT(NAME, LEN(NAME) - 7) = MAPPING) AND (RIGHT(NAME, LEN(NAME) - LEN(NAME) + ${p.name.length + 1}) = '#${p.name}')"
        return STConverter.parseExpression(stFactory, code)!!
    }
}

}