package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.HMIInterfaceTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.parser.Iec61499ConverterConfiguration
import org.fbme.lib.iec61499.parser.STConverter
import org.fbme.lib.st.STFactory
import org.fbme.lib.st.types.ElementaryType
import org.jdom.Element

class HMIBlockPrinter(declaration: HMIInterfaceTypeDeclaration, val converterArguments: Iec61499ConverterConfiguration) :
    DeclarationPrinterBase<HMIInterfaceTypeDeclaration>(declaration, "FBType") {

    val factory = converterArguments.entryFactory
    val stFactory = converterArguments.stEntryFactory
    override fun printDeclarationBody(element: Element) {
        element.addContent(FBInterfacePrinterWithAdapters(this.element).print())
        val cFB = CompositeFBTypePrinter(generateComposite()).print().children
        for (c in cFB) {
            element.addContent(c.clone().detach())
        }
        element.setAttribute("UsedInCAT", "True")
    }

    fun generateComposite(): CompositeFBTypeDeclaration {
        val cFB = factory.createCompositeFBTypeDeclaration(null)
        cFB.name = this.element.name
        this.element.inputParameters.forEach {
            if (it.name != "MAPPING") {
                val pD = factory.createParameterDeclaration(null)
                pD.name = it.name
                pD.type = it.type
                pD.initialValue = it.initialValue
                cFB.inputParameters.add(pD)
            }
        }
        this.element.outputParameters.forEach {
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
        cFB.inputEvents.add(initEvent)

        if (this.element.inputParameters.size - 1 > 0) {
//            NEEDED FUNCTION BLOCKS GENERATION

            cFB.network.functionBlocks.add(generateCommunicationBlock("PUBLISH", factory, stFactory))
            cFB.network.functionBlocks.add(generateFunctionDeclarationNoParam("JSON_SERIALIZER", factory))
            cFB.network.functionBlocks.add(generateFunctionDeclarationNoParam("DISPATCH_OUT_${element.name}", factory))

//            EVENTS GENERATION

            val cEInitPublish = factory.createFBNetworkConnection(EntryKind.EVENT)
            cEInitPublish.sourceReference.setFQName("INIT")
            cEInitPublish.targetReference.setFQName("PUBLISH_1.INIT")
            cFB.network.eventConnections.add(cEInitPublish)

            val cESerializerPublish = factory.createFBNetworkConnection(EntryKind.EVENT)
            cESerializerPublish.sourceReference.setFQName("JSON_SERIALIZER.RES")
            cESerializerPublish.targetReference.setFQName("PUBLISH_1.REQ")
            cFB.network.eventConnections.add(cESerializerPublish)

            this.element.inputParameters.stream().filter{it.name != "MAPPING"}
                .forEach{
                    val event = generateEventForParameter(it, factory)
                    cFB.inputEvents.add(event)
                    val cEDispatch = factory.createFBNetworkConnection(EntryKind.EVENT)
                    cEDispatch.sourceReference.setFQName(event.name)
                    cEDispatch.targetReference.setFQName("DISPATCH_OUT_${this.element.name}.${event.name}")
                    cFB.network.eventConnections.add(cEDispatch)
                }

//            DATA CONNECTIONS GENERATION

            val cDSerializerPublish = factory.createFBNetworkConnection(EntryKind.DATA)
            cDSerializerPublish.sourceReference.setFQName("JSON_SERIALIZER.MSG")
            cDSerializerPublish.targetReference.setFQName("PUBLISH_1.SD_1")
            cFB.network.dataConnections.add(cDSerializerPublish)

            this.element.inputParameters.stream()
                .forEach{
                    val cDDispatch = factory.createFBNetworkConnection(EntryKind.DATA)
                    cDDispatch.sourceReference.setFQName(it.name)
                    cDDispatch.targetReference.setFQName("DISPATCH_OUT_${this.element.name}.${it.name}")
                    cFB.network.dataConnections.add(cDDispatch)
                }

            val cDNameSerialize = factory.createFBNetworkConnection(EntryKind.DATA)
            cDNameSerialize.sourceReference.setFQName("DISPATCH_OUT_${this.element.name}.NAME")
            cDNameSerialize.targetReference.setFQName("JSON_SERIALIZER.NAME")
            cFB.network.dataConnections.add(cDNameSerialize)

//            CONNECTIONS FOR DIFFERENT DATA TYPES

            HMIInterfaceTypeGenerator.CONNECTION_TYPES.forEach {
                val cEDispatch = factory.createFBNetworkConnection(EntryKind.EVENT)
                cEDispatch.sourceReference.setFQName("DISPATCH_OUT_${this.element.name}.IS_${it.name}")
                cEDispatch.targetReference.setFQName("JSON_SERIALIZER.IS_${it.name}")
                cFB.network.eventConnections.add(cEDispatch)
                val cDDispatch = factory.createFBNetworkConnection(EntryKind.DATA)
                cDDispatch.sourceReference.setFQName("DISPATCH_OUT_${this.element.name}.${it.name}_VALUE")
                cDDispatch.targetReference.setFQName("JSON_SERIALIZER.${it.name}_VALUE")
                cFB.network.dataConnections.add(cDDispatch)
            }

        }

        if (this.element.outputParameters.size > 0) {
//            NEEDED FUNCTION BLOCKS GENERATION

            cFB.network.functionBlocks.add(generateCommunicationBlock("SUBSCRIBE", factory, stFactory))
            cFB.network.functionBlocks.add(generateFunctionDeclarationNoParam("JSON_DESERIALIZER", factory))
            cFB.network.functionBlocks.add(generateFunctionDeclarationNoParam("DISPATCH_IN_${element.name}", factory))

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
            cEDeserializeDispatch.targetReference.setFQName("DISPATCH_IN_${this.element}.REQ")
            cFB.network.eventConnections.add(cEDeserializeDispatch)

            this.element.outputParameters.forEach {
                val event = generateEventForParameter(it, factory)
                cFB.outputEvents.add(event)

                val cEDispatchRes = factory.createFBNetworkConnection(EntryKind.EVENT)
                cEDispatchRes.sourceReference.setFQName("DISPATCH_IN_${this.element}.${event.name}")
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
            cDDeserializeName.targetReference.setFQName("DISPATCH_IN_${this.element.name}.NAME")
            cFB.network.dataConnections.add(cDDeserializeName)

            val cDMappingDispatch = factory.createFBNetworkConnection(EntryKind.DATA)
            cDMappingDispatch.sourceReference.setFQName("MAPPING")
            cDMappingDispatch.targetReference.setFQName("DISPATCH_IN_${this.element.name}.MAPPING")
            cFB.network.dataConnections.add(cDMappingDispatch)

            this.element.outputParameters.forEach {
                val cEDispatchRes = factory.createFBNetworkConnection(EntryKind.DATA)
                cEDispatchRes.sourceReference.setFQName("DISPATCH_IN_${this.element.name}.${it.name}")
                cEDispatchRes.targetReference.setFQName(it.name)
                cFB.network.eventConnections.add(cEDispatchRes)
            }

            HMIInterfaceTypeGenerator.CONNECTION_TYPES.forEach {
                val cDDispatch = factory.createFBNetworkConnection(EntryKind.DATA)
                cDDispatch.sourceReference.setFQName("JSON_DESERIALIZER.${it.name}_VALUE")
                cDDispatch.targetReference.setFQName("DISPATCH_IN_${this.element.name}.${it.name}_VALUE")
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

    fun generateCommunicationBlock(name: String, factory: IEC61499Factory, stFactory: STFactory): FunctionBlockDeclaration {
        val fB = factory.createFunctionBlockDeclaration(null)
        fB.name = name
        val idPD = factory.createParameterDeclaration(null)
        idPD.name = "ID"
        idPD.type = ElementaryType.WSTRING
        val host = factory.createParameterAssignment()
        host.parameterReference.setTarget(idPD)
        host.value = STConverter.parseLiteral(stFactory, "225.0.0.2:65011")
        fB.parameters.add(host)

        val qiPD = factory.createParameterDeclaration(null)
        qiPD.name = "QI"
        qiPD.type = ElementaryType.BOOL
        val qi = factory.createParameterAssignment()
        qi.parameterReference.setTarget(idPD)
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