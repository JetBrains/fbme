package org.fbme.ide.platform.converter;

import jetbrains.mps.smodel.SNodePointer;
import org.fbme.ide.iec61499.repository.PlatformElementsOwner;
import org.fbme.ide.iec61499.repository.PlatformIdentifier;
import org.fbme.lib.common.Identifier;
import org.fbme.lib.iec61499.parser.IdentifierLocus;
import org.fbme.lib.iec61499.parser.Iec61499ConverterConfiguration;
import org.fbme.lib.iec61499.parser.RootConverter;
import org.fbme.lib.iec61499.parser.StandardIec61499ConverterConfiguration;
import org.jdom.Document;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import java.util.ArrayList;
import java.util.List;

public final class PlatformConverter {

    private PlatformConverter() {
    }

    @NotNull
    public static RootConverter create(
            @NotNull PlatformElementsOwner owner,
            @NotNull SModelReference modelReference,
            @NotNull Document document
    ) {
        Iec61499ConverterConfiguration configuration = ourConfigFactory.createConfiguration(owner);
        return new RootConverter(configuration, new PlatformIdentifierLocus(modelReference), document);
    }

    @NotNull
    public static RootConverter create(
            @NotNull Iec61499ConverterConfiguration configuration,
            @NotNull SModelReference modelReference,
            @NotNull Document document
    ) {
        return new RootConverter(configuration, new PlatformIdentifierLocus(modelReference), document);
    }

    private static class PlatformIdentifierLocus implements IdentifierLocus {
        private final SModelReference myReference;
        private final List<String> myPath = new ArrayList<>();

        public PlatformIdentifierLocus(SModelReference reference) {
            myReference = reference;
        }

        @Nullable
        @Override
        public Identifier onDeclarationEntered(@NotNull Element element) {
            String name = element.getAttributeValue("Name");
            myPath.add(name);
            SNodeId nodeId = PersistenceFacade.getInstance().createNodeId("~" + String.join(".", myPath));
            return new PlatformIdentifier(new SNodePointer(myReference, nodeId));
        }

        @Override
        public void onDeclarationLeaved() {
            myPath.remove(myPath.size() - 1);
        }
    }

    public interface DefaultConfigurationFactory {
        @NotNull
        Iec61499ConverterConfiguration createConfiguration(@NotNull PlatformElementsOwner owner);
    }

    public static final DefaultConfigurationFactory STANDARD_CONFIG_FACTORY = (@NotNull PlatformElementsOwner owner) ->
            new StandardIec61499ConverterConfiguration(owner.getIec61499Factory(), owner.getStFactory());

    private static DefaultConfigurationFactory ourConfigFactory = STANDARD_CONFIG_FACTORY;

    // Use only for testing purposes
    public static void installConfigFactory(@NotNull DefaultConfigurationFactory factory) {
        ourConfigFactory = factory;
    }
}
