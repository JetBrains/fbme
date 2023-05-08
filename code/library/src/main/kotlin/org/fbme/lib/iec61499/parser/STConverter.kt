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
        text: String,
        declarationsCollector: (Identifier, DataType) -> Unit
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
            val ifStatement = factory.createIfStatement()
            ifStatement.condition = extractExpression(factory, statementCtx.condition)
            ifStatement.thenClause.addAll(extractStatementList(factory, statementCtx.thenClause))
            val elsifClauseCtxs = statementCtx.elsifClauses
            val elseIfClauses = ifStatement.elseIfClauses
            for (elsifClauseCtx in elsifClauseCtxs) {
                val elseIfClause = factory.createElseIfClause()
                elseIfClause.condition = extractExpression(factory, elsifClauseCtx.condition)
                elseIfClause.body.addAll(extractStatementList(factory, elsifClauseCtx.body))
                elseIfClauses.add(elseIfClause)
            }
            if (statementCtx.elseClause != null) {
                ifStatement.addElseClause().addAll(extractStatementList(factory, statementCtx.elseClause))
            }
            return ifStatement
        }
        if (statementCtx is CaseStatementContext) {
            val caseStatement = factory.createCaseStatement()
            caseStatement.expression = extractExpression(factory, statementCtx.expression())
            val caseClauseCtxs = statementCtx.caseClauses
            val cases = caseStatement.cases
            for (caseClauseCtx in caseClauseCtxs) {
                val caseElement = factory.createCaseElement()
                caseElement.literal = extractLiteral(factory, caseClauseCtx.literal())
                caseElement.statements.addAll(extractStatementList(factory, caseClauseCtx.body))
                cases.add(caseElement)
            }
            if (statementCtx.elseClause != null) {
                caseStatement.addElseCase().addAll(extractStatementList(factory, statementCtx.elseClause))
            }
            return caseStatement
        }
        if (statementCtx is ForStatementContext) {
            val forStatement = factory.createForStatement()
            val controlVariable = forStatement.controlVariable
            controlVariable.name = statementCtx.ID().text
            controlVariable.beginExpression = extractExpression(factory, statementCtx.varBegin)
            controlVariable.endExpression = extractExpression(factory, statementCtx.varEnd)
            if (statementCtx.varBy != null) {
                controlVariable.stepExpression = extractExpression(factory, statementCtx.varBy)
            }
            forStatement.statements.addAll(extractStatementList(factory, statementCtx.body))
            return forStatement
        }
        if (statementCtx is WhileStatementContext) {
            val whileStatement = factory.createWhileStatement()
            whileStatement.condition = extractExpression(factory, statementCtx.condition)
            whileStatement.body.addAll(extractStatementList(factory, statementCtx.body))
            return whileStatement
        }
        if (statementCtx is RepeatStatementContext) {
            val repeatStatement = factory.createRepeatStatement()
            repeatStatement.condition = extractExpression(factory, statementCtx.condition)
            repeatStatement.body.addAll(extractStatementList(factory, statementCtx.body))
            return repeatStatement
        }
        if (statementCtx is AssigmentStatementContext) {
            val assigmentStatement = factory.createAssignmentStatement()
            assigmentStatement.variable = extractVariable(factory, statementCtx.variable())
            assigmentStatement.expression = extractExpression(factory, statementCtx.expression())
            return assigmentStatement
        }
        if (statementCtx is ExitStatementContext) {
            return factory.createExitStatement()
        }
        return if (statementCtx is ReturnStatementContext) {
            factory.createReturnStatement()
        } else null
    }

    private fun extractExpression(factory: STFactory, expressionCtx: ExpressionContext): Expression? {
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
            val functionCall = factory.createFunctionCall()
            functionCall.functionName = expressionCtx.ID().text
            val parameterCtxs = expressionCtx.params
            val actualParameters = functionCall.actualParameters
            for (parameterCtx in parameterCtxs) {
                actualParameters.add(extractExpression(factory, parameterCtx))
            }
            return functionCall
        }
        if (expressionCtx is UnaryExpressionContext) {
            val operation = chooseUnaryOperation(expressionCtx.op.text)
            val unaryExpression = factory.createUnaryExpression(operation!!)
            unaryExpression.setInnerExpression(extractExpression(factory, expressionCtx.e)!!)
            return unaryExpression
        }
        if (expressionCtx is BinaryExpressionContext) {
            val binaryOperation = chooseBinaryOperation(expressionCtx.op.text)
            val binaryExpression = factory.createBinaryExpression(binaryOperation!!)
            binaryExpression.leftExpression = extractExpression(factory, expressionCtx.l)
            binaryExpression.rightExpression = extractExpression(factory, expressionCtx.r)
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

    private fun extractVariable(factory: STFactory, variableCtx: VariableContext): Variable? {
        if (variableCtx is VarReferenceContext) {
            val variableReference = factory.createVariableReference()
            variableReference.reference.setTargetName(variableCtx.getText())
            return variableReference
        }
        if (variableCtx is ArraySelectorContext) {
            val arrayVariable = factory.createArrayVariable()
            arrayVariable.subscribedVariable = extractVariable(factory, variableCtx.subscripted)
            val subscripts = arrayVariable.subscripts
            val subscriptCtxs = variableCtx.subscrpits
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
            literal.value = literalCtx.text.toInt()
            return literal
        }
        if (literalCtx is BinContext) {
            val literal = factory.createLiteral(LiteralKind.BINARY_INT) as Literal<Int?>
            literal.value = literalCtx.text.substring(2).toInt(2)
            return literal
        }
        if (literalCtx is OctContext) {
            val literal = factory.createLiteral(LiteralKind.OCT_INT) as Literal<Int?>
            literal.value = literalCtx.text.substring(2).toInt(8)
            return literal
        }
        if (literalCtx is HexContext) {
            val literal = factory.createLiteral(LiteralKind.HEX_INT) as Literal<Int?>
            literal.value = literalCtx.text.substring(3).toInt(16)
            return literal
        }
        if (literalCtx is StringContext) {
            val literal = factory.createLiteral(LiteralKind.STRING) as Literal<String?>
            val text = literalCtx.text
            // TODO unescape parsed string
            literal.value = text.substring(1, text.length - 1)
            return literal
        }
        if (literalCtx is WstringContext) {
            val literal = factory.createLiteral(LiteralKind.WSTRING) as Literal<String?>
            val text = literalCtx.text
            // TODO unescape parsed string
            literal.value = text.substring(1, text.length - 1)
            return literal
        }
        if (literalCtx is BooleanContext) {
            val literal = factory.createLiteral(LiteralKind.BOOL) as Literal<Boolean?>
            literal.value = literalCtx.text == "TRUE"
            return literal
        }
        if (literalCtx is BooleanBinContext) {
            val literal = factory.createLiteral(LiteralKind.BINARY_BOOL) as Literal<Boolean?>
            literal.value = literalCtx.text == "BOOL#1"
            return literal
        }
        if (literalCtx is DurationContext) {
            val literal = factory.createLiteral(LiteralKind.TIME) as Literal<String?>
            literal.value = literalCtx.text.substringAfter('#')
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
