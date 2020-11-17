package org.fbme.smvDebugger.panel.condition;

import java.util.Map;

public interface Expression {
  boolean evaluate(Map<String, String> itemSimpleNameToValueMap);
}
