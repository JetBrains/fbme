package org.fbme.smvDebugger.panel.condition;

import java.util.Map;

public class Negation implements Expression {
  private final Expression expression;

  public Negation(final Expression expression) {
    this.expression = expression;
  }

  public Expression getExpression() {
    return expression;
  }

  @Override
  public boolean evaluate(final Map<String, String> itemSimpleNameToValueMap) {
    return !expression.evaluate(itemSimpleNameToValueMap);
  }

  @Override
  public String toString() {
    return "!(" + expression + ")";
  }
}
