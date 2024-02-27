package org.fbme.ide.integration.fordiac.lua

import io.mockk.every
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.st.expressions.BinaryOperation.*
import org.fbme.lib.st.expressions.Expression
import org.fbme.lib.st.statements.Statement
import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Test


class ExpressionTest {
    private val block: BasicFBTypeDeclaration = createBasicFBTypeDeclarationMock()

    @Test
    fun `string literal`() {
        val varValue = "string literal"
        checkExpression(
            expr = createStringLiteralMock(varValue),
            expectedVarValue = varValue,
            valueNeedToEscape = true
        )
    }

    @Test
    fun `positive dec int literal`() {
        val varValue = Int.MAX_VALUE
        checkExpression(expr = createDecIntLiteralMock(varValue), expectedVarValue = varValue)
    }

    @Test
    fun `negative dec int literal`() {
        val varValue = Int.MIN_VALUE
        checkExpression(expr = createDecIntLiteralMock(varValue), expectedVarValue = varValue)
    }

    @Test
    fun `positive binary bool literal`() {
        val varValue = true
        checkExpression(expr = createBinaryBoolLiteralMock(varValue), expectedVarValue = varValue)
    }

    @Test
    fun `negative binary bool literal`() {
        val varValue = false
        checkExpression(expr = createBinaryBoolLiteralMock(varValue), expectedVarValue = varValue)
    }

    @Test
    fun `positive bool literal`() {
        val varValue = true
        checkExpression(expr = createBoolLiteralMock(varValue), expectedVarValue = varValue)
    }

    @Test
    fun `negative bool literal`() {
        val varValue = false
        checkExpression(expr = createBoolLiteralMock(varValue), expectedVarValue = varValue)
    }

    @Test
    fun `positive binary int literal`() {
        val varValue = 0b0101
        checkExpression(expr = createBinaryIntLiteralMock(varValue), expectedVarValue = varValue)
    }

    @Test
    fun `negative binary int literal`() {
        val varValue = -0b0101
        checkExpression(expr = createBinaryIntLiteralMock(varValue), expectedVarValue = varValue)
    }

    @Test
    fun `positive octal int literal`() {
        val varValue = Int.MAX_VALUE
        checkExpression(expr = createOctIntLiteralMock(varValue), expectedVarValue = varValue)
    }

    @Test
    fun `negative octal int literal`() {
        val varValue = Int.MIN_VALUE
        checkExpression(expr = createOctIntLiteralMock(varValue), expectedVarValue = varValue)
    }

    @Test
    fun `positive hex int literal`() {
        val varValue = 0x0101
        checkExpression(expr = createHexIntLiteralMock(varValue), expectedVarValue = varValue)
    }

    @Test
    fun `negative hex int literal`() {
        val varValue = -0x0101
        checkExpression(expr = createHexIntLiteralMock(varValue), expectedVarValue = varValue)
    }

    @Test
    fun `wstring literal`() {
        val varValue = "w string"
        checkExpression(
            expr = createWstringLiteralMock(varValue),
            expectedVarValue = varValue,
            valueNeedToEscape = true
        )
    }

    @Test
    fun `time literal`() {
        val varValue = "T#14ms"
        checkExpression(expr = createTimeLiteralMock(varValue), expectedVarValue = varValue)
    }

    @Test
    fun `positive real literal`() {
        val varValue = "123.232"
        checkExpression(expr = createRealLiteralMock(varValue), expectedVarValue = varValue)
    }

    @Test
    fun `negative real literal`() {
        val varValue = "-123.231"
        checkExpression(expr = createRealLiteralMock(varValue), expectedVarValue = varValue)
    }

    @Test
    fun `unary not`() {
        val innerExpr = createBoolLiteralMock(true)
        checkExpression(expr = createNotUnaryExpressionMock(innerExpr), expectedVarValue = "not (true)")
    }

    @Test
    fun `unary neg`() {
        val innerExpr = createDecIntLiteralMock(5)
        checkExpression(expr = createNegUnaryExpressionMock(innerExpr), expectedVarValue = "-(5)")
    }

    @Test
    fun `binary plus`() {
        val innerExpr = createDecIntLiteralMock(1)
        checkExpression(expr = createBinaryExpression(innerExpr, innerExpr, ADD), expectedVarValue = "(1 + 1)")
    }

    @Test
    fun `binary ampersand`() {
        val innerExpr = createDecIntLiteralMock(1)
        checkExpression(expr = createBinaryExpression(innerExpr, innerExpr, AMP), expectedVarValue = "(1 & 1)")
    }

    @Test
    fun `binary and`() {
        val leftExpr = createBoolLiteralMock(true)
        val rightExpr = createBoolLiteralMock(false)

        checkExpression(
            expr = createBinaryExpression(leftExpr, rightExpr, AND),
            expectedVarValue = "(true and false)"
        )
    }

    @Test
    fun `binary div`() {
        val innerExpr = createDecIntLiteralMock(5)
        checkExpression(expr = createBinaryExpression(innerExpr, innerExpr, DIV), expectedVarValue = "(5 / 5)")
    }

