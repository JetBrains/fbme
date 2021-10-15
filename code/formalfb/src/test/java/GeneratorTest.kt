import org.fbme.formalfb.generation.SpinGenerator
import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.ide.platform.testing.PlatformTestRunner
import org.fbme.lib.common.StringIdentifier
import org.junit.Test
import org.junit.runner.RunWith


@RunWith(PlatformTestRunner::class)
class GeneratorTest : PlatformTestBase() {

    @Test
    fun createGenerator() {
        val generator = SpinGenerator()
        val cfb = factory.createCompositeFBTypeDeclaration(StringIdentifier("Composite"))
        val res = generator.generate(cfb)
        println(res)
    }

}