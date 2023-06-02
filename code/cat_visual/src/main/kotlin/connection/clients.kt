package connection

import connection.field.ConnectionField
import connection.field.StringField
import connection.field.TYPE_ID
import connection.provider.ConnectionProvider
import kotlinx.serialization.Serializable
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json
import serializer.Conf
import serializer.Mapping
import serializer.PlainMapping
import java.nio.ByteBuffer

abstract class AbstractClient() {
    abstract fun getField(name: String): ConnectionField<out Any>?;
    abstract fun sendValue(name: String)
    abstract fun retrieveValues(callbacks: Map<String, () -> Unit> = mapOf(), isInput: Boolean = true)
}

abstract class UDPClient(): AbstractClient() {
    protected val registry: ConnectionFieldRegistry = ConnectionFieldRegistry()
    val inputs: MutableSet<String> = mutableSetOf()
    val outputs: MutableSet<String> = mutableSetOf()
    val inputConnections: MutableList<ConnectionProvider> = mutableListOf()
    val outputConnections: MutableList<ConnectionProvider> = mutableListOf()

    override fun getField(name: String): ConnectionField<out Any>? {
        return registry.getConnection(name)?.first
    }
}

class PlainClient(mapping: PlainMapping): UDPClient() {
    init {
        mapping.inputs.inputs.forEach({
            registry.getConnection(it.name, TYPE_ID.valueOf(it.type), it.host, it.port)
            inputs.add(it.name)
            inputConnections.add(registry.getConnection(it.name)!!.second)
        })
        mapping.outputs.outputs.forEach({
            registry.getConnection(it.name, TYPE_ID.valueOf(it.type), it.host, it.port)
            outputs.add(it.name)
            outputConnections.add(registry.getConnection(it.name)!!.second)
        })
    }

    override fun sendValue(name: String) {
        val fieldConnector = registry.getConnection(name)
        val field = fieldConnector!!.first
        val connector = fieldConnector.second
        connector.request(field, ByteArray(0))
    }

    override fun retrieveValues(callbacks: Map<String, () -> Unit>, isInput: Boolean) {
        val units = if (isInput) inputs else outputs
        units.forEach{
            val fieldConnector = registry.getConnection(it)
            val field = fieldConnector!!.first
            val connector = fieldConnector.second
            connector.response({ba -> Pair(Pair(field, ba), it)}, callbacks=callbacks)
        }
    }
}

class NamedClient(mapping: Mapping, conf: Conf): UDPClient() {
    val nameField: ConnectionField<String> = StringField()
    val inputsTypes: MutableMap<TYPE_ID, Pair<String, Int>> = mutableMapOf()
    val outputsTypes: MutableMap<TYPE_ID, Pair<String, Int>> = mutableMapOf()

    init {
        conf.inputs.inputs.forEach({
            inputsTypes.put(TYPE_ID.valueOf(it.type), Pair(it.host, it.port))
        })
        conf.outputs.outputs.forEach({
            outputsTypes.put(TYPE_ID.valueOf(it.type), Pair(it.host, it.port))
        })
        mapping.inputs.inputs.forEach {
            val hostPort = inputsTypes.get(TYPE_ID.valueOf(it.type))
            registry.getConnection(it.name, TYPE_ID.valueOf(it.type), hostPort!!.first, hostPort.second)
            inputs.add(it.name)
        }
        mapping.outputs.outputs.forEach({
            val hostPort = outputsTypes.get(TYPE_ID.valueOf(it.type))
            registry.getConnection(it.name, TYPE_ID.valueOf(it.type), hostPort!!.first, hostPort.second)
            outputs.add(it.name)
        })
        inputsTypes.values.forEach({
            inputConnections.add(registry.getConnector(it)!!)
        })
        outputsTypes.values.forEach({
            outputConnections.add(registry.getConnector(it)!!)
        })
    }

    override fun sendValue(name: String) {
        val fieldConnector = registry.getConnection(name)
        val field = fieldConnector!!.first
        val connector = fieldConnector.second
        nameField.setValue(name)
        connector.request(field, nameField.getFromFBValue())
    }

    override fun retrieveValues(callbacks: Map<String, () -> Unit>, isInput: Boolean) {
        val units = if (isInput) inputConnections else outputConnections
        units.forEach {
            it.response({ ba ->
            var size = ByteBuffer.wrap(ba).getShort(1)
            val name = String(ba.copyOfRange(3, 3 + size.toInt()))
            val offset = 3 + size.toInt()
            registry.getConnection(name)
            val field = registry.getConnection(name)!!.first
            Pair(Pair(field, ba.copyOfRange(offset, ba.size)), name)
        }, callbacks= callbacks)
        }
    }
}

class JSONClient(mapping: Mapping, conf: Conf): UDPClient() {
    val MSG_TYPE: TYPE_ID = TYPE_ID.STRING
    val nameField: ConnectionField<String> = StringField()
    val inputsTypes: MutableMap<TYPE_ID, Pair<String, Int>> = mutableMapOf()
    val outputsTypes: MutableMap<TYPE_ID, Pair<String, Int>> = mutableMapOf()

    @Serializable
    data class Msg(val NAME: String, val TYPE: String, val VALUE: String)
    init {
        conf.inputs.inputs.forEach({
            inputsTypes.put(TYPE_ID.valueOf(it.type), Pair(it.host, it.port))
        })
        conf.outputs.outputs.forEach({
            outputsTypes.put(TYPE_ID.valueOf(it.type), Pair(it.host, it.port))
        })
        mapping.inputs.inputs.forEach {
            val hostPort = inputsTypes.get(MSG_TYPE)
            registry.getConnection("${mapping.id}#${it.name}", TYPE_ID.valueOf(it.type), hostPort!!.first, hostPort.second)
            inputs.add(it.name)
        }
        mapping.outputs.outputs.forEach({
            val hostPort = outputsTypes.get(MSG_TYPE)
            registry.getConnection("${mapping.id}#${it.name}", TYPE_ID.valueOf(it.type), hostPort!!.first, hostPort.second)
            outputs.add(it.name)
        })
        conf.inputs.inputs.forEach({
            inputConnections.add(registry.getConnector(Pair(it.host, it.port))!!)
        })
        conf.outputs.outputs.forEach({
            outputConnections.add(registry.getConnector(Pair(it.host, it.port))!!)
        })
    }

    override fun sendValue(name: String) {
        val fieldConnector = registry.getConnection(name)
        val field = fieldConnector!!.first
        val connector = fieldConnector.second
        val data = Msg(name, field.getTypeID().name, field.getMsgValue())
        val msg = Json.encodeToString(data)
        connector.request(msg)
    }

    override fun retrieveValues(callbacks: Map<String, () -> Unit>, isInput: Boolean) {
        val units = if (isInput) inputConnections else outputConnections
        units.forEach {
            it.response({
                val msg = Json.decodeFromString<Msg>(it)
                val field = registry.getField(msg.NAME)!!
                println("GETTING ${field.getTypeID()}")
                field.getFBValue(msg.VALUE)
                println("GOT ${field.getValue()}")
                msg.NAME
            }, true, callbacks= callbacks)
        }
    }
}