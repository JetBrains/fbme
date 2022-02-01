import CompositeBlockTest.Companion.compareWithReference
import CompositeBlockTest.Companion.loadBasicBlocksOfComposite
import jetbrains.mps.smodel.tempmodel.TempModuleOptions
import jetbrains.mps.smodel.tempmodel.TemporaryModels
import org.fbme.formalfb.generation.spin.SpinGenerator
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.testing.LoadFrom
import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.ide.platform.testing.PlatformTestRunner
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.junit.Test
import org.junit.runner.RunWith
import java.io.InputStreamReader
import kotlin.test.assertTrue


@RunWith(PlatformTestRunner::class)
@LoadFrom("org.fbme.formalfb")
class GeneratorTest : PlatformTestBase() {

    @Test
    fun createGenerator() = checkSystem("Performance2")

    private fun checkSystem(testCase: String) {
        val fbtFile = "$compositeFBTestDir/$testCase.fbt"
        val cfb = rootConverterByPath(fbtFile).convertFBType()
        val basicBlocks = loadBasicBlocksOfComposite(this, testCase)

        val reference = readReferenceFile(fbtFile)
        project.repository.modelAccess.runWriteAction {
            val model = TemporaryModels.getInstance().create(false, false, "tmp", TempModuleOptions.forDefaultModule())
            model.addRootNode((cfb as PlatformElement).node)
            basicBlocks.forEach { model.addRootNode((it as PlatformElement).node) }

            assertTrue(cfb is CompositeFBTypeDeclaration)
            val generator = SpinGenerator(cfb)
            val res = generator.generate()
            compareWithReference(reference, res)
        }
    }

    private fun readReferenceFile(fbtFile: String) =
        InputStreamReader(checkNotNull(this::class.java.getResourceAsStream(fbtFile.replace(".fbt","-sys.pml")))).readText()

}