    @Test
    fun `binary equal`() {
        val innerExpr = createDecIntLiteralMock(5)
        checkExpression(expr = createBinaryExpression(innerExpr, innerExpr, EQ), expectedVarValue = "(5 == 5)")
    }

    @Test
    fun `binary greater than`() {
        val innerExpr = createDecIntLiteralMock(5)
        checkExpression(expr = createBinaryExpression(innerExpr, innerExpr, GT), expectedVarValue = "(5 > 5)")
    }

    @Test
    fun `binary greater than or equal`() {
        val innerExpr = createDecIntLiteralMock(5)
        checkExpression(expr = createBinaryExpression(innerExpr, innerExpr, GTE), expectedVarValue = "(5 >= 5)")
    }

    @Test
    fun `binary less than`() {
        val innerExpr = createDecIntLiteralMock(5)
        checkExpression(expr = createBinaryExpression(innerExpr, innerExpr, LT), expectedVarValue = "(5 < 5)")
    }

    @Test
    fun `binary less than or equal`() {
        val innerExpr = createDecIntLiteralMock(5)
        checkExpression(expr = createBinaryExpression(innerExpr, innerExpr, LTE), expectedVarValue = "(5 <= 5)")
    }

    @Test
    fun `binary mod`() {
        val innerExpr = createDecIntLiteralMock(5)
        checkExpression(expr = createBinaryExpression(innerExpr, innerExpr, MOD), expectedVarValue = "(5 % 5)")
    }

    @Test
    fun `binary multiply`() {
        val innerExpr = createDecIntLiteralMock(5)
        checkExpression(expr = createBinaryExpression(innerExpr, innerExpr, MUL), expectedVarValue = "(5 * 5)")
    }

    @Test
    fun `binary not equal`() {
        val innerExpr = createDecIntLiteralMock(5)
        checkExpression(expr = createBinaryExpression(innerExpr, innerExpr, NEQ), expectedVarValue = "(5 ~= 5)")
    }

    @Test
    fun `binary or`() {
        val leftExpr = createBoolLiteralMock(false)
        val rightExpr = createBoolLiteralMock(true)
        checkExpression(expr = createBinaryExpression(leftExpr, rightExpr, OR), expectedVarValue = "(false or true)")
    }

    @Test
    fun `binary pow`() {
        val leftExpr = createDecIntLiteralMock(5)
        val rightExpr = createDecIntLiteralMock(2)
        checkExpression(expr = createBinaryExpression(leftExpr, rightExpr, POW), expectedVarValue = "(5 ^ 2)")
    }

    @Test
    fun `binary substract`() {
        val leftExpr = createDecIntLiteralMock(5)
        val rightExpr = createDecIntLiteralMock(2)
        checkExpression(expr = createBinaryExpression(leftExpr, rightExpr, SUB), expectedVarValue = "(5 - 2)")
    }

    @Test
    fun `binary xor`() {
        val leftExpr = createBoolLiteralMock(false)
        val rightExpr = createBoolLiteralMock(true)
        checkExpression(expr = createBinaryExpression(leftExpr, rightExpr, XOR), expectedVarValue = "(false ~ true)")
    }

    @Test
    fun `unary neg complex`() {
        val const5 = createDecIntLiteralMock(5)
        val const2 = createDecIntLiteralMock(2)
        val const1 = createDecIntLiteralMock(1)

        val mul = createBinaryExpression(const5, const2, MUL)
        val sum = createBinaryExpression(mul, const1, ADD)

        checkExpression(expr = createNegUnaryExpressionMock(sum), expectedVarValue = "-(((5 * 2) + 1))")
    }

    @Test
    fun `unary not complex`() {
        val varRef = createVariableReferenceMock("v2")

        val falseLiteral = createBoolLiteralMock(false)
        val trueLiteral = createBoolLiteralMock(true)

        val andOp = createBinaryExpression(falseLiteral, trueLiteral, AND)
        val orOp = createBinaryExpression(varRef, andOp, OR)

        checkExpression(
            expr = createNotUnaryExpressionMock(orOp),
            expectedVarValue = "not ((VAR_v2 or (false and true)))"
        )
    }

    // todo: array variable check

    // todo: adapter vars check

    // todo: more complex tests

    private fun checkExpression(expr: Expression, expectedVarValue: Any, valueNeedToEscape: Boolean = false) {
        val varName = "var1"
        val assignmentStatement = createAssignmentStatementMock(varName, expr)
        val statements: MutableList<Statement> = mutableListOf(assignmentStatement)
        val alg = createAlgorithmMock(statements = statements)

        every { block.algorithms } returns mutableListOf(alg)

        val actual = BasicFBTypeLuaTranslator.translate(block).split("\n").filter { it.contains(varName) }

        require(actual.size == 1) { "Program must have exact one occurrence of varName: '$varName'" }

        val expected =
            if (valueNeedToEscape) "VAR_$varName = \"$expectedVarValue\"" else "VAR_$varName = $expectedVarValue"

        assertEquals(expected, actual[0].trim())
    }
}
