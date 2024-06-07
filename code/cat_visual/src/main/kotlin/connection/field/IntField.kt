package connection.field;

import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import java.nio.ByteBuffer

data class SIntField(var defaultValue:Byte, override var content:Byte = 0, override val contentState: MutableState<Byte> = mutableStateOf(defaultValue)): ConnectionField<Byte>(content, contentState) {

    override fun getFromFBValue(): ByteArray {
        val bytes: ByteArray = ByteBuffer.allocate(5).put(getTypeID().code.toByte()).put(content).array()
        return bytes
    }

    override fun getMsgValue(): String {
        return getValue().toString()
    }

    override fun getFBValue(d: ByteArray) {
        var buf = ByteBuffer.wrap(d)

        if (buf[0] == TYPE_ID.SINT.code.toByte()) {
            setValue(ByteBuffer.wrap(d).get(1))
        }
        println(d.contentToString())
    }

    override fun getFBValue(d: String) {
        setValue(d.toByte())
    }

    override fun getTypeID(): TYPE_ID {
        return TYPE_ID.SINT
    }
}

data class USIntField(var defaultValue:UByte, override var content:UByte = 0u, override val contentState: MutableState<UByte> = mutableStateOf(defaultValue)): ConnectionField<UByte>(content, contentState) {

    override fun getFromFBValue(): ByteArray {
        val bytes: ByteArray = ByteBuffer.allocate(5).put(getTypeID().code.toByte()).put(content.toByte()).array()
        return bytes
    }

    override fun getMsgValue(): String {
        return getValue().toString()
    }

    override fun getFBValue(d: ByteArray) {
        var buf = ByteBuffer.wrap(d)

        if (buf[0] == TYPE_ID.UINT.code.toByte()) {
            setValue(ByteBuffer.wrap(d).get(1).toUByte())
        }
        println(d.contentToString())
    }

    override fun getFBValue(d: String) {
        setValue(d.toUByte())
    }

    override fun getTypeID(): TYPE_ID {
        return TYPE_ID.USINT
    }
}

data class IntField(var defaultValue:Short, override var content:Short = 0, override val contentState: MutableState<Short> = mutableStateOf(defaultValue)): ConnectionField<Short>(content, contentState) {

    override fun getFromFBValue(): ByteArray {
        val bytes: ByteArray = ByteBuffer.allocate(5).put(getTypeID().code.toByte()).putShort(content).array()
        return bytes
    }

    override fun getMsgValue(): String {
        return getValue().toString()
    }

    override fun getFBValue(d: ByteArray) {
        var buf = ByteBuffer.wrap(d)

        if (buf[0] == TYPE_ID.INT.code.toByte()) {
            setValue(ByteBuffer.wrap(d).getShort(1))
        }
        println(d.contentToString())
    }

    override fun getFBValue(d: String) {
        setValue(d.toShort())
    }

    override fun getTypeID(): TYPE_ID {
        return TYPE_ID.INT
    }
}

data class UIntField(var defaultValue:UShort, override var content:UShort = 0u, override val contentState: MutableState<UShort> = mutableStateOf(defaultValue)): ConnectionField<UShort>(content, contentState) {

    override fun getFromFBValue(): ByteArray {
        val bytes: ByteArray = ByteBuffer.allocate(5).put(getTypeID().code.toByte()).putShort(content.toShort()).array()
        return bytes
    }

    override fun getMsgValue(): String {
        return getValue().toString()
    }

    override fun getFBValue(d: ByteArray) {
        var buf = ByteBuffer.wrap(d)

        if (buf[0] == TYPE_ID.UINT.code.toByte()) {
            setValue(ByteBuffer.wrap(d).getShort(1).toUShort())
        }
        println(d.contentToString())
    }

    override fun getFBValue(d: String) {
        setValue(d.toUShort())
    }

    override fun getTypeID(): TYPE_ID {
        return TYPE_ID.UINT
    }
}

data class DIntField(var defaultValue:Int, override var content:Int = 0, override val contentState: MutableState<Int> = mutableStateOf(defaultValue)): ConnectionField<Int>(content, contentState) {

    override fun getFromFBValue(): ByteArray {
        val bytes: ByteArray = ByteBuffer.allocate(5).put(getTypeID().code.toByte()).putInt(content).array()
        return bytes
    }

    override fun getMsgValue(): String {
        return getValue().toString()
    }

    override fun getFBValue(d: ByteArray) {
        var buf = ByteBuffer.wrap(d)

        if (buf[0] == TYPE_ID.DINT.code.toByte()) {
            setValue(ByteBuffer.wrap(d).getInt(1))
        }
        println(d.contentToString())
    }

    override fun getFBValue(d: String) {
        setValue(d.toInt())
    }

    override fun getTypeID(): TYPE_ID {
        return TYPE_ID.DINT
    }
}

data class UDIntField(var defaultValue:UInt, override var content:UInt = 0u, override val contentState: MutableState<UInt> = mutableStateOf(defaultValue)): ConnectionField<UInt>(content, contentState) {

    override fun getFromFBValue(): ByteArray {
        val bytes: ByteArray = ByteBuffer.allocate(9).put(getTypeID().code.toByte()).putInt(content.toInt()).array()
        return bytes
    }

    override fun getMsgValue(): String {
        return getValue().toString()
    }

    override fun getFBValue(d: ByteArray) {
        var buf = ByteBuffer.wrap(d)

        if (buf[0] == TYPE_ID.UDINT.code.toByte()) {
            setValue(ByteBuffer.wrap(d).getInt(1).toUInt())
        }
        println(d.contentToString())
    }

    override fun getFBValue(d: String) {
        setValue(d.toUInt())
    }

    override fun getTypeID(): TYPE_ID {
        return TYPE_ID.UDINT
    }
}


data class LIntField(var defaultValue:Long, override var content:Long = 0, override val contentState: MutableState<Long> = mutableStateOf(defaultValue)): ConnectionField<Long>(content, contentState) {

    override fun getFromFBValue(): ByteArray {
        val bytes: ByteArray = ByteBuffer.allocate(5).put(getTypeID().code.toByte()).putLong(content).array()
        return bytes
    }

    override fun getMsgValue(): String {
        return getValue().toString()
    }

    override fun getFBValue(d: ByteArray) {
        var buf = ByteBuffer.wrap(d)

        if (buf[0] == TYPE_ID.LINT.code.toByte()) {
            setValue(ByteBuffer.wrap(d).getLong(1))
        }
        println(d.contentToString())
    }

    override fun getFBValue(d: String) {
        setValue(d.toLong())
    }

    override fun getTypeID(): TYPE_ID {
        return TYPE_ID.LINT
    }
}

data class ULIntField(var defaultValue:ULong, override var content:ULong = 0uL, override val contentState: MutableState<ULong> = mutableStateOf(defaultValue)): ConnectionField<ULong>(content, contentState) {

    override fun getFromFBValue(): ByteArray {
        val bytes: ByteArray = ByteBuffer.allocate(9).put(getTypeID().code.toByte()).putLong(content.toLong()).array()
        return bytes
    }

    override fun getMsgValue(): String {
        return getValue().toString()
    }

    override fun getFBValue(d: ByteArray) {
        var buf = ByteBuffer.wrap(d)

        if (buf[0] == TYPE_ID.UDINT.code.toByte()) {
            setValue(ByteBuffer.wrap(d).getLong(1).toULong())
        }
        println(d.contentToString())
    }

    override fun getFBValue(d: String) {
        setValue(d.toULong())
    }

    override fun getTypeID(): TYPE_ID {
        return TYPE_ID.ULINT
    }
}
