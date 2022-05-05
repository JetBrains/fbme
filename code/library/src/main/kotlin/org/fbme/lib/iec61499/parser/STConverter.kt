package org.fbme.lib.iec61499.parser

import org.antlr.v4.runtime.ANTLRInputStream
import org.antlr.v4.runtime.CommonTokenStream
import org.fbme.lib.common.Identifier
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.st.STFactory
import org.fbme.lib.st.expressions.*
import org.fbme.lib.st.parser.STLexer
import org.fbme.lib.st.parser.STParser
import org.fbme.lib.st.parser.STParser.*
import org.fbme.lib.st.statements.Statement
import org.fbme.lib.st.types.DataType
import org.fbme.lib.st.types.ElementaryType
import org.fbme.lib.st.types.GenericType
import java.io.IOException
import java.io.StringReader

object STConverter {

    @JvmStatic
    fun parseStatementListWithDeclarations(
        factory: STFactory,
        declarationsCollector: (Identifier, DataType) -> Unit,
        text: String
    ): List<Statement> {
        val ctx = createParser(text).statementListWithVariableDeclarations()
        for (declCtx in ctx.decls) {
            declarationsCollector(StringIdentifier(declCtx.name.text), parseType(factory, declCtx.type.text)!!)
        }
        return extractStatementList(factory, ctx.statementList())
    }

    @JvmStatic
    fun parseStatementList(factory: STFactory, text: String?): List<Statement> {
        return extractStatementList(factory, createParser(text).statementList())
    }

    @JvmStatic
    fun parseExpression(factory: STFactory, text: String?): Expression? {
        return extractExpression(factory, createParser(text).expression())
    }

    @JvmStatic
    fun parseLiteral(factory: STFactory, text: String?): Literal<*>? {
        return extractLiteral(factory, createParser(text).literal())
    }

    @JvmStatic
    fun parseType(factory: STFactory, text: String?): DataType? {
        if (text == null) {
            return null
        }
        for (genericType in GenericType.values()) {
            if (genericType.name == text) {
                return genericType
            }
        }
        for (elementaryType in ElementaryType.values()) {
            if (elementaryType.name == text) {
                return elementaryType
            }
        }
        return factory.createDerivedType(StringIdentifier(text), text)
    }

    private fun extractStatementList(factory: STFactory, statementListCtx: StatementListContext): List<Statement> {
        val statements: MutableList<Statement> = ArrayList()
        val statementCtxs = statementListCtx.statements
        for (statementCtx in statementCtxs) {
            val statement = extractStatement(factory, statementCtx) ?: error("Can't parse statement")
            statements.add(statement)
        }
        return statements
    }

