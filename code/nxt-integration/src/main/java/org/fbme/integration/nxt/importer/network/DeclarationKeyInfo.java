package org.fbme.integration.nxt.importer.network;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

public class DeclarationKeyInfo {
    public Map<DeclarationKey, DeclarationKey> declarationKeyCopySaveMap;

    public DeclarationKeyInfo() {
        this.declarationKeyCopySaveMap = new HashMap<>();
    }

    public void add(
            FBNetwork fbNetwork,
            FBTypeDeclaration fbType,
            FunctionBlockDeclaration blockDeclaration,
            Declaration portDeclaration,
            Declaration portDeclarationCopy,
            Integer index
    ) {
        declarationKeyCopySaveMap.put(
                new DeclarationKey(fbNetwork, fbType, blockDeclaration, portDeclaration, index),
                new DeclarationKey(fbNetwork, fbType, blockDeclaration, portDeclarationCopy, index)
        );
    }

    public boolean containsAndCopyIfPresent(
            FBNetwork fbNetwork,
            FBTypeDeclaration fbType,
            FunctionBlockDeclaration blockDeclaration,
            Declaration portDeclaration,
            Integer index
    ) {
        Optional<DeclarationKey> declarationKey = declarationKeyCopySaveMap.keySet().stream()
                .filter(object -> (object.getFbNetwork() == fbNetwork &&
                        object.getFbType() == fbType &&
                        object.getBlockDeclaration() == blockDeclaration &&
                        object.getPortDeclaration() == portDeclaration) ||
                        (object.getFbType() == fbType &&
                                object.getPortDeclaration() == portDeclaration &&
                                object.getIndex() != null &&
                                object.getIndex().equals(index)
                        )
                )
                .findFirst();

        if (declarationKey.isEmpty()) {
            return false;
        }

        add(fbNetwork, fbType, blockDeclaration, portDeclaration, declarationKeyCopySaveMap.get(declarationKey.get()).getPortDeclaration(), index);
        return true;
    }
}
