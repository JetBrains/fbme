package org.fbme.smvDebugger.panel.condition;

public abstract class BinaryExpression implements Expression {
  protected final Expression first;
  protected final Expression second;

  public BinaryExpression(final Expression first, final Expression second) {
    this.first = first;
    this.second = second;
  }

  public Expression getFirst() {
    return first;
  }

  public Expression getSecond() {
    return second;
  }

  @Override
  public String toString() {
    return "(" + first + " " + getSymbol() + " " + second + ")";
  }

  protected abstract String getSymbol();
}
