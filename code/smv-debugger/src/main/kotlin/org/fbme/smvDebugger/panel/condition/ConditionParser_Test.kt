package org.fbme.smvDebugger.panel.condition

import junit.framework.TestCase
import kotlin.test.assertFailsWith

class ConditionParser_Test : TestCase() {
    lateinit var conditionParser: ConditionParser

    fun test_simpleParse() {
        assertEquals(
            "(functionBlock.VAR == TRUE)",
            conditionParser.parse("functionBlock.VAR == TRUE").toString()
        )
    }

    fun test_complexParse() {
        assertEquals(
            "((functionBlock.VAR1 == TRUE) && (functionBlock.VAR2 == FALSE))",
            conditionParser.parse("functionBlock.VAR1 == TRUE && functionBlock.VAR2 == FALSE").toString()
        )
    }

    fun test_bracketsParse() {
        assertEquals(
            "((functionBlock.VAR1 == TRUE) && (functionBlock.VAR2 == FALSE))",
            conditionParser.parse("((functionBlock.VAR1 == TRUE) && (functionBlock.VAR2 == FALSE))").toString()
        )
    }

    fun test_missingRightBracket() {
        assertFailsWith(ConditionParseException::class) {
            conditionParser.parse("(functionBlock.VAR == TRUE")
        }
    }

    fun test_invalidExpression() {
        assertFailsWith(ConditionParseException::class) {
            conditionParser.parse("functionBlock.VAR ==")
        }
    }

    fun test_simpleEvaluate() {
        assertTrue(
            conditionParser
                .parse("functionBlock.VAR == TRUE")
                .evaluate(mapOf("functionBlock.VAR" to "TRUE"))
        )
    }

    fun test_complexEvaluate() {
        assertTrue(
            conditionParser
                .parse("functionBlock.VAR1 == TRUE && functionBlock.VAR2 == FALSE")
                .evaluate(mapOf("functionBlock.VAR1" to "TRUE", "functionBlock.VAR2" to "FALSE"))
        )
    }

    public override fun setUp() {
        conditionParser = ConditionParser()
    }
}
