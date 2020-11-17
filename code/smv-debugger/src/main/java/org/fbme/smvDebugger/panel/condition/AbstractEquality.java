package org.fbme.smvDebugger.panel.condition;

public abstract class AbstractEquality extends BinaryExpression {
  public AbstractEquality(final Expression first, final Expression second) {
    super(first, second);
    if (first instanceof Argument && !(second instanceof Argument)) {
      throw new ImpossibleComparsionException(first.toString(), second.toString());
    }
    if (!(first instanceof Argument) && second instanceof Argument) {
      throw new ImpossibleComparsionException(second.toString(), first.toString());
    }
  }
}
