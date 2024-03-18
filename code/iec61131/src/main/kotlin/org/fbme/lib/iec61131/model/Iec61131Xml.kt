package org.fbme.lib.iec61131.model

import kotlinx.serialization.*
import kotlinx.serialization.descriptors.buildClassSerialDescriptor
import kotlinx.serialization.encoding.Decoder
import kotlinx.serialization.encoding.Encoder
import nl.adaptivity.xmlutil.EventType
import nl.adaptivity.xmlutil.serialization.XML
import nl.adaptivity.xmlutil.serialization.XmlValue
import kotlin.io.path.Path
import kotlin.io.path.readText

class Iec61131Xml {

    companion object {
        fun serializeProject(path: String): Project {
            return XML {
                policy = Iec61131XmlPolicy
            }.decodeFromString<Project>(Path(path).readText())
        }
    }

    @Serializable
    class NotImplemented

    @SerialName("project")
    @Serializable
    class Project(
        val schemaVersion: String?,
        val fileHeader: NotImplemented,
        val contentHeader: NotImplemented,
        val types: Types,
        val instances: Instances,
        val addData: AddData?,
        val documentation: Documentation?
    )

    @Serializable
    class Instances(
        val configurations: Configurations
    )

    @Serializable
    class Configurations(
        val configurationList: List<Configuration>
    )

    @Serializable
    class Configuration(
        val resourceList: List<Resource>
        // ...
    )

    @Serializable
    class Resource(
        val taskList: List<Task>
        // ...
    )

    @Serializable
    class Task(
        val pouInstanceList: List<PouInstance>,
        val interval: String?,
        val name: String
    // ...
    )

    @Serializable
    class PouInstance(
        val name: String,
        val typeName: String
    )

    @Serializable
    class AddData // ...

    @Serializable
    class Documentation // ...

    @Serializable
    class Types(
        val dataTypes: NotImplemented?,
        val pous: Pous,
    )


    @Serializable
    class Pous(
        val pouList: List<Pou>
    )

    @Serializable
    class Pou(
        @SerialName("interface")
        val pouInterface: Interface?,
        val actions: Actions?,
        val transitions: NotImplemented?,

        val bodyList: List<Body>,

        val name: String,
        val pouType: String,
        val globalId: String?,
    )

    @Serializable
    class Actions // ...

    @Serializable
    class Body(
        val il: NotImplemented?,

        val st: NotImplemented?,

        @SerialName("FBD")
        val fbd: FBD?,

        val ld: NotImplemented?,

        val sfc: NotImplemented?,

        val addData: AddData?,
        val documentation: Documentation?,

        val worksheetName: String?,

        val globalId: String?

    )

    @Serializable
    class Interface(
        val returnType: DataType?,
        val localVars: List<VariableList>,
        val tempVars: List<VariableList>,
        val inputVars: List<VariableList>,
        val outputVars: List<VariableList>,
        val inOutVars: List<VariableList>,
        val externalVars: List<VariableList>,
        val globalVars: List<VariableList>,
        val accessVars: List<VariableList>,
        val addData: AddData?,
        val documentation: Documentation?
    )

    @Serializable(with = DataType.Companion::class)
    class DataType(
        val typeName: String
    ) {
        @Suppress("EXPERIMENTAL_API_USAGE")
        @Serializer(DataType::class)
        companion object : KSerializer<DataType> {

            override val descriptor = buildClassSerialDescriptor("DataType")
            override fun serialize(encoder: Encoder, value: DataType) = throw RuntimeException("Not needed")

            // example: <type><BOOL/></type>
            override fun deserialize(decoder: Decoder): DataType {
                val reader = (decoder as XML.XmlInput).input

                fun parseUntil(eventType: EventType) {
                    while (reader.eventType != eventType) reader.next()
                }

                parseUntil(EventType.START_ELEMENT)
                // from example: <type>
                reader.next()
                parseUntil(EventType.START_ELEMENT)
                // from example: </BOOL>
                val tagName = reader.localName
                reader.next()
                parseUntil(EventType.END_ELEMENT)
                // from example: still </BOOL>
                reader.next()
                parseUntil(EventType.END_ELEMENT)
                // from example: </type>

                return DataType(tagName)
            }
        }
    }


