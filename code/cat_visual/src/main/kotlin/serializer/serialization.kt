package serializer

import kotlinx.serialization.Serializable
import kotlinx.serialization.modules.SerializersModule
import kotlinx.serialization.serializer
import nl.adaptivity.xmlutil.XmlDeclMode
import nl.adaptivity.xmlutil.serialization.XML
import nl.adaptivity.xmlutil.serialization.XmlElement
import nl.adaptivity.xmlutil.serialization.XmlSerialName

@Serializable
@XmlSerialName("Mapping", "", "")
data class PlainMapping(
    val inputs: PlainInputs,
    val outputs: PlainOutputs,
)

@Serializable
@XmlSerialName("Inputs", "", "")
data class PlainInputs(
    val inputs: List<PlainInput>
)

@Serializable
@XmlSerialName("Input", "", "")
data class PlainInput(
    val name: String,
    val type: String,
    val host: String,
    val port: Int
)

@Serializable
@XmlSerialName("Outputs", "", "")
data class PlainOutputs(
    val outputs: List<PlainOutput>

)

@Serializable
@XmlSerialName("Output", "", "")
data class PlainOutput(
    val name: String,
    val type: String,
    val host: String,
    val port: Int
)


fun getPlainMapping(modelText: String): PlainMapping {
    val module = SerializersModule {}
    val xml = XML(module) {
        indentString = "    "
        xmlDeclMode = XmlDeclMode.Minimal
        autoPolymorphic = true
    }

    val serializer = serializer<PlainMapping>()
    return xml.decodeFromString(serializer, modelText)
}

@Serializable
@XmlSerialName("Mapping", "", "")
data class Mapping(
    val id: String,
    val inputs: Inputs,
    val outputs: Outputs,
)

@Serializable
@XmlSerialName("Inputs", "", "")
data class Inputs(
    val inputs: List<Input>
)

@Serializable
@XmlSerialName("Input", "", "")
data class Input(
    val name: String,
    val type: String
)

@Serializable
@XmlSerialName("Outputs", "", "")
data class Outputs(
    val outputs: List<Output>
)

@Serializable
@XmlSerialName("Output", "", "")
data class Output(
    val name: String,
    val type: String
)


fun getMapping(modelText: String): Mapping {
    val module = SerializersModule {}
    val xml = XML(module) {
        indentString = "    "
        xmlDeclMode = XmlDeclMode.Minimal
        autoPolymorphic = true
    }

    val serializer = serializer<Mapping>()
    return xml.decodeFromString(serializer, modelText)
}


@Serializable
@XmlSerialName("Conf", "", "")
data class Conf(
    val inputs: ConfInputs,
    val outputs: ConfOutputs,
)

@Serializable
@XmlSerialName("Inputs", "", "")
data class ConfInputs(
    val inputs: List<ConfInput>
)
@Serializable
@XmlSerialName("Input", "", "")
data class ConfInput(
    val type: String,
    val host: String,
    val port: Int
)

@Serializable
@XmlSerialName("Outputs", "", "")
data class ConfOutputs(
    val outputs: List<ConfOutput>
)

@Serializable
@XmlSerialName("Output", "", "")
data class ConfOutput(
    val type: String,
    val host: String,
    val port: Int
)


fun getConf(modelText: String): Conf {
    val module = SerializersModule {}
    val xml = XML(module) {
        indentString = "    "
        xmlDeclMode = XmlDeclMode.Minimal
        autoPolymorphic = true
    }

    val serializer = serializer<Conf>()
    return xml.decodeFromString(serializer, modelText)
}