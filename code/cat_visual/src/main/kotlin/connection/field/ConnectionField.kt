package connection.field

import androidx.compose.runtime.MutableState
import kotlinx.coroutines.Dispatchers
import java.lang.UnsupportedOperationException


abstract class ConnectionField<V>(open var content: V, open val contentState: MutableState<V>) {
    companion object {
        fun create(type: TYPE_ID):ConnectionField<out Any> {
//            println(type)
            return when (type) {
                TYPE_ID.BOOL -> BoolField()
                TYPE_ID.REAL -> FloatField(0f)
                TYPE_ID.LREAL -> DoubleField(0.0)
                TYPE_ID.STRING -> StringField()
                TYPE_ID.SINT -> SIntField(0)
                TYPE_ID.USINT -> USIntField(0u)
                TYPE_ID.INT -> IntField(0)
                TYPE_ID.UINT -> UIntField(0u)
                TYPE_ID.DINT -> DIntField(0)
                TYPE_ID.UDINT -> UDIntField(0u)
                TYPE_ID.LINT -> LIntField(0)
                TYPE_ID.ULINT -> ULIntField(0u)
                else -> {throw UnsupportedOperationException("Unsupported type literal")}
            }
        }
    }
    abstract fun getFromFBValue():ByteArray
    abstract fun getMsgValue():String
    abstract fun getFBValue(d: ByteArray)
    abstract fun getFBValue(d: String)
    abstract fun getTypeID():TYPE_ID
    fun getValue():V {
        return content
    }
    fun setValue(v:V) {
        println("!!! BEFORE SET ${content}")
        content = v
        contentState.value = content
        println("!!! SET ${content}")
    }
}

enum class TYPE_ID(val code: Int) {
    BOOL(65),
    SINT(66),
    INT(67),
    DINT(68),
    LINT(69),
    USINT(70),
    UINT(71),
    UDINT(72),
    ULINT(73),
    REAL(74),
    LREAL(75),
    STRING(80),
    WSTRING(85),
    DATE_AND_TIME(79),
    ARRAY(118)
}