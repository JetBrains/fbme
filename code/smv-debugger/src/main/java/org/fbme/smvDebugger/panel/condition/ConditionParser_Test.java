package org.fbme.smvDebugger.panel.condition;

import junit.framework.TestCase;
import junit.framework.Assert;
import java.util.Map;

public class ConditionParser_Test extends TestCase {
  /*package*/ ConditionParser conditionParser;
  public void test_simpleParse() throws Exception {
    Assert.assertEquals("(functionBlock.VAR == TRUE)", conditionParser.parse("functionBlock.VAR == TRUE").toString());
  }
  public void test_complexParse() throws Exception {
    Assert.assertEquals("((functionBlock.VAR1 == TRUE) && (functionBlock.VAR2 == FALSE))", conditionParser.parse("functionBlock.VAR1 == TRUE && functionBlock.VAR2 == FALSE").toString());
  }
  public void test_bracketsParse() throws Exception {
    Assert.assertEquals("((functionBlock.VAR1 == TRUE) && (functionBlock.VAR2 == FALSE))", conditionParser.parse("((functionBlock.VAR1 == TRUE) && (functionBlock.VAR2 == FALSE))").toString());
  }
  public void test_missingRightBracket() throws Exception {
    try {
      conditionParser.parse("(functionBlock.VAR == TRUE");
      Assert.fail();
    } catch (ConditionParseException e) {
      // expected exception 
    }
  }
  public void test_invalidExpression() throws Exception {
    try {
      conditionParser.parse("functionBlock.VAR ==");
      Assert.fail();
    } catch (ConditionParseException e) {
      // expected exception 
    }
  }
  public void test_simpleEvaluate() throws Exception {
    Assert.assertTrue(conditionParser.parse("functionBlock.VAR == TRUE").evaluate(Map.of("functionBlock.VAR", "TRUE")));
  }
  public void test_complexEvaluate() throws Exception {
    Assert.assertTrue(conditionParser.parse("functionBlock.VAR1 == TRUE && functionBlock.VAR2 == FALSE").evaluate(Map.of("functionBlock.VAR1", "TRUE", "functionBlock.VAR2", "FALSE")));
  }
  public void setUp() {
    conditionParser = new ConditionParser();
  }
}
