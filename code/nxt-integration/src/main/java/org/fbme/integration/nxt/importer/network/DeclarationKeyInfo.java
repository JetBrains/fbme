package org.fbme.integration.nxt.importer.network;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

/**
 * This class is used to collect mapping info about old and new port declarations
 * This info will be used later for accurate rehang connections from old to new declarations
 */
public class DeclarationKeyInfo {
    private final boolean singleCreation;
    public Map<DeclarationKey, DeclarationKey> declarationKeyCopySaveMap;

    public DeclarationKeyInfo(boolean singleCreation) {
        this.singleCreation = singleCreation;
        this.declarationKeyCopySaveMap = new HashMap<>();
    }

    /**
     * Create a pair of declaration keys by given parameters with difference in portDeclaration
     * Put this pair to save map afterwards
     */
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

    /**
     * Check if save map contains declaration key by given parameters and creation mode
     * If key was found, create a new pair of keys using given parameters and found key
     *
     * @return true if new declaration key was created, false otherwise
     */
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
                        (!singleCreation || object.getBlockDeclaration() == blockDeclaration) &&
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
