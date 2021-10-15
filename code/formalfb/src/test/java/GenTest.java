import org.fbme.formalfb.generation.Generator;
import org.fbme.formalfb.generation.SpinGenerator;
import org.fbme.ide.platform.testing.PlatformTestBase;
import org.fbme.ide.platform.testing.PlatformTestRunner;
import org.fbme.lib.common.StringIdentifier;
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import org.junit.Test;
import org.junit.runner.RunWith;

@RunWith(PlatformTestRunner.class)
public class GenTest extends PlatformTestBase {

    @Test
    public void createGenerator() {
        Generator generator = new SpinGenerator();
        CompositeFBTypeDeclaration cfb = getFactory().createCompositeFBTypeDeclaration(new StringIdentifier("Composite"));
        String res = generator.generate(cfb);
        System.out.println(res);
    }
}
