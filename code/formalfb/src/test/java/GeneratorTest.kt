import com.intellij.util.castSafelyTo
import jetbrains.mps.smodel.SModelId
import jetbrains.mps.smodel.SModelReference
import jetbrains.mps.smodel.tempmodel.TempModuleOptions
import jetbrains.mps.smodel.tempmodel.TemporaryModels
import jetbrains.mps.util.JDOMUtil
import org.fbme.formalfb.generation.SpinGenerator
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.testing.LoadFrom
import org.fbme.ide.platform.testing.PlatformIdentifierLocus
import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.ide.platform.testing.PlatformTestRunner
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.parser.RootConverter
import org.jdom.JDOMException
import org.jetbrains.mps.openapi.model.SModelName
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import java.io.IOException
import java.io.InputStream
import kotlin.test.assertEquals
import kotlin.test.assertTrue


@RunWith(PlatformTestRunner::class)
@LoadFrom("org.fbme.formalfb")
class GeneratorTest : PlatformTestBase() {

    @Test
    fun createGenerator() {
        val generator = SpinGenerator()
        val bfb = rootConverterByPath("/ALU.fbt").convertFBType()
        val cfb = rootConverterByPath("/Performance2.fbt").convertFBType()


        project!!.repository.modelAccess.runWriteAction {
            val model = TemporaryModels.getInstance().create(false, false, "tmp", TempModuleOptions.forDefaultModule())
            model.addRootNode((bfb as PlatformElement).node)
            model.addRootNode((cfb as PlatformElement).node)

            assertTrue(bfb is BasicFBTypeDeclaration)
            assertTrue(cfb is CompositeFBTypeDeclaration)


            val res = generator.generate(cfb)
            println("Result:")
            println(res)
        }

    }

    private val sModelReference = SModelReference(null, SModelId.generate(), SModelName("testModel"))

    private fun createConverter(stream: InputStream): RootConverter? {
        return try {
            RootConverter(
                factory,
                stFactory,
                PlatformIdentifierLocus(
                    sModelReference
                ),
                JDOMUtil.loadDocument(stream)
            )
        } catch (e: JDOMException) {
            throw IllegalStateException(e)
        } catch (e: IOException) {
            throw IllegalStateException(e)
        }
    }

}