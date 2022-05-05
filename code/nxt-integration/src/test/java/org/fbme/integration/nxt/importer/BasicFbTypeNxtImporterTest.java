package org.fbme.integration.nxt.importer;

import org.fbme.ide.platform.testing.LoadFrom;
import org.fbme.ide.platform.testing.PlatformTestBase;
import org.fbme.ide.platform.testing.PlatformTestRunner;
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration;
import org.fbme.lib.st.types.DataType;
import org.fbme.lib.st.types.ElementaryType;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;

@RunWith(PlatformTestRunner.class)
@LoadFrom(module = "org.fbme.integration.nxt")
public class BasicFbTypeNxtImporterTest extends PlatformTestBase {
    @Test
    public void parseTest1() {
        var fbType = rootConverterByPath("/boolMerge.fbt", NxtImporterConfiguration.FACTORY).convertFBType();
        Assert.assertNotNull(fbType);
    }

    @Test
    public void testParseAlgorithmWithTemporaryVariables() {
        var fbType = rootConverterByPath("/AlgorithmWithTemporaryVariables.fbt", NxtImporterConfiguration.FACTORY).convertFBType();
        Assert.assertTrue(fbType instanceof BasicFBTypeDeclaration);
        var basicFbType = (BasicFBTypeDeclaration) fbType;
        var algorithm = basicFbType.getAlgorithms().get(0);
        Assert.assertNotNull(algorithm);
        var temporaryVariable = algorithm.getTemporaryVariables().get(0);
        Assert.assertNotNull(temporaryVariable);
        Assert.assertEquals("temp", temporaryVariable.getName());
        Assert.assertEquals(ElementaryType.INT, temporaryVariable.getType());
    }
}