    @Serializable
    class VariableList(
        val name: String?,
        val constant: Boolean?,
        val retain: Boolean?,
        val nonretain: Boolean?,
        val persistent: Boolean?,
        val nonpersistent: Boolean?,
        val variableList: List<Variable>,
        val addData: AddData?,
        val documentation: Documentation?
    ) {
        @Serializable
        class Variable(
            val type: DataType,
            val initialValue: InitialValue?,
            val addData: AddData?,
            val documentation: Documentation?,
            val name: String,
            val address: String?,
            val globalId: String?
        )

        @Serializable
        class InitialValue(
            val simpleValue: SimpleValue?
        )

        @Serializable
        class SimpleValue(
            val value: String
        )
    }


    @Serializable
    class Comment // ...

    @Serializable
    class Error // ...

    @Serializable
    class Connector // ...

    @Serializable
    class Continuation // ...

    @Serializable
    class ActionBlock // ...

    @Serializable
    class VendorElement // ...

    @Serializable
    class Position(
        val x: Int,
        val y: Int
    )

    @Serializable
    class Block(
        val position: Position,
        val inputVariables: InOutVariables,
        val inOutVariables: InOutVariables,
        val outputVariables: InOutVariables,
        val addData: AddData?,
        val documentation: Documentation?,
        val localId: Long,
        val width: Long?,
        val height: Long?,
        private val typeName: String,
        private val instanceName: String?,
        val executionOrderId: Long?,
        val globalId: String?
    ) {
        fun getName() = instanceName ?: "UNNAMED_$localId"
        fun getType() = convertBlockType(typeName)

        @Serializable
        class InOutVariables(
            val variableList: List<InOutVariable>
        )

        @Serializable
        class InOutVariable(
            val connectionPointIn: ConnectionPointIn?,
            val connectionPointOut: ConnectionPointOut?,
            val documentation: Documentation?,
            val formalParameter: String,
            val negated: Boolean?,
            val edge: String?,
            val storage: String?,
            val hidden: Boolean?
        )
    }

    @Serializable
    class ConnectionPointIn(
        val relPosition: Position?,
        val connectionList: List<Connection>,
        val expression: ElementNode?,
        val addData: AddData?,
        val globalId: String?
    )

    @Serializable
    class ConnectionPointOut(
        val relPosition: Position?,
        val expression: ElementNode?,
        val addData: AddData?,
        val globalId: String?
    )

    @Serializable
    class Connection(
        val positionList: List<Position>,
        val addData: AddData?,
        val globalId: String?,
        val refLocalId: Long,
        val formalParameter: String?
    )

    @Serializable
    class Label // ...

    @Serializable
    class Jump // ...

    @Serializable
    class Return // ...

    @Serializable
    class ElementNode(
        @XmlValue(true)
        private val text: String
    ) {
        fun getText(): String {
            return text
        }
    }

    @Serializable
    class FBD(
        val commentList: List<Comment>,
        val errorList: List<Error>,
        val connectorList: List<Connector>,
        val continuationList: List<Continuation>,
        val actionBlockList: List<ActionBlock>,
        val vendorElementList: List<VendorElement>,
        val blockList: List<Block>,
        val inVariableList: List<InVariable>,
        val outVariableList: List<OutVariable>,
        val inOutVariableList: List<InOutVariable>,
        val labelList: List<Label>,
        val jumpList: List<Jump>,
        val returnList: List<Return>,
    ) {
        @Serializable
        class InOutVariable(
            val position: Position,
            val connectionPointIn: ConnectionPointIn?,
            val connectionPointOut: ConnectionPointOut?,
            val expression: ElementNode,
            val addData: AddData?,
            val documentation: Documentation?,
            val localId: Long,
            val height: Long?,
            val width: Long?,
            val executionOrderId: Long?,
            val negatedIn: Boolean?,
            val edgeIn: String?,
            val storageIn: String?,
            val negatedOut: Boolean?,
            val edgeOut: String?,
            val storageOut: String?,
            val globalId: String?
        )

        @Serializable
        class InVariable(
            val position: Position,
            val connectionPointOut: ConnectionPointOut?,
            val expression: ElementNode,
            val addData: AddData?,
            val documentation: Documentation?,
            val localId: Long,
            val height: Long?,
            val width: Long?,
            val executionOrderId: Long?,
            val negated: Boolean?,
            val edge: String?,
            val storage: String?,
            val globalId: String?
        )

        @Serializable
        class OutVariable(
            val position: Position,
            val connectionPointIn: ConnectionPointIn?,
            val expression: ElementNode,
            val addData: AddData?,
            val documentation: Documentation?,
            val localId: Long,
            val height: Long?,
            val width: Long?,
            val executionOrderId: Long?,
            val negated: Boolean?,
            val edge: String?,
            val storage: String?,
            val globalId: String?
        )
    }
}