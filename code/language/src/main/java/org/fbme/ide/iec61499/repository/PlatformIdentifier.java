package org.fbme.ide.iec61499.repository;

import org.fbme.lib.common.Identifier;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNodeReference;

public class PlatformIdentifier implements Identifier {

  @NotNull
  private final SNodeReference myReference;

  public PlatformIdentifier(@NotNull SNodeReference reference) {
    this.myReference = reference;
  }

  @NotNull
  public SNodeReference getReference() {
    return myReference;
  }

  @Override
  public String toString() {
    return "" + myReference;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    return o instanceof PlatformIdentifier && myReference.equals(((PlatformIdentifier) o).myReference);
  }

  @Override
  public int hashCode() {
    int result = 0;
    result = 31 * result + myReference.hashCode();
    return result;
  }
}
