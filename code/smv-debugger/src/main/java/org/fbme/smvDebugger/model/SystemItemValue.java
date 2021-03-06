package org.fbme.smvDebugger.model;

import java.util.Objects;

public class SystemItemValue {
  private final SystemItem item;
  private final String value;

  public SystemItemValue(final SystemItem item, final String value) {
    this.item = item;
    this.value = value;
  }

  public SystemItem getItem() {
    return item;
  }

  public String getValue() {
    return value;
  }

  @Override
  public boolean equals(final Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    final SystemItemValue itemValue = (SystemItemValue) o;
    return Objects.equals(item, itemValue.item) && Objects.equals(value, itemValue.value);
  }

  @Override
  public int hashCode() {
    return Objects.hash(item, value);
  }

}
