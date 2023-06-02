package connection.field

import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf

data class BoolField(override var content:Boolean = false, override val contentState: MutableState<Boolean> = mutableStateOf(content)): ConnectionField<Boolean>(content, contentState) {

    val TRUE_VALUE:Byte = 65
    val FALSE_VALUE:Byte = 64


    override fun getFromFBValue():ByteArray {
        val res = ByteArray(1)
        res[0] = if (content) TRUE_VALUE else FALSE_VALUE
        return res
    }

    override fun getFBValue(d: ByteArray) {
        setValue(d[0] == TRUE_VALUE)
    }

    override fun getFBValue(d: String) {
        setValue(d.equals("TRUE"));
    }

    override fun getMsgValue(): String {
        if (content) {
            return "TRUE";
        }
        return "FALSE";
    }

    override fun getTypeID(): TYPE_ID {
        return TYPE_ID.BOOL
    }

}