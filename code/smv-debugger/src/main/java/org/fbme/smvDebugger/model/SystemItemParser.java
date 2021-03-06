package org.fbme.smvDebugger.model;

import java.util.Objects;
import org.fbme.smvDebugger.commons.ArrayUtils;

public class SystemItemParser {
  private static final String FULL_NAME_DELIMITER = "[.]";
  private static final String EVENT_PORT_DELIMITER = "_";
  private static final String TIME_EVENT_PORT_VALUE = "value";
  private static final String EVENT_PORT_KEY_FEATURE = "event";
  private static final String ECC_KEY_FEATURE = "Q_smv";
  private static final String ECC_ITEM_NAME = "ECC";

  public SystemItem parse(final String fullName) {
    final String[] nameParts = fullName.split(FULL_NAME_DELIMITER);

    final SystemItemType type;
    if (isEventPort(nameParts)) {
      type = SystemItemType.EVENT_PORT;
    } else if (isDataPort(nameParts)) {
      type = SystemItemType.DATA_PORT;
    } else if (isECC(nameParts)) {
      type = SystemItemType.ECC;
    } else {
      return null;
    }

    final String[] fbNames = getFbNames(nameParts);
    if (fbNames.length == 0) {
      return null;
    }

    final String itemName = getItemName(nameParts, type);
    return new SystemItem(fullName, fbNames, itemName, type);
  }

  private boolean isEventPort(final String[] nameParts) {
    return isPort(nameParts) && nameParts[nameParts.length - 1].contains(EVENT_PORT_KEY_FEATURE);
  }

  private boolean isDataPort(final String[] nameParts) {
    return isPort(nameParts) && !((isEventPort(nameParts)));
  }

  private boolean isECC(final String[] nameParts) {
    return Objects.equals(nameParts[nameParts.length - 1], ECC_KEY_FEATURE);
  }

  private boolean isPort(final String[] nameParts) {
    return nameParts.length > 1 && !(isECC(nameParts));
  }

  private String[] getFbNames(final String[] nameParts) {
    return ArrayUtils.subarray(nameParts, 1, nameParts.length - 1);
  }

  private String getItemName(final String[] nameParts, final SystemItemType type) {
    switch (type) {
      case EVENT_PORT:
        return nameParts[nameParts.length - 1].split(EVENT_PORT_DELIMITER)[1];
      case DATA_PORT:
        return nameParts[nameParts.length - 1];
      case ECC:
        return ECC_ITEM_NAME;
      default:
        return null;
    }
  }
}
