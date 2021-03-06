package org.fbme.smvDebugger.model;

import java.util.Objects;
import java.util.List;
import java.util.ArrayList;
import java.util.Set;
import java.util.HashSet;
import java.util.Map;
import java.util.HashMap;

public class Counterexample {
  public static final String T_GLOBAL = "TGlobal";

  private final SystemItem[] items;
  private final String[] steps;
  private final String[][] values;
  private final String[] timeValues;

  public Counterexample(final SystemItem[] items, final String[] steps, final String[][] values, final String[] timeValues) {
    this.items = items;
    this.steps = steps;
    this.values = values;
    this.timeValues = timeValues;
  }

  public SystemItem[] getItems() {
    return items;
  }

  public String[] getItemSimpleNames() {
    final String[] itemSimpleNames = new String[items.length];
    for (int i = 0; i < itemSimpleNames.length; i++) {
      itemSimpleNames[i] = items[i].getFullName();
    }
    return itemSimpleNames;
  }

  public String[] getSteps() {
    return steps;
  }

  public String[][] getValues() {
    return values;
  }

  public String[] getTimeValues() {
    return timeValues;
  }

  public int length() {
    return steps.length;
  }

  public SystemItem getItem(final String itemSimpleName) {
    for (final SystemItem item : getItems()) {
      if (Objects.equals(item.getSimpleName(), itemSimpleName)) {
        return item;
      }
    }
    return null;
  }

  public SystemItemValue getItemValue(final int itemIndex, final int stepIndex) {
    return new SystemItemValue(items[itemIndex], values[itemIndex][stepIndex]);
  }

  public SystemItemValue getItemValue(final String itemSimpleName, final int stepIndex) {
    for (int itemIndex = 0; itemIndex < items.length; itemIndex++) {
      final SystemItem item = items[itemIndex];
      if (Objects.equals(item.getSimpleName(), itemSimpleName)) {
        return new SystemItemValue(item, values[itemIndex][stepIndex]);
      }
    }
    return null;
  }

  public List<SystemItemValue> getItemValues(final int stepIndex) {
    final List<SystemItemValue> itemValues = new ArrayList<SystemItemValue>();
    for (int itemIndex = 0; itemIndex < items.length; itemIndex++) {
      final SystemItem item = items[itemIndex];
      itemValues.add(new SystemItemValue(item, values[itemIndex][stepIndex]));
    }
    return itemValues;
  }

  public List<SystemItemValue> getItemValues(final List<String> itemSimpleNames, final int stepIndex) {
    final Set<String> itemSimpleNameSet = new HashSet<String>(itemSimpleNames);
    final List<SystemItemValue> itemValues = new ArrayList<SystemItemValue>();
    for (int itemIndex = 0; itemIndex < items.length; itemIndex++) {
      final SystemItem item = items[itemIndex];
      if (itemSimpleNameSet.contains(item.getSimpleName())) {
        itemValues.add(new SystemItemValue(item, values[itemIndex][stepIndex]));
      }
    }
    return itemValues;
  }

  public Map<String, String> getItemSimpleNameToValueMap(final int stepIndex) {
    final Map<String, String> itemToValueMap = new HashMap<String, String>();
    for (int itemIndex = 0; itemIndex < items.length; itemIndex++) {
      itemToValueMap.put(items[itemIndex].getSimpleName(), values[itemIndex][stepIndex]);
    }
    return itemToValueMap;
  }

  public int indexOf(final String step) {
    for (int i = 0; i < steps.length; i++) {
      if (Objects.equals(steps[i], step)) {
        return i;
      }
    }
    return -1;
  }

  public String timeOf(final int stepIndex) {
    return timeValues[stepIndex];
  }
}
