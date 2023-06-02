package connection.field;

import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import java.nio.ByteBuffer

data class FloatField(var defaultValue:Float, override var content:Float = 0f, override val contentState: MutableState<Float> = mutableStateOf(defaultValue)): ConnectionField<Float>(content, contentState) {

    override fun getFromFBValue(): ByteArray {
        val bytes: ByteArray = ByteBuffer.allocate(5).put(getTypeID().code.toByte()).putFloat(content).array()
        return bytes
    }

    override fun getMsgValue(): String {
        return getValue().toString()
    }

    override fun getFBValue(d: ByteArray) {
        var buf = ByteBuffer.wrap(d)

        if (buf[0] == TYPE_ID.REAL.code.toByte()) {
            setValue(ByteBuffer.wrap(d).getFloat(1))
        }
    }

    override fun getFBValue(d: String) {
        setValue(d.toFloat())
    }

    override fun getTypeID(): TYPE_ID {
        return TYPE_ID.REAL
    }
}
