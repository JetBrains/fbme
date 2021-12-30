import jetbrains.mps.smodel.tempmodel.TempModuleOptions
import jetbrains.mps.smodel.tempmodel.TemporaryModels
import org.fbme.formalfb.generation.spin.CompositeBlockGenerator
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.testing.LoadFrom
import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.ide.platform.testing.PlatformTestRunner
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import java.io.InputStreamReader
import kotlin.test.assertTrue


private const val compositeFBTestDir = "/composite"

@RunWith(PlatformTestRunner::class)
@LoadFrom("org.fbme.formalfb")
class CompositeBlockTest : PlatformTestBase() {

    @Test
    fun testPerformanceBlock() = checkCompositeBlock("Performance2")

    private fun checkCompositeBlock(testCase: String) {
        val fbtFile = "$compositeFBTestDir/$testCase.fbt"
        val cfb = rootConverterByPath(fbtFile).convertFBType()
        val basicBlocks = loadBasicBlocksOfComposite(testCase)

        val reference = readReferenceFile(fbtFile)
        project.repository.modelAccess.runWriteAction {
            val model = TemporaryModels.getInstance().create(false, false, "tmp", TempModuleOptions.forDefaultModule())
            model.addRootNode((cfb as PlatformElement).node)
            basicBlocks.forEach { model.addRootNode((it as PlatformElement).node) }

            assertTrue(cfb is CompositeFBTypeDeclaration)
            val generator = CompositeBlockGenerator(cfb)
            val res = generator.generate()
            Assert.assertEquals(reference, res)
        }
    }

    private fun loadBasicBlocksOfComposite(testCase: String): List<FBTypeDeclaration> {
        val result = mutableListOf<FBTypeDeclaration>()
        var i = 1
        while (true) {
            val fbtFile = "$compositeFBTestDir/$testCase-basic-$i.fbt"
            if (this::class.java.getResourceAsStream(fbtFile) == null) {
                break
            }
            rootConverterByPath(fbtFile).convertFBType()?.let { bfb ->
                result.add(bfb)
            }
            i++
        }
        return result
    }

    private fun readReferenceFile(fbtFile: String) =
        InputStreamReader(checkNotNull(this::class.java.getResourceAsStream(fbtFile.replace(".fbt",".pml")))).readText()

}