package org.fbme.ide.integration.fordiac.lua

import io.mockk.every
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.st.expressions.BinaryOperation
import org.fbme.lib.st.expressions.BinaryOperation.*
import org.fbme.lib.st.statements.Statement
import org.junit.jupiter.api.Test

class StatementTest {
    private val block: BasicFBTypeDeclaration = createBasicFBTypeDeclarationMock()

    @Test
    fun `empty statement`() {
        val alg = createAlgorithmMock(
            name = "A1",
            statements = mutableListOf(createEmptyStatement())
        )
        every { block.algorithms } returns mutableListOf(alg)

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .split("\n")
            .firstOccurrenceSublist("A1", "end")

        val expected = listOf(
            "local function alg_A1(fb)",
            "  ",
            "end",
        )

        verifyResults(expected, actual)
    }

    @Test
    fun `return statement`() {
        val alg = createAlgorithmMock(
            name = "A1",
            statements = mutableListOf(createReturnStatement())
        )
        every { block.algorithms } returns mutableListOf(alg)

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .firstOccurrenceSublist("A1", "end")

        val expected = listOf(
            "local function alg_A1(fb)",
            "  return",
            "end",
        )

        verifyResults(expected, actual)
    }

    @Test
    fun `assignment statement`() {
        val expr = createBinaryExpression(
            createDecIntLiteralMock(4),
            createDecIntLiteralMock(5),
            ADD
        )

        val varName = "QI1"
        val statement = createAssignmentStatementMock(varName, expr)
        val alg = createAlgorithmMock(statements = mutableListOf(statement))
        every { block.algorithms } returns mutableListOf(alg)

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .firstOccurrenceSublist(varName, varName)

        val expected = listOf(
            "  VAR_QI1 = (4 + 5)",
        )

        verifyResults(expected, actual)
    }

    @Test
    fun `if statement with empty clauses`() {
        val innerExpr = createDecIntLiteralMock(5)
        val condition = createBinaryExpression(innerExpr, innerExpr, BinaryOperation.GT)
        val statement = createIfStatementMock(condition)
        val alg = createAlgorithmMock(statements = mutableListOf(statement))
        every { block.algorithms } returns mutableListOf(alg)

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .firstOccurrenceSublist("if", "end")

        val expected = listOf(
            "  if (5 > 5) then",
            "  else",
            "  end",
        )

        verifyResults(expected, actual)
    }

    @Test
    fun `if statement`() {
        val condition = let {
            val expr = createDecIntLiteralMock(5)
            createBinaryExpression(expr, expr, BinaryOperation.GT)
        }

        val thenClause: MutableList<Statement> = let {
            val expr1 = createBoolLiteralMock(true)
            val expr2 = createNotUnaryExpressionMock(expr1)
            mutableListOf(
                createAssignmentStatementMock("v1", expr1),
                createAssignmentStatementMock("v2", expr2)
            )
        }

        val elseIfClause = let {
            val conditionExpr = createBoolLiteralMock(false)
            val statements = mutableListOf(
                createEmptyStatement(),
                createExitStatement()
            )
            createElseIfClause(conditionExpr, statements)
        }

        val elseIfClause2 = let {
            val expr = createBoolLiteralMock(true)
            val statements = mutableListOf(
                createAssignmentStatementMock("ty3", expr),
                createReturnStatement()
            )
            createElseIfClause(expr, statements)
        }

        val elseClause = listOf(createReturnStatement())

        val statement = createIfStatementMock(
            condition = condition,
            thenClause = thenClause,
            elseIfClauses = mutableListOf(elseIfClause, elseIfClause2),
            elseClause = elseClause
        )
        val alg = createAlgorithmMock(statements = mutableListOf(statement))
        every { block.algorithms } returns mutableListOf(alg)

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .firstOccurrenceSublist("if", "end")

        val expected = listOf(
            "  if (5 > 5) then",
            "    VAR_v1 = true",
            "    VAR_v2 = not (true)",
            "  elseif false then",
            "    break",
            "  elseif true then",
            "    VAR_ty3 = true",
            "    return",
            "  else",
            "    return",
            "  end",
        )

        verifyResults(expected, actual)
    }

