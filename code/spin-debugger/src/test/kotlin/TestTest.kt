import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.descriptors.FBType
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.st.expressions.BinaryOperation
import org.fbme.lib.st.types.ElementaryType
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData
import org.fbme.spinDebugger.fb2spin.AbstractSPINFBConverter
import org.fbme.spinDebugger.fb2spin.SPINCompositeFBConverter
import org.fbme.spinDebugger.fb2spin.SPINFunctionBlockConverter
import org.junit.runner.RunWith
import java.io.File
import kotlin.io.*
import kotlin.io.path.Path
import kotlin.test.Test

class TestTest : PlatformTestBase() {

    @Test
    fun test() {
        val buf = StringBuilder()
        val data = VerifiersData(
            typesMap = mapOf(
                ElementaryType.BOOL to "bit",
                ElementaryType.INT to "int",
                ElementaryType.BYTE to "byte"
            ),
            typesInitValMap = mapOf(
                ElementaryType.BOOL to "0",
                ElementaryType.INT to "0",
                ElementaryType.BYTE to "0",
            ),
            binaryOperationsConvertionMap = mapOf(
                BinaryOperation.AND to "&&",
                BinaryOperation.OR to "||",
                BinaryOperation.EQ to "==",
                BinaryOperation.GT to ">",
                BinaryOperation.GTE to ">=",
                BinaryOperation.LT to "<",
                BinaryOperation.LTE to "<=",
                BinaryOperation.NEQ to "!=",
                BinaryOperation.ADD to "+",
                BinaryOperation.SUB to "-",
                BinaryOperation.MUL to "*",
                BinaryOperation.DIV to "/",
                BinaryOperation.MOD to "%",
            ),
            false
        ) { false }
        val writer = File("Elevator.pml").bufferedWriter()
        Path("test/resources/IEC").toFile().walk().forEach {
            val fbType = rootConverterByPath(it.path).convertFBType()
            val fbDecl = FBType(fbType)
            val converter : AbstractSPINFBConverter
            if(fbType is CompositeFBTypeDeclaration) {
                converter = SPINCompositeFBConverter(data, buf)
            } else if(fbType is BasicFBTypeDeclaration) {
                converter = SPINFunctionBlockConverter(data, buf)
            } else {
                throw IllegalArgumentException("Unsupported FB type")
            }
            converter.fb = fbDecl
            converter.convert()
            writer.append(buf)
        }
        assert(true)
    }
}