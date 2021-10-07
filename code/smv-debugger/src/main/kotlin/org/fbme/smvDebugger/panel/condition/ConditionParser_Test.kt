package org.fbme.smvDebugger.panel.condition

import junit.framework.Assert
import junit.framework.TestCase
import java.util.Map
import kotlin.jvm.Throws

class ConditionParser_Test : TestCase() {
    /*package*/
    var conditionParser: ConditionParser? = null

    @Throws(Exception::class)
    fun test_simpleParse() {
        Assert.assertEquals(
            "(functionBlock.VAR == TRUE)",
            conditionParser!!.parse("functionBlock.VAR == TRUE").toString()
        )
    }

    @Throws(Exception::class)
    fun test_complexParse() {
        Assert.assertEquals(
            "((functionBlock.VAR1 == TRUE) && (functionBlock.VAR2 == FALSE))",
            conditionParser!!.parse("functionBlock.VAR1 == TRUE && functionBlock.VAR2 == FALSE").toString()
        )
    }

    @Throws(Exception::class)
    fun test_bracketsParse() {
        Assert.assertEquals(
            "((functionBlock.VAR1 == TRUE) && (functionBlock.VAR2 == FALSE))",
            conditionParser!!.parse("((functionBlock.VAR1 == TRUE) && (functionBlock.VAR2 == FALSE))").toString()
        )
    }

    @Throws(Exception::class)
    fun test_missingRightBracket() {
        try {
            conditionParser!!.parse("(functionBlock.VAR == TRUE")
            Assert.fail()
        } catch (e: ConditionParseException) {
            // expected exception 
        }
    }

    @Throws(Exception::class)
    fun test_invalidExpression() {
        try {
            conditionParser!!.parse("functionBlock.VAR ==")
            Assert.fail()
        } catch (e: ConditionParseException) {
            // expected exception 
        }
    }

    @Throws(Exception::class)
    fun test_simpleEvaluate() {
        Assert.assertTrue(
            conditionParser!!.parse("functionBlock.VAR == TRUE").evaluate(Map.of("functionBlock.VAR", "TRUE"))
        )
    }

    @Throws(Exception::class)
    fun test_complexEvaluate() {
        Assert.assertTrue(
            conditionParser!!.parse("functionBlock.VAR1 == TRUE && functionBlock.VAR2 == FALSE").evaluate(
                Map.of("functionBlock.VAR1", "TRUE", "functionBlock.VAR2", "FALSE")
            )
        )
    }

    public override fun setUp() {
        conditionParser = ConditionParser()
    }
}