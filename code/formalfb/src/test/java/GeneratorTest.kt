import jetbrains.mps.smodel.tempmodel.TempModuleOptions
import jetbrains.mps.smodel.tempmodel.TemporaryModels
import org.fbme.formalfb.generation.spin.BasicBlockGenerator
import org.fbme.formalfb.generation.spin.SpinGenerator
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.testing.LoadFrom
import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.ide.platform.testing.PlatformTestRunner
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import java.io.InputStreamReader
import kotlin.test.assertTrue


private const val basicFBTestDir = "/basic"

@RunWith(PlatformTestRunner::class)
@LoadFrom("org.fbme.formalfb")
class GeneratorTest : PlatformTestBase() {

//    @Test
    fun createGenerator() {
        val generator = SpinGenerator()
        val bfb = rootConverterByPath("/complex/performance-alus/ALU.fbt").convertFBType()
        val cfb = rootConverterByPath("/complex/performance-alus/Performance2.fbt").convertFBType()

        project.repository.modelAccess.runWriteAction {
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

    @Test
    fun checkBFBGeneration() {
        val testCase = "ALU"
        checkBasicBlock(testCase)
    }

    private fun checkBasicBlock(testCase: String) {
        val fbtFile = "$basicFBTestDir/$testCase.fbt"
        val bfb = rootConverterByPath(fbtFile).convertFBType()

        val reference = readReferenceFile(fbtFile)
        project.repository.modelAccess.runWriteAction {
            val model = TemporaryModels.getInstance().create(false, false, "tmp", TempModuleOptions.forDefaultModule())
            model.addRootNode((bfb as PlatformElement).node)

            assertTrue(bfb is BasicFBTypeDeclaration)
            val generator = BasicBlockGenerator(bfb)

            val res = generator.generate()

            Assert.assertEquals(reference, res)
        }
    }

    private fun readReferenceFile(fbtFile: String) =
        InputStreamReader(checkNotNull(this::class.java.getResourceAsStream(fbtFile.replace(".fbt",".pml")))).readText()

}