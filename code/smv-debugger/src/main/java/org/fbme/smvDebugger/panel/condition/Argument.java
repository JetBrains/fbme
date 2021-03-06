package org.fbme.smvDebugger.panel.condition;

import java.util.Map;

public class Argument implements Expression {
  private final String content;

  public Argument(final String content) {
    this.content = content;
  }

  public String getContent() {
    return content;
  }

  @Override
  public boolean evaluate(final Map<String, String> itemSimpleNameToValueMap) {
    return true;
  }

  @Override
  public String toString() {
    return content;
  }
}
