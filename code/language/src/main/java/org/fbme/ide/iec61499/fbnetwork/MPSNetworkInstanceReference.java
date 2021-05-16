package org.fbme.ide.iec61499.fbnetwork;

import org.fbme.ide.iec61499.repository.PlatformIdentifier;
import org.fbme.ide.iec61499.repository.PlatformRepository;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.fbme.lib.iec61499.instances.FunctionBlockInstance;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import java.util.*;
import java.util.stream.Collectors;

public class MPSNetworkInstanceReference {

    private final SNodeReference myRoot;
    private final List<SNodeId> myNestedList;

    public MPSNetworkInstanceReference(SNodeReference root, List<SNodeId> nestedList) {
        myRoot = root;
        myNestedList = nestedList;
    }

    public NetworkInstance resolve(@NotNull PlatformRepository repository) {
        SNode node = myRoot.resolve(repository.getMPSRepository());
        if (node == null) {
            return null;
        }
        Declaration declaration = repository.getAdapter(node, Declaration.class);
        if (declaration == null) {
            return null;
        }
        NetworkInstance networkInstance = NetworkInstance.createForDeclaration(declaration);

        for (final SNodeId nested : myNestedList) {
            assert networkInstance != null;
            FunctionBlockDeclarationBase component = networkInstance
                    .getNetworkDeclaration().getAllComponents().stream()
                    .filter(it -> Objects.equals(((PlatformIdentifier) it.getIdentifier()).getReference().getNodeId(), nested))
                    .findFirst().orElse(null);
            assert component != null;
            FunctionBlockInstance fbInstance = networkInstance.getChild(component);
            assert fbInstance != null;
            networkInstance = (NetworkInstance) fbInstance.getContainedNetwork();
        }
        return networkInstance;
    }

    public String serialize() {
        PersistenceFacade pf = PersistenceFacade.getInstance();
        StringBuilder sb = new StringBuilder(pf.asString(myRoot));
        for (SNodeId nested : myNestedList) {
            sb.append("//").append(pf.asString(nested));
        }
        return sb.toString();
    }

    public static MPSNetworkInstanceReference deserialize(String value) {
        final PersistenceFacade pf = PersistenceFacade.getInstance();
        String[] values = value.split("//");
        SNodeReference root = pf.createNodeReference(values[0]);
        List<SNodeId> nestedList = Arrays.stream(values).skip(1).map(pf::createNodeId).collect(Collectors.toList());
        return new MPSNetworkInstanceReference(root, nestedList);
    }


    public static MPSNetworkInstanceReference create(@NotNull NetworkInstance networInstance) {
        List<SNodeId> nestedList = new ArrayList<>();
        FunctionBlockInstance parentInstance = (FunctionBlockInstance) networInstance.getParent();
        while (parentInstance != null) {
            FunctionBlockDeclarationBase functionBlock = parentInstance.getDeclaration();
            nestedList.add(((PlatformIdentifier) functionBlock.getIdentifier()).getReference().getNodeId());
            networInstance = parentInstance.getParent();
            parentInstance = (FunctionBlockInstance) networInstance.getParent();
        }
        SNodeReference rootReference = ((PlatformIdentifier) networInstance.getDeclaration().getIdentifier()).getReference();
        Collections.reverse(nestedList);
        return new MPSNetworkInstanceReference(rootReference, nestedList);
    }
}
