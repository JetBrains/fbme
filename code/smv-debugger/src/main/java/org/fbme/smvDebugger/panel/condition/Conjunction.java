package org.fbme.smvDebugger.panel.condition;

import java.util.Map;

public class Conjunction extends BinaryExpression {
  public Conjunction(final Expression first, final Expression second) {
    super(first, second);
  }

  @Override
  public boolean evaluate(final Map<String, String> itemSimpleNameToValueMap) {
    return first.evaluate(itemSimpleNameToValueMap) && second.evaluate(itemSimpleNameToValueMap);
  }

  @Override
  public String getSymbol() {
    return "&&";
  }
}
