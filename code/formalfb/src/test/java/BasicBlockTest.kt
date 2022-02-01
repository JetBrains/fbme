import CompositeBlockTest.Companion.compareWithReference
import jetbrains.mps.smodel.tempmodel.TempModuleOptions
import jetbrains.mps.smodel.tempmodel.TemporaryModels
import org.fbme.formalfb.generation.spin.BasicBlockGenerator
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.testing.LoadFrom
import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.ide.platform.testing.PlatformTestRunner
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.junit.Test
import org.junit.runner.RunWith
import java.io.InputStreamReader
import kotlin.test.assertTrue


private const val basicFBTestDir = "/basic"

@RunWith(PlatformTestRunner::class)
@LoadFrom("org.fbme.formalfb")
class BasicBlockTest : PlatformTestBase() {

    @Test
    fun testALU() = checkBasicBlock("ALU")

    @Test
    fun testPlant() = checkBasicBlock("Plant")

    @Test
    fun testDrillModel() = checkBasicBlock("DrillModel")

    @Test
    fun testCarriageController() = checkBasicBlock("CarriageController")

//    @Test //disabled: FMBE has NPE while generating code for controller
    fun testController() = checkBasicBlock("Controller")

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
            compareWithReference(reference, res)
        }
    }

    private fun readReferenceFile(fbtFile: String) =
        InputStreamReader(checkNotNull(this::class.java.getResourceAsStream(fbtFile.replace(".fbt",".pml")))).readText()

}