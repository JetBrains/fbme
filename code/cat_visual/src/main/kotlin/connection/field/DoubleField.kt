package connection.field;

import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.sourceInformation
import java.nio.ByteBuffer
import java.util.*

data class DoubleField(var defaultValue:Double, override var content:Double = 0.0, override val contentState: MutableState<Double> = mutableStateOf(defaultValue)): ConnectionField<Double>(content, contentState) {

    override fun getFromFBValue(): ByteArray {
        val bytes: ByteArray = ByteBuffer.allocate(5).put(getTypeID().code.toByte()).putDouble(content).array()
        return bytes
    }

    override fun getMsgValue(): String {
        return getValue().toString()
    }

    override fun getFBValue(d: ByteArray) {
        var buf = ByteBuffer.wrap(d)

        if (buf[0] == TYPE_ID.LREAL.code.toByte()) {
            setValue(ByteBuffer.wrap(d).getDouble(1))
        }
    }

    override fun getFBValue(d: String) {
        setValue(d.toDouble())
    }

    override fun getTypeID(): TYPE_ID {
//        TODO("add support of just SINT")
        return TYPE_ID.LREAL
    }
}
