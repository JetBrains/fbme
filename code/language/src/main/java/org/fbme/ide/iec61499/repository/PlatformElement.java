package org.fbme.ide.iec61499.repository;

import jetbrains.mps.smodel.CopyUtil;
import org.fbme.lib.common.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

public interface PlatformElement extends Element {

  @NotNull
  SNode getNode();

  @NotNull
  PlatformElementsOwner getOwner();

  @Override
  @NotNull
  default Element copy() {
    return getOwner().getAdapter(CopyUtil.copy(getNode()), getClass());
  }
}
