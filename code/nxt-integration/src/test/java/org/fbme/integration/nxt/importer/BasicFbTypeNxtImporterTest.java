package org.fbme.integration.nxt.importer;

import jetbrains.mps.smodel.SModelId;
import jetbrains.mps.util.JDOMUtil;
import org.fbme.ide.platform.converter.PlatformConverter;
import org.fbme.ide.platform.testing.PlatformTestBase;
import org.fbme.ide.platform.testing.PlatformTestRunner;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.parser.RootConverter;
import org.jdom.JDOMException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModelName;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.io.IOException;
import java.io.InputStream;

@RunWith(PlatformTestRunner.class)
public class BasicFbTypeNxtImporterTest extends PlatformTestBase {

    @BeforeClass
    public static void setup() {
        PlatformConverter.installConfigFactory(NxtImporterConfiguration.FACTORY);
    }

    @Test
    public void parseTest1() {
        InputStream stream = BasicFbTypeNxtImporterTest.class.getResourceAsStream("/ParserTestFbt1.fbt");
        FBTypeDeclaration fbType = createConverter(stream).convertFBType();
        Assert.assertNotNull(fbType);
    }

    private RootConverter createConverter(InputStream stream) {
        try {
            return PlatformConverter.create(getRepository(), getTestModel(), JDOMUtil.loadDocument(stream));
        } catch (JDOMException | IOException e) {
            throw new IllegalStateException(e);
        }
    }

    @NotNull
    private SModelReference getTestModel() {
        return new jetbrains.mps.smodel.SModelReference(null, SModelId.generate(), new SModelName("testModel"));
    }
}
