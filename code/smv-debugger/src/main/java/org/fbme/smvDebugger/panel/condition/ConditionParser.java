package org.fbme.smvDebugger.panel.condition;

import java.util.Set;

public class ConditionParser {
  private static final Set<Character> SPECIAL_SYMBOLS = Set.of('.', '_');
  private String str;
  private int index;

  public Expression parse(final String str) {
    this.str = cleanWhitespaces(str);
    this.index = 0;

    final Expression result = disjunction();
    if (index != this.str.length()) {
      throw new ConditionParseException(String.format("Failed to parse '%s'", str.substring(index)));
    }

    return result;
  }

  private String cleanWhitespaces(final String str) {
    final StringBuilder builder = new StringBuilder();
    for (int i = 0; i < str.length(); i++) {
      final char ch = str.charAt(i);
      if (!(Character.isWhitespace(ch))) {
        builder.append(ch);
      }
    }
    return builder.toString();
  }

  private Expression disjunction() {
    Expression result = conjunction();
    while (index < str.length()) {
      if (compare("||")) {
        result = new Disjunction(result, conjunction());
      } else {
        break;
      }
    }
    return result;
  }

  private Expression conjunction() {
    Expression result = equalityOrInequality();
    while (index < str.length()) {
      if (compare("&&")) {
        result = new Conjunction(result, equalityOrInequality());
      } else {
        break;
      }
    }
    return result;
  }

  private Expression equalityOrInequality() {
    Expression result = negation();
    while (index < str.length()) {
      if (compare("==")) {
        result = new Equality(result, negation());
      } else if (compare("!=")) {
        result = new Inequality(result, negation());
      } else {
        break;
      }
    }
    return result;
  }

  private Expression negation() {
    if (compare("!")) {
      return new Negation(negation());
    }
    return brackets();
  }

  private Expression brackets() {
    if (compare("(")) {
      Expression result = disjunction();
      if (!(compare(")"))) {
        throw new ConditionParseException(String.format("Expected ')' at position %d", index));
      }
      return result;
    }
    return argument();
  }

  private Expression argument() {
    final StringBuilder builder = new StringBuilder();
    while (index < str.length() && (Character.isLetterOrDigit(str.charAt(index)) || SPECIAL_SYMBOLS.contains(str.charAt(index)))) {
      builder.append(str.charAt(index));
      index++;
    }
    final String result = builder.toString();
    if (result.isEmpty()) {
      throw new ConditionParseException(String.format("Expected argument at position %d", index));
    }
    return new Argument(builder.toString());
  }

  private boolean compare(final String op) {
    if (op.length() == 1 && index < str.length() && str.charAt(index) == op.charAt(0)) {
      index++;
      return true;
    } else if (index + 1 < str.length() && str.charAt(index) == op.charAt(0) && str.charAt(index + 1) == op.charAt(1)) {
      index += 2;
      return true;
    }
    return false;
  }
}
