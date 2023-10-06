package org.fbme.lib.iec61499.stringify

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.parser.Iec61499ConverterConfiguration
import org.fbme.lib.iec61499.parser.STConverter
import org.fbme.lib.st.STFactory
import org.fbme.lib.st.expressions.Expression
import org.fbme.lib.st.expressions.Literal
import org.fbme.lib.st.statements.Statement
import org.fbme.lib.st.types.DataType
import org.fbme.lib.st.types.ElementaryType
import java.util.function.BiFunction

class HMIInterfaceTypeGenerator(val declaration: HMIInterfaceTypeDeclaration, val converterArguments: Iec61499ConverterConfiguration) {

    val factory = converterArguments.entryFactory
    val stFactory = converterArguments.stEntryFactory
    
    fun generateDependents(): List<FBTypeDeclaration> {
        val elements = mutableListOf<FBTypeDeclaration>()
        val name = getDeclarationName(declaration.name)
        val identifier = declaration.identifier.toString()
        if (declaration.inputParameters.size > 0) {
            val outFb = generateDispatchOut(factory, stFactory, declaration.inputParameters, name, identifier)
            elements.add(outFb)
        }
        if (declaration.outputParameters.size > 0) {
            val inFb = generateDispatchIn(
                factory,
                stFactory,
                declaration.outputParameters,
                name,
                identifier
            )
            elements.add(inFb)
        }
        val compositeHMI = generateComposite(factory, stFactory, declaration, identifier)
        elements.add(compositeHMI)
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

    fun generateDispatchOut(factory: IEC61499Factory, stFactory: STFactory, outputVars: List<ParameterDeclaration>, name: String = "", identifier: String = ""): FBTypeDeclaration {
        val bfb = factory.createBasicFBTypeDeclaration(null)
        bfb.name = "DISPATCH_OUT_${name}"

        val startState = factory.createStateDeclaration(null)
        startState.name = "START"
        bfb.ecc.states.add(startState)

        val nameDeclaration = generateParameterDeclaration(factory, "NAME", ElementaryType.STRING, listOf())
        val mappingDeclaration = generateParameterDeclaration(factory, "MAPPING", ElementaryType.STRING, listOf())
        mappingDeclaration.initialValue = STConverter.parseLiteral(stFactory, identifier)
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


    fun generateDispatchIn(factory: IEC61499Factory, stFactory: STFactory, inputVars: List<ParameterDeclaration>, name: String = "", identifier: String = ""): FBTypeDeclaration {
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
        mappingDeclaration.initialValue = STConverter.parseLiteral(stFactory, identifier)
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
        val code = "(LEFT(NAME, LEN(NAME) - ${p.name.length + 2}) = MAPPING) AND (RIGHT(NAME, LEN(NAME) - LEN(NAME) + ${p.name.length + 1}) = '#${p.name}')"
        return STConverter.parseExpression(stFactory, code)!!
    }

    fun getDeclarationName(name: String): String {
        if (name.length < 5) {
            return name
        }
        if (name.endsWith("_HMI")) {
            return name.take(name.length - 4)
        }
        if (name.length < 9) {
            return name
        }
        if (name.endsWith("_HMI_CONF")) {
            return name.take(name.length - 9)
        }
        return name
    }

    fun generateComposite(factory: IEC61499Factory, stFactory: STFactory, declaration: HMIInterfaceTypeDeclaration, identifier: String = ""): CompositeFBTypeDeclaration {
        var cFB = factory.createCompositeFBTypeDeclaration(null)
        val targetBlockName = getDeclarationName(declaration.name)
        cFB.name = targetBlockName + "_HMI"
        declaration.inputParameters.forEach {
            if (it.name != "MAPPING") {
                val pD = factory.createParameterDeclaration(null)
                pD.name = it.name
                pD.type = it.type
                pD.initialValue = it.initialValue
                cFB.inputParameters.add(pD)
            }
        }
        declaration.outputParameters.forEach {
            val pD = factory.createParameterDeclaration(null)
            pD.name = it.name
            pD.type = it.type
            pD.initialValue = it.initialValue
            cFB.outputParameters.add(pD)
        }

        val initEvent = factory.createEventDeclaration(null)
        initEvent.name = "INIT"
        initEvent.associations
        val mappingInput = factory.createParameterDeclaration(null)
        mappingInput.name = "MAPPING"
        mappingInput.type = ElementaryType.STRING
        mappingInput.initialValue = STConverter.parseLiteral(stFactory, identifier)
        cFB.inputParameters.add(mappingInput)
        cFB.inputEvents.add(initEvent)

        if (cFB.inputParameters.size - 1 > 0) {
//            NEEDED FUNCTION BLOCKS GENERATION

            cFB.network.functionBlocks.add(generateCommunicationBlock("PUBLISH_1", factory, stFactory))
            cFB.network.functionBlocks.add(generateFunctionDeclarationNoParam("JSON_SERIALIZER", factory))
            cFB.network.functionBlocks.add(generateFunctionDeclarationNoParam("DISPATCH_OUT_$targetBlockName", factory))

//            EVENTS GENERATION

            val cEInitPublish = factory.createFBNetworkConnection(EntryKind.EVENT)
            cEInitPublish.sourceReference.setFQName("INIT")
            cEInitPublish.targetReference.setFQName("PUBLISH_1.INIT")
            cFB.network.eventConnections.add(cEInitPublish)

            val cESerializerPublish = factory.createFBNetworkConnection(EntryKind.EVENT)
            cESerializerPublish.sourceReference.setFQName("JSON_SERIALIZER.RES")
            cESerializerPublish.targetReference.setFQName("PUBLISH_1.REQ")
            cFB.network.eventConnections.add(cESerializerPublish)

            declaration.inputParameters.stream().filter{it.name != "MAPPING"}
                .forEach{
                    val event = generateEventForParameter(it, factory)
                    cFB.inputEvents.add(event)
                    val cEDispatch = factory.createFBNetworkConnection(EntryKind.EVENT)
                    cEDispatch.sourceReference.setFQName(event.name)
                    cEDispatch.targetReference.setFQName("DISPATCH_OUT_$targetBlockName.${event.name}")
                    cFB.network.eventConnections.add(cEDispatch)
                }

//            DATA CONNECTIONS GENERATION

            val cDSerializerPublish = factory.createFBNetworkConnection(EntryKind.DATA)
            cDSerializerPublish.sourceReference.setFQName("JSON_SERIALIZER.MSG")
            cDSerializerPublish.targetReference.setFQName("PUBLISH_1.SD_1")
            cFB.network.dataConnections.add(cDSerializerPublish)

            declaration.inputParameters.stream()
                .forEach{
                    val cDDispatch = factory.createFBNetworkConnection(EntryKind.DATA)
                    cDDispatch.sourceReference.setFQName(it.name)
                    cDDispatch.targetReference.setFQName("DISPATCH_OUT_$targetBlockName.${it.name}")
                    cFB.network.dataConnections.add(cDDispatch)
                }

            val cDNameSerialize = factory.createFBNetworkConnection(EntryKind.DATA)
            cDNameSerialize.sourceReference.setFQName("DISPATCH_OUT_$targetBlockName.NAME")
            cDNameSerialize.targetReference.setFQName("JSON_SERIALIZER.NAME")
            cFB.network.dataConnections.add(cDNameSerialize)

//            CONNECTIONS FOR DIFFERENT DATA TYPES

            HMIInterfaceTypeGenerator.CONNECTION_TYPES.forEach {
                val cEDispatch = factory.createFBNetworkConnection(EntryKind.EVENT)
                cEDispatch.sourceReference.setFQName("DISPATCH_OUT_$targetBlockName.IS_${it.name}")
                cEDispatch.targetReference.setFQName("JSON_SERIALIZER.IS_${it.name}")
                cFB.network.eventConnections.add(cEDispatch)
                val cDDispatch = factory.createFBNetworkConnection(EntryKind.DATA)
                cDDispatch.sourceReference.setFQName("DISPATCH_OUT_$targetBlockName.${it.name}_VALUE")
                cDDispatch.targetReference.setFQName("JSON_SERIALIZER.${it.name}_VALUE")
                cFB.network.dataConnections.add(cDDispatch)
            }

        }

        if (declaration.outputParameters.size > 0) {
//            NEEDED FUNCTION BLOCKS GENERATION

            cFB.network.functionBlocks.add(generateCommunicationBlock("SUBSCRIBE_1", factory, stFactory, 65012))
            cFB.network.functionBlocks.add(generateFunctionDeclarationNoParam("JSON_DESERIALIZER", factory))
            cFB.network.functionBlocks.add(generateFunctionDeclarationNoParam("DISPATCH_IN_$targetBlockName", factory))

//            EVENTS GENERATION

            val cEInitSubscribe = factory.createFBNetworkConnection(EntryKind.EVENT)
            cEInitSubscribe.sourceReference.setFQName("INIT")
            cEInitSubscribe.targetReference.setFQName("SUBSCRIBE_1.INIT")
            cFB.network.eventConnections.add(cEInitSubscribe)

            val cESubscribeDeserialize = factory.createFBNetworkConnection(EntryKind.EVENT)
            cESubscribeDeserialize.sourceReference.setFQName("SUBSCRIBE_1.IND")
            cESubscribeDeserialize.targetReference.setFQName("JSON_DESERIALIZER.REQ")
            cFB.network.eventConnections.add(cESubscribeDeserialize)

            val cEDeserializeDispatch = factory.createFBNetworkConnection(EntryKind.EVENT)
            cEDeserializeDispatch.sourceReference.setFQName("JSON_DESERIALIZER.RES")
            cEDeserializeDispatch.targetReference.setFQName("DISPATCH_IN_$targetBlockName.REQ")
            cFB.network.eventConnections.add(cEDeserializeDispatch)

            declaration.outputParameters.forEach {
                val event = generateEventForParameter(it, factory)
                cFB.outputEvents.add(event)

                val cEDispatchRes = factory.createFBNetworkConnection(EntryKind.EVENT)
                cEDispatchRes.sourceReference.setFQName("DISPATCH_IN_$targetBlockName.${event.name}")
                cEDispatchRes.targetReference.setFQName(event.name)
                cFB.network.eventConnections.add(cEDispatchRes)
            }

//            DATA GENERATION

            val cDSubscribeDeserialize = factory.createFBNetworkConnection(EntryKind.DATA)
            cDSubscribeDeserialize.sourceReference.setFQName("SUBSCRIBE_1.RD_1")
            cDSubscribeDeserialize.targetReference.setFQName("JSON_DESERIALIZER.DATA")
            cFB.network.dataConnections.add(cDSubscribeDeserialize)

            val cDDeserializeName = factory.createFBNetworkConnection(EntryKind.DATA)
            cDDeserializeName.sourceReference.setFQName("JSON_DESERIALIZER.NAME")
            cDDeserializeName.targetReference.setFQName("DISPATCH_IN_$targetBlockName.NAME")
            cFB.network.dataConnections.add(cDDeserializeName)

            val cDMappingDispatch = factory.createFBNetworkConnection(EntryKind.DATA)
            cDMappingDispatch.sourceReference.setFQName("MAPPING")
            cDMappingDispatch.targetReference.setFQName("DISPATCH_IN_$targetBlockName.MAPPING")
            cFB.network.dataConnections.add(cDMappingDispatch)

            declaration.outputParameters.forEach {
                val cEDispatchRes = factory.createFBNetworkConnection(EntryKind.DATA)
                cEDispatchRes.sourceReference.setFQName("DISPATCH_IN_$targetBlockName.${it.name}")
                cEDispatchRes.targetReference.setFQName(it.name)
                cFB.network.dataConnections.add(cEDispatchRes)
            }

            HMIInterfaceTypeGenerator.CONNECTION_TYPES.forEach {
                val cDDispatch = factory.createFBNetworkConnection(EntryKind.DATA)
                cDDispatch.sourceReference.setFQName("JSON_DESERIALIZER.${it.name}_VALUE")
                cDDispatch.targetReference.setFQName("DISPATCH_IN_$targetBlockName.${it.name}_VALUE")
                cFB.network.dataConnections.add(cDDispatch)
            }
        }


        return cFB
    }

    fun generateEventForParameter(parameter: ParameterDeclaration, factory: IEC61499Factory): EventDeclaration {
        val currEvent = factory.createEventDeclaration(null)
        currEvent.name = "IS_${parameter.name}"
        val assoc = factory.createEventAssociation()
        assoc.parameterReference.setTarget(parameter)
        currEvent.associations.add(assoc)
        return currEvent
    }

    fun generateCommunicationBlock(name: String, factory: IEC61499Factory, stFactory: STFactory, port: Int = 65011): FunctionBlockDeclaration {
        val fB = factory.createFunctionBlockDeclaration(null)
        fB.name = name
        val host = factory.createParameterAssignment()
        host.parameterReference.setTargetName("ID")
        host.value = STConverter.parseLiteral(stFactory, "\"225.0.0.2:${port}\"")
        fB.parameters.add(host)


        val qi = factory.createParameterAssignment()
        qi.parameterReference.setTargetName("QI")
        qi.value = STConverter.parseLiteral(stFactory, "1")
        fB.parameters.add(qi)

        fB.typeReference.setTargetName(name)
        return fB
    }

    fun generateFunctionDeclarationNoParam(name: String, factory: IEC61499Factory): FunctionBlockDeclaration {
        val fB = factory.createFunctionBlockDeclaration(null)
        fB.name = name
        fB.typeReference.setTargetName(name)
        return fB
    }
}

}