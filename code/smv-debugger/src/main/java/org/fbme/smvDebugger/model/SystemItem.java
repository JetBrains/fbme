package org.fbme.smvDebugger.model;

import org.fbme.smvDebugger.commons.ArrayUtils;
import java.util.Objects;

public class SystemItem {
  public static final String SIMPLE_NAME_DELIMITER = ".";

  private final String fullName;
  private final String[] fbNames;
  private final String itemName;
  private final String simpleName;
  private final SystemItemType type;

  public SystemItem(final String fullName, final String[] fbNames, final String itemName, final SystemItemType type) {
    this.fullName = fullName;
    this.fbNames = fbNames;
    this.itemName = itemName;
    this.simpleName = String.join(SIMPLE_NAME_DELIMITER, ArrayUtils.concat(fbNames, itemName));
    this.type = type;
  }

  public String getFullName() {
    return fullName;
  }

  public String[] getFbNames() {
    return fbNames;
  }

  public String getFbName() {
    return fbNames[fbNames.length - 1];
  }

  public String getItemName() {
    return itemName;
  }

  public SystemItemType getType() {
    return type;
  }

  public String getSimpleName() {
    return simpleName;
  }

  @Override
  public boolean equals(final Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    final SystemItem item = (SystemItem) o;
    return Objects.equals(fullName, item.fullName);
  }

  @Override
  public int hashCode() {
    return Objects.hash(fullName);
  }

  @Override
  public String toString() {
    return getSimpleName();
  }
}
