package org.fbme.ide.platform.adapters.parser;

import jetbrains.mps.smodel.SModelId;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.util.JDOMUtil;
import org.fbme.ide.iec61499.repository.PlatformIdentifier;
import org.fbme.ide.platform.testing.PlatformTestBase;
import org.fbme.ide.platform.testing.PlatformTestRunner;
import org.fbme.lib.common.Identifier;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.parser.IdentifierLocus;
import org.fbme.lib.iec61499.parser.RootConverter;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModelName;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

@RunWith(PlatformTestRunner.class)
public class FBNetworkConverterTest extends PlatformTestBase {

    @Test
    public void parseTest1() {
        InputStream stream = FBNetworkConverterTest.class.getResourceAsStream("/ParserTestFbt1.fbt");
        FBTypeDeclaration fbType = createConverter(stream).convertFBType();
        Assert.assertNotNull(fbType);
    }

    private RootConverter createConverter(InputStream stream) {
        try {
            RootConverter converter = new RootConverter(
                    getFactory(),
                    getStFactory(),
                    new PlatformIdentifierLocus(new jetbrains.mps.smodel.SModelReference(null, SModelId.generate(), new SModelName("testModel"))),
                    JDOMUtil.loadDocument(stream)
            );
            return converter;
        } catch (JDOMException | IOException e) {
            throw new IllegalStateException(e);
        }
    }

    // FIXME copied from IEC61499ModelFactory
    private static class PlatformIdentifierLocus implements IdentifierLocus {
        private final SModelReference myReference;
        private final List<String> myPath = new ArrayList<String>();

        public PlatformIdentifierLocus(SModelReference reference) {
            myReference = reference;
        }

        @Nullable
        @Override
        public Identifier onDeclarationEntered(@NotNull Element element) {
            String name = element.getAttributeValue("Name");
            myPath.add(name);
            return new PlatformIdentifier(new SNodePointer(myReference, PersistenceFacade.getInstance().createNodeId("~" + String.join(".", myPath))));
        }

        @Override
        public void onDeclarationLeaved() {
            myPath.remove(myPath.size() - 1);
        }
    }
}
