package org.fbme.ide.iec61499.repository;

import org.fbme.lib.common.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

public interface PlatformElement extends Element {

  @NotNull
  SNode getNode();

  @NotNull
  PlatformElementsOwner getOwner();
}