    @Test
    fun `nested if statement`() {
        val condition = let {
            val expr = createDecIntLiteralMock(5)
            createBinaryExpression(expr, expr, BinaryOperation.GT)
        }

        val thenClause: MutableList<Statement> = let {
            val expr1 = createBoolLiteralMock(true)
            val expr2 = createNotUnaryExpressionMock(expr1)
            val nestedBody = createAssignmentStatementMock("nested", expr1)
            val nestedIfStatement = createIfStatementMock(
                condition = condition,
                thenClause = mutableListOf(nestedBody),
                elseClause = listOf(nestedBody)
            )

            mutableListOf(
                createAssignmentStatementMock("v1", expr1),
                createAssignmentStatementMock("v2", expr2),
                nestedIfStatement
            )
        }

        val elseIfClause = let {
            val conditionExpr = createBoolLiteralMock(false)
            val statements = mutableListOf(
                createEmptyStatement(),
                createExitStatement()
            )
            createElseIfClause(conditionExpr, statements)
        }

        val elseIfClause2 = let {
            val expr = createBoolLiteralMock(true)
            val statements = mutableListOf(
                createAssignmentStatementMock("ty3", expr),
                createReturnStatement()
            )
            createElseIfClause(expr, statements)
        }

        val elseClause = listOf(createReturnStatement())

        val statement = createIfStatementMock(
            condition = condition,
            thenClause = thenClause,
            elseIfClauses = mutableListOf(elseIfClause, elseIfClause2),
            elseClause = elseClause
        )
        val alg = createAlgorithmMock(statements = mutableListOf(statement))
        every { block.algorithms } returns mutableListOf(alg)

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .occurrenceSublist("if", "end", occurrenceNumTo = 2)

        val expected = listOf(
            "  if (5 > 5) then",
            "    VAR_v1 = true",
            "    VAR_v2 = not (true)",
            "    if (5 > 5) then",
            "      VAR_nested = true",
            "    else",
            "      VAR_nested = true",
            "    end",
            "  elseif false then",
            "    break",
            "  elseif true then",
            "    VAR_ty3 = true",
            "    return",
            "  else",
            "    return",
            "  end",
        )

        verifyResults(expected, actual)
    }

    @Test
    fun `for statement`() {
        val controlVar = let {
            val beginExpr = createDecIntLiteralMock(7)
            val iVar = createVariableReferenceMock("i")
            val endExpr = createDecIntLiteralMock(10)
            val stepExpr = createBinaryExpression(
                leftExpr = iVar,
                rightExpr = createDecIntLiteralMock(1),
                opType = ADD
            )
            createControlVariableDeclarationMock(name = "i", beginExpr, endExpr, stepExpr)
        }

        val statements = mutableListOf(
            createAssignmentStatementMock("p", createBoolLiteralMock(false)),
            createExitStatement()
        )

        val forStatement = createForStatementMock(controlVar, statements)
        val alg = createAlgorithmMock(statements = mutableListOf(forStatement))
        every { block.algorithms } returns mutableListOf(alg)

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .firstOccurrenceSublist("for", "end")

        val expected = listOf(
            "  for VAR_i = 7, 10, (VAR_i + 1) do",
            "    VAR_p = false",
            "    break",
            "  end"
        )

        verifyResults(expected, actual)
    }

    @Test
    fun `case statement`() {
        val caseElements = let {
            val statements1: MutableList<Statement> = mutableListOf(
                createReturnStatement()
            )
            val statements2: MutableList<Statement> = mutableListOf(
                createExitStatement()
            )
            val caseElement1 = createCaseElementMock(createBoolLiteralMock(true), statements1, 0)
            val caseElement2 = createCaseElementMock(createBoolLiteralMock(false), statements2, 1)
            mutableListOf(caseElement1, caseElement2)
        }

        val elseStatements = listOf(
            createAssignmentStatementMock("p", createBoolLiteralMock(false)),
            createExitStatement()
        )

        val caseStatement = createCaseStatementMock(
            expression = createBoolLiteralMock(true),
            cases = caseElements,
            elseCase = elseStatements
        )

        val alg = createAlgorithmMock(statements = mutableListOf(caseStatement))
        every { block.algorithms } returns mutableListOf(alg)

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .occurrenceSublist("case", "case", occurrenceNumTo = 2)

        val expected = listOf(
            "  local function case(val)",
            "    if val == true then",
            "      return",
            "    elseif val == false then",
            "      break",
            "    else",
            "      VAR_p = false",
            "      break",
            "    end",
            "  end",
            "  case(true)"
        )

        verifyResults(expected, actual)
    }

    @Test
    fun `repeat statement`() {
        val condition = createBinaryExpression(
            leftExpr = createVariableReferenceMock("ind"),
            rightExpr = createDecIntLiteralMock(10),
            opType = GTE
        )

        val body = mutableListOf(
            createAssignmentStatementMock("rt", createBoolLiteralMock(false)),
            createReturnStatement()
        )

        val repeatStatement = createRepeatStatementMock(
            condition = condition,
            body = body
        )

        val alg = createAlgorithmMock(statements = mutableListOf(repeatStatement))
        every { block.algorithms } returns mutableListOf(alg)

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .firstOccurrenceSublist("repeat", "until")

        val expected = listOf(
            "  repeat",
            "    VAR_rt = false",
            "    return",
            "  until (VAR_ind >= 10)"
        )

        verifyResults(expected, actual)
    }

    @Test
    fun `while statement`() {
        val condition = createBinaryExpression(
            leftExpr = createVariableReferenceMock("Index"),
            rightExpr = createDecIntLiteralMock(10),
            opType = LT
        )

        val body = mutableListOf(
            createAssignmentStatementMock("rt", createBoolLiteralMock(false)),
            createExitStatement()
        )

        val whileStatement = createWhileStatement(
            condition = condition,
            body = body
        )

        val alg = createAlgorithmMock(statements = mutableListOf(whileStatement))
        every { block.algorithms } returns mutableListOf(alg)

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .firstOccurrenceSublist("while", "end")

        val expected = listOf(
            "  while (VAR_Index < 10) do",
            "    VAR_rt = false",
            "    break",
            "  end"
        )

        verifyResults(expected, actual)
    }
}
