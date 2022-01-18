package org.fbme.integration.nxt.importer;

import org.fbme.ide.platform.testing.LoadFrom;
import org.fbme.ide.platform.testing.PlatformTestBase;
import org.fbme.ide.platform.testing.PlatformTestRunner;
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
}
