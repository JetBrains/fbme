package org.fbme.ide.platform.testing;

import jetbrains.mps.smodel.SNodePointer;
import org.fbme.ide.iec61499.repository.PlatformIdentifier;
import org.fbme.lib.common.Identifier;
import org.fbme.lib.iec61499.parser.IdentifierLocus;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import java.util.ArrayList;
import java.util.List;

// FIXME copied from IEC61499ModelFactory
public class PlatformIdentifierLocus implements IdentifierLocus {
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