    private fun extractStatement(factory: STFactory, statementCtx: StatementContext): Statement? {
        if (statementCtx is IfStatementContext) {
            val ifStatementCtx = statementCtx
            val ifStatement = factory.createIfStatement()
            ifStatement.condition = extractExpression(factory, ifStatementCtx.condition)
            ifStatement.thenClause.addAll(extractStatementList(factory, ifStatementCtx.thenClause))
            val elsifClauseCtxs = ifStatementCtx.elsifClauses
            val elseIfClauses = ifStatement.elseIfClauses
            for (elsifClauseCtx in elsifClauseCtxs) {
                val elseIfClause = factory.createElseIfClause()
                elseIfClause.condition = extractExpression(factory, elsifClauseCtx.condition)
                elseIfClause.body.addAll(extractStatementList(factory, elsifClauseCtx.body))
                elseIfClauses.add(elseIfClause)
            }
            if (ifStatementCtx.elseClause != null) {
                ifStatement.addElseClause().addAll(extractStatementList(factory, ifStatementCtx.elseClause))
            }
            return ifStatement
        }
        if (statementCtx is CaseStatementContext) {
            val caseStatementCtx = statementCtx
            val caseStatement = factory.createCaseStatement()
            caseStatement.expression = extractExpression(factory, caseStatementCtx.expression())
            val caseClauseCtxs = caseStatementCtx.caseClauses
            val cases = caseStatement.cases
            for (caseClauseCtx in caseClauseCtxs) {
                val caseElement = factory.createCaseElement()
                caseElement.literal = extractLiteral(factory, caseClauseCtx.literal())
                caseElement.statements.addAll(extractStatementList(factory, caseClauseCtx.body))
                cases.add(caseElement)
            }
            if (caseStatementCtx.elseClause != null) {
                caseStatement.addElseCase().addAll(extractStatementList(factory, caseStatementCtx.elseClause))
            }
            return caseStatement
        }
        if (statementCtx is ForStatementContext) {
            val forStatementCtx = statementCtx
            val forStatement = factory.createForStatement()
            val controlVariable = forStatement.controlVariable
            controlVariable.name = forStatementCtx.ID().text
            controlVariable.beginExpression = extractExpression(factory, forStatementCtx.varBegin)
            controlVariable.endExpression = extractExpression(factory, forStatementCtx.varEnd)
            if (forStatementCtx.varBy != null) {
                controlVariable.stepExpression = extractExpression(factory, forStatementCtx.varBy)
            }
            forStatement.statements.addAll(extractStatementList(factory, forStatementCtx.body))
            return forStatement
        }
        if (statementCtx is WhileStatementContext) {
            val whileStatementCtx = statementCtx
            val whileStatement = factory.createWhileStatement()
            whileStatement.condition = extractExpression(factory, whileStatementCtx.condition)
            whileStatement.body.addAll(extractStatementList(factory, whileStatementCtx.body))
            return whileStatement
        }
        if (statementCtx is RepeatStatementContext) {
            val repeatStatementCtx = statementCtx
            val repeatStatement = factory.createRepeatStatement()
            repeatStatement.condition = extractExpression(factory, repeatStatementCtx.condition)
            repeatStatement.body.addAll(extractStatementList(factory, repeatStatementCtx.body))
            return repeatStatement
        }
        if (statementCtx is AssigmentStatementContext) {
            val assigmentStatementCtx = statementCtx
            val assigmentStatement = factory.createAssignmentStatement()
            assigmentStatement.variable = extractVariable(factory, assigmentStatementCtx.variable())
            assigmentStatement.expression = extractExpression(factory, assigmentStatementCtx.expression())
            return assigmentStatement
        }
        if (statementCtx is ExitStatementContext) {
            return factory.createExitStatement()
        }
        return if (statementCtx is ReturnStatementContext) {
            factory.createReturnStatement()
        } else null
    }

    private fun extractExpression(factory: STFactory, expressionCtx: STParser.ExpressionContext): Expression? {
        if (expressionCtx is ConstantContext) {
            return extractLiteral(factory, expressionCtx.literal())
        }
        if (expressionCtx is VarExpressionContext) {
            return extractVariable(factory, expressionCtx.variable())
        }
        if (expressionCtx is ParensExpressionContext) {
            val parenthesisExpression = factory.createParenthesisExpression()
            parenthesisExpression.innerExpression = extractExpression(factory, expressionCtx.e)
                ?: error("Can't parse inner expression")
            return parenthesisExpression
        }
        if (expressionCtx is FunctionCallContext) {
            val functionCallCtx = expressionCtx
            val functionCall = factory.createFunctionCall()
            functionCall.functionName = functionCallCtx.ID().text
            val parameterCtxs = functionCallCtx.params
            val actualParameters = functionCall.actualParameters
            for (parameterCtx in parameterCtxs) {
                actualParameters.add(extractExpression(factory, parameterCtx))
            }
            return functionCall
        }
        if (expressionCtx is UnaryExpressionContext) {
            val unaryExpressionCtx = expressionCtx
            val operation = chooseUnaryOperation(unaryExpressionCtx.op.text)
            val unaryExpression = factory.createUnaryExpression(operation!!)
            unaryExpression.setInnerExpression(extractExpression(factory, unaryExpressionCtx.e)!!)
            return unaryExpression
        }
        if (expressionCtx is BinaryExpressionContext) {
            val binaryExpressionCtx = expressionCtx
            val binaryOperation = chooseBinaryOperation(binaryExpressionCtx.op.text)
            val binaryExpression = factory.createBinaryExpression(binaryOperation!!)
            binaryExpression.leftExpression = extractExpression(factory, binaryExpressionCtx.l)
            binaryExpression.rightExpression = extractExpression(factory, binaryExpressionCtx.r)
            return binaryExpression
        }
        return null
    }

