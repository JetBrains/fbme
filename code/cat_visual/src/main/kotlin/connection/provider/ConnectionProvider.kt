package connection.provider

import connection.ConnectionFieldRegistry
import connection.field.ConnectionField
import connection.field.TYPE_ID
import java.io.BufferedReader
import java.io.InputStreamReader
import java.io.PrintWriter
import java.net.DatagramPacket
import java.net.InetAddress
import java.net.MulticastSocket
import java.net.ServerSocket
import java.net.Socket
import java.nio.ByteBuffer
import kotlin.concurrent.thread

abstract class ConnectionProvider(private val port: Int, private val host: String = "225.0.0.1") {
    abstract fun response(fieldGetter: (ByteArray) -> Pair<Pair<ConnectionField<out Any>, ByteArray>, String>, ping:Long = 500, callbacks: Map<String, () -> Unit> = mapOf())
    abstract fun response(fieldSetter: (String) -> String, log: Boolean, ping:Long = 500, callbacks: Map<String, () -> Unit> = mapOf())
    abstract fun request(field: ConnectionField<out Any>, prefix: ByteArray)
    abstract fun request(msg: String)
}

class UDPConnectionProvider(private val port: Int, private val host: String = "225.0.0.1"): ConnectionProvider(port, host) {
    val group = InetAddress.getByName(host);
    val socket = MulticastSocket(port);


    init {
        socket.joinGroup(group)
    }

    var ind = 0

    override fun response(fieldGetter: (ByteArray) -> Pair<Pair<ConnectionField<out Any>, ByteArray>, String>, ping:Long, callbacks: Map<String, () -> Unit>) {
        thread {
            while (true) {
                val buf = ByteArray(1024);
                val recv = DatagramPacket(buf, buf.size);
                socket.receive(recv)
                val fieldData = fieldGetter(recv.data)
                val field = fieldData.first.first
                val data = fieldData.first.second
                val name = fieldData.second
                println("GETTING ${field.getTypeID()}")
                field.getFBValue(data)
                callbacks.getOrDefault(name, {})()
                println("GOT ${field.getValue()}")
                Thread.sleep(ping)
            }
        }
    }

    override fun request(field: ConnectionField<out Any>, prefix: ByteArray) {
        println("SENDING ${field.getValue()}")
        var msg = field.getFromFBValue()
        msg = prefix.plus(msg)
        val hi = DatagramPacket(msg, msg.size,
            group, port);
        socket.send(hi)
    }

    override fun request(msgJ: String) {
        println("SENDING ${msgJ}")
        val contentBytes = msgJ.toByteArray()
        val msg = ByteBuffer.allocate(contentBytes.size + 3).put(TYPE_ID.STRING.code.toByte()).putShort(msgJ.length.toShort()).put(contentBytes).array()
        val hi = DatagramPacket(msg, msg.size,
            group, port);
        socket.send(hi)
    }

    override fun response(fieldSetter: (String) -> String, log: Boolean, ping:Long, callbacks: Map<String, () -> Unit>) {
        thread {
            while (true) {

                val buf = ByteArray(1024);
                val recv = DatagramPacket(buf, buf.size);
                socket.receive(recv)
                var size = ByteBuffer.wrap(recv.data).getShort(1)
                var msg = String(recv.data.copyOfRange(3, 3 + size.toInt()))
                if (log) println("MESSAGE $msg")
                val name = fieldSetter(msg)
                callbacks.getOrDefault(name, {})()
                Thread.sleep(ping)
            }
        }
    }

}