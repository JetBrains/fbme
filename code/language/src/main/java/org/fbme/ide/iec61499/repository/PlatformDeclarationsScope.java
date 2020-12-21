package org.fbme.ide.iec61499.repository;


import org.fbme.lib.iec61499.DeclarationsScope;
import org.jetbrains.annotations.Nullable;
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import org.jetbrains.annotations.NotNull;
import org.fbme.lib.common.Identifier;
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration;
import org.fbme.lib.iec61499.declarations.ServiceInterfaceFBTypeDeclaration;
import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration;
import org.fbme.lib.iec61499.declarations.SubapplicationTypeDeclaration;
import org.fbme.lib.iec61499.declarations.SystemDeclaration;
import org.fbme.lib.iec61499.declarations.DeviceDeclaration;
import org.fbme.lib.iec61499.declarations.ResourceDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

class PlatformDeclarationsScope implements DeclarationsScope {

  private final PlatformRepository myRepository;

  PlatformDeclarationsScope(PlatformRepository repository) {
    myRepository = repository;
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

  private SNode findNode(Identifier identifier) {
    return getNodeReference(identifier).resolve(myRepository.getMPSRepository());
  }

  private SNodeReference getNodeReference(@NotNull Identifier identifier) {
    if (identifier instanceof PlatformIdentifier) {
      return ((PlatformIdentifier) identifier).getReference();
    }
    throw new IllegalArgumentException("Only PlatformIdentifier is supported. Got " + identifier.getClass());
  }
}
