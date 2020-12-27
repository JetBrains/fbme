package org.fbme.ide.iec61499.repository;


import jetbrains.mps.smodel.ModelImports;
import org.fbme.lib.iec61499.DeclarationsScope;
import org.fbme.lib.iec61499.declarations.*;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import org.fbme.lib.common.Identifier;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

class PlatformDeclarationsScope implements DeclarationsScope {

    @NotNull
    private final PlatformRepository myRepository;

    @Nullable
    private final SModel myModel;

    PlatformDeclarationsScope(
            @NotNull PlatformRepository repository,
            @Nullable SModel model
    ) {
        myRepository = repository;
        myModel = model;
    }

    @Nullable
    @Override
    public CompositeFBTypeDeclaration findCompositeFBTypeDeclaration(@NotNull Identifier identifier) {
        return myRepository.getAdapter(findNode(identifier), CompositeFBTypeDeclaration.class);
    }

    @Nullable
    @Override
    public BasicFBTypeDeclaration findBasicFBTypeDeclaration(@NotNull Identifier identifier) {
        return myRepository.getAdapter(findNode(identifier), BasicFBTypeDeclaration.class);
    }

    @Nullable
    @Override
    public ServiceInterfaceFBTypeDeclaration findServiceFBTypeDeclaration(@NotNull Identifier identifier) {
        return myRepository.getAdapter(findNode(identifier), ServiceInterfaceFBTypeDeclaration.class);
    }

    @Nullable
    @Override
    public AdapterTypeDeclaration findAdapterTypeDeclaration(@NotNull Identifier identifier) {
        return myRepository.getAdapter(findNode(identifier), AdapterTypeDeclaration.class);
    }

    @Nullable
    @Override
    public SubapplicationTypeDeclaration findSubapplicationTypeDeclaration(@NotNull Identifier identifier) {
        return myRepository.getAdapter(findNode(identifier), SubapplicationTypeDeclaration.class);
    }

    @Nullable
    @Override
    public SystemDeclaration findSystemDeclaration(@NotNull Identifier identifier) {
        return myRepository.getAdapter(findNode(identifier), SystemDeclaration.class);
    }

    @Nullable
    @Override
    public DeviceDeclaration findDeviceDeclaration(@NotNull Identifier identifier) {
        return myRepository.getAdapter(findNode(identifier), DeviceDeclaration.class);
    }

    @Nullable
    @Override
    public ResourceDeclaration findResourceDeclaration(@NotNull Identifier identifier) {
        return myRepository.getAdapter(findNode(identifier), ResourceDeclaration.class);
    }

    @Nullable
    @Override
    public FunctionBlockDeclaration findFunctionBlockDeclaration(@NotNull Identifier identifier) {
        return myRepository.getAdapter(findNode(identifier), FunctionBlockDeclaration.class);
    }

    @Override
    public @NotNull
    List<FBTypeDeclaration> findAllFBTypeDeclarations() {
        return StreamSupport.stream(myRepository.getMPSRepository().getModules().spliterator(), false)
                .flatMap(it -> StreamSupport.stream(it.getModels().spliterator(), false))
                .filter(it -> myModel == null || new ModelImports(myModel).getImportedModels().contains(it.getReference()))
                .flatMap(it -> StreamSupport.stream(it.getRootNodes().spliterator(), false))
                .map(it -> myRepository.getAdapter(it, FBTypeDeclaration.class))
                .filter(Objects::nonNull)
                .collect(Collectors.toList());
    }

    private SNode findNode(Identifier identifier) {
        SNode node = getNodeReference(identifier).resolve(myRepository.getMPSRepository());
        if (node == null) {
            return null;
        }
        if (myModel == null) {
            return node;
        }
        SModelReference reference = Objects.requireNonNull(node.getModel()).getReference();
        if (new ModelImports(myModel).getImportedModels().contains(reference)) {
            return node;
        }
        return null;
    }

    private SNodeReference getNodeReference(@NotNull Identifier identifier) {
        if (identifier instanceof PlatformIdentifier) {
            return ((PlatformIdentifier) identifier).getReference();
        }
        throw new IllegalArgumentException("Only PlatformIdentifier is supported. Got " + identifier.getClass());
    }
}