    private fun chooseUnaryOperation(text: String): UnaryOperation? {
        for (unaryOperation in UnaryOperation.values()) {
            if (unaryOperation.alias == text) {
                return unaryOperation
            }
        }
        return null
    }

    private fun chooseBinaryOperation(text: String): BinaryOperation? {
        for (binaryOperation in BinaryOperation.values()) {
            if (binaryOperation.alias == text) {
                return binaryOperation
            }
        }
        return null
    }

    private fun extractVariable(factory: STFactory, variableCtx: STParser.VariableContext): Variable? {
        if (variableCtx is VarReferenceContext) {
            val variableReference = factory.createVariableReference()
            variableReference.reference.setTargetName(variableCtx.getText())
            return variableReference
        }
        if (variableCtx is ArraySelectorContext) {
            val arraySelectorCtx = variableCtx
            val arrayVariable = factory.createArrayVariable()
            arrayVariable.subscribedVariable = extractVariable(factory, arraySelectorCtx.subscripted)
            val subscripts = arrayVariable.subscripts
            val subscriptCtxs = arraySelectorCtx.subscrpits
            for (subscriptCtx in subscriptCtxs) {
                subscripts.add(extractExpression(factory, subscriptCtx))
            }
            return arrayVariable
        }
        // TODO field selector
        return null
    }

    private fun extractLiteral(factory: STFactory, literalCtx: LiteralContext): Literal<*>? {
        if (literalCtx is DecContext) {
            val literal = factory.createLiteral(LiteralKind.DEC_INT) as Literal<Int?>
            literal.value = literalCtx.getText().toInt()
            return literal
        }
        if (literalCtx is BinContext) {
            val literal = factory.createLiteral(LiteralKind.BINARY_INT) as Literal<Int?>
            literal.value = literalCtx.getText().substring(2).toInt(2)
            return literal
        }
        if (literalCtx is OctContext) {
            val literal = factory.createLiteral(LiteralKind.OCT_INT) as Literal<Int?>
            literal.value = literalCtx.getText().substring(2).toInt(8)
            return literal
        }
        if (literalCtx is HexContext) {
            val literal = factory.createLiteral(LiteralKind.HEX_INT) as Literal<Int?>
            literal.value = literalCtx.getText().substring(3).toInt(16)
            return literal
        }
        if (literalCtx is STParser.StringContext) {
            val literal = factory.createLiteral(LiteralKind.STRING) as Literal<String?>
            val text = literalCtx.getText()
            // TODO unescape parsed string
            literal.value = text.substring(1, text.length - 1)
            return literal
        }
        if (literalCtx is WstringContext) {
            val literal = factory.createLiteral(LiteralKind.WSTRING) as Literal<String?>
            val text = literalCtx.getText()
            // TODO unescape parsed string
            literal.value = text.substring(1, text.length - 1)
            return literal
        }
        if (literalCtx is BooleanContext) {
            val literal = factory.createLiteral(LiteralKind.BOOL) as Literal<Boolean?>
            literal.value = literalCtx.getText() == "TRUE"
            return literal
        }
        if (literalCtx is BooleanBinContext) {
            val literal = factory.createLiteral(LiteralKind.BINARY_BOOL) as Literal<Boolean?>
            literal.value = literalCtx.getText() == "BOOL#1"
            return literal
        }
        return null
    }

    private fun createParser(text: String?): STParser {
        return try {
            STParser(CommonTokenStream(STLexer(ANTLRInputStream(StringReader(text)))))
        } catch (e: IOException) {
            throw RuntimeException("Can't instatiate ST parser")
        }
    }
}