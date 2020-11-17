package org.fbme.smvDebugger.panel.condition;

import java.util.Map;
import java.util.Objects;

public class Inequality extends AbstractEquality {
  public Inequality(final Expression firsr, final Expression second) {
    super(firsr, second);
  }

  @Override
  public boolean evaluate(final Map<String, String> itemSimpleNameToValueMap) {
    if (!(first instanceof Argument)) {
      return first.evaluate(itemSimpleNameToValueMap) != second.evaluate(itemSimpleNameToValueMap);
    }
    final Argument name = (Argument) first;
    final Argument value = (Argument) second;
    return !Objects.equals(itemSimpleNameToValueMap.get(name.getContent()), value.getContent());
  }

  @Override
  public String getSymbol() {
    return "!=";
  }
}
