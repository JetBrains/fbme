package org.fbme.ide.integration.fordiac.lua

import io.mockk.every
import io.mockk.mockk
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Identifier
import org.fbme.lib.common.Reference
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.ecc.ECC
import org.fbme.lib.iec61499.ecc.StateAction
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.lib.st.expressions.*
import org.fbme.lib.st.expressions.LiteralKind.*
import org.fbme.lib.st.expressions.UnaryOperation.NEG
import org.fbme.lib.st.expressions.UnaryOperation.NOT
import org.fbme.lib.st.statements.*
import org.fbme.lib.st.types.DataType

fun createStringLiteralMock(varValue: String) = createLiteralMock(varValue, STRING)
fun createDecIntLiteralMock(varValue: Int) = createLiteralMock(varValue, DEC_INT)
fun createBinaryBoolLiteralMock(varValue: Boolean) = createLiteralMock(varValue, BINARY_BOOL)
fun createBoolLiteralMock(varValue: Boolean) = createLiteralMock(varValue, BOOL)
fun createBinaryIntLiteralMock(varValue: Int) = createLiteralMock(varValue, BINARY_INT)
fun createOctIntLiteralMock(varValue: Int) = createLiteralMock(varValue, OCT_INT)
fun createHexIntLiteralMock(varValue: Int) = createLiteralMock(varValue, HEX_INT)
fun createWstringLiteralMock(varValue: String) = createLiteralMock(varValue, WSTRING)
fun createTimeLiteralMock(varValue: String) = createLiteralMock(varValue, TIME)
fun createRealLiteralMock(varValue: String) = createLiteralMock(varValue, REAL)

private fun <V> createLiteralMock(varValue: V, type: LiteralKind): Literal<V> = mockk<Literal<V>> {
    every { kind } returns type
    every { value } returns varValue
}

fun createNotUnaryExpressionMock(innerExpr: Expression) = createUnaryExpressionMock(innerExpr, NOT)
fun createNegUnaryExpressionMock(innerExpr: Expression) = createUnaryExpressionMock(innerExpr, NEG)

private fun createUnaryExpressionMock(innerExpr: Expression, opType: UnaryOperation) = mockk<UnaryExpression> {
    every { operation } returns opType
    every { getInnerExpression() } returns innerExpr
}

fun createBinaryExpression(leftExpr: Expression, rightExpr: Expression, opType: BinaryOperation) =
    mockk<BinaryExpression> {
        every { operation } returns opType
        every { leftExpression } returns leftExpr
        every { rightExpression } returns rightExpr
    }

fun createVariableReferenceMock(name: String): VariableReference {
    val varDecl = mockk<VariableDeclaration> { every { this@mockk.name } returns name }

    return mockk<VariableReference> {
        every { reference.getTarget() } returns varDecl
    }
}

fun createAssignmentStatementMock(varName: String, expr: Expression) = mockk<AssignmentStatement> {
    every { variable } returns createVariableReferenceMock(varName)
    every { expression } returns expr
}

fun createElseIfClause(condition: Expression, body: MutableList<Statement> = mutableListOf()) = mockk<ElseIfClause> {
    every { this@mockk.condition } returns condition
    every { this@mockk.body } returns body
}

fun createIfStatementMock(
    condition: Expression,
    thenClause: MutableList<Statement> = mutableListOf(),
    elseIfClauses: MutableList<ElseIfClause> = mutableListOf(),
    elseClause: List<Statement> = listOf(),
) = mockk<IfStatement> {
    every { this@mockk.condition } returns condition
    every { this@mockk.thenClause } returns thenClause
    every { this@mockk.elseIfClauses } returns elseIfClauses
    every { this@mockk.elseClause } returns elseClause
}

fun createEmptyStatement() = mockk<EmptyStatement>()
fun createReturnStatement() = mockk<ReturnStatement>()
fun createExitStatement() = mockk<ExitStatement>()

fun createControlVariableDeclarationMock(
    name: String,
    beginExpression: Expression? = null,
    endExpression: Expression? = null,
    stepExpression: Expression? = null,
) = mockk<ControlVariableDeclaration> {
    every { this@mockk.name } returns name
    every { this@mockk.beginExpression } returns beginExpression
    every { this@mockk.endExpression } returns endExpression
    every { this@mockk.stepExpression } returns stepExpression
}

fun createForStatementMock(
    controlVariable: ControlVariableDeclaration,
    statements: MutableList<Statement> = mutableListOf()
) = mockk<ForStatement> {
    every { this@mockk.controlVariable } returns controlVariable
    every { this@mockk.statements } returns statements
}

fun createCaseElementMock(
    literal: Literal<*>? = null,
    statements: MutableList<Statement> = mutableListOf(),
    index: Int
) =
    mockk<CaseElement> {
        every { this@mockk.literal } returns literal
        every { this@mockk.statements } returns statements
        every { index() } returns index
    }

fun createCaseStatementMock(
    expression: Expression? = null,
    cases: MutableList<CaseElement> = mutableListOf(),
    elseCase: List<Statement>? = null
) = mockk<CaseStatement> {
    every { this@mockk.expression } returns expression
    every { this@mockk.cases } returns cases
    every { this@mockk.elseCase } returns elseCase
}

fun createRepeatStatementMock(condition: Expression?, body: MutableList<Statement> = mutableListOf()) =
    mockk<RepeatStatement> {
        every { this@mockk.condition } returns condition
        every { this@mockk.body } returns body
    }

fun createWhileStatement(condition: Expression?, body: MutableList<Statement> = mutableListOf()) =
    mockk<WhileStatement> {
        every { this@mockk.condition } returns condition
        every { this@mockk.body } returns body
    }

fun createAdapterTypeDeclarationMock(
    name: String = "",
    identifier: Identifier = StringIdentifier(name),
    descriptor: FBTypeDescriptor = createFBTypeDescriptorMock(),
    inputEvents: MutableList<EventDeclaration> = mutableListOf(),
    outputEvents: MutableList<EventDeclaration> = mutableListOf(),
    inputParameters: MutableList<ParameterDeclaration> = mutableListOf(),
    outputParameters: MutableList<ParameterDeclaration> = mutableListOf(),
) =
    mockk<AdapterTypeDeclaration> {
        every { this@mockk.name } returns name
        every { this@mockk.identifier } returns identifier
        every { socketTypeDescriptor } returns descriptor
        every { plugTypeDescriptor } returns descriptor
        every { this@mockk.inputEvents } returns inputEvents
        every { this@mockk.outputEvents } returns outputEvents
        every { this@mockk.inputParameters } returns inputParameters
        every { this@mockk.outputParameters } returns outputParameters
    }

fun createAlgorithmMock(
    name: String = "",
    statements: MutableList<Statement> = mutableListOf(),
    temporaryVariables: MutableList<ParameterDeclaration> = mutableListOf()
) = mockk<AlgorithmDeclaration> {
    every { this@mockk.name } returns name
    every { body } returns createAlgorithmBodyMock(statements)
    every { this@mockk.temporaryVariables } returns temporaryVariables
}

private fun createAlgorithmBodyMock(statements: MutableList<Statement>) = mockk<AlgorithmBody.ST> {
    every { this@mockk.statements } returns statements
}

fun createStateDeclarationMock(index: Int, name: String = "", actions: MutableList<StateAction> = mutableListOf()) =
    mockk<StateDeclaration> {
        every { index() } returns index
        every { this@mockk.name } returns name
        every { this@mockk.actions } returns actions
    }

fun createECCMock(
    states: MutableList<StateDeclaration> = mutableListOf(),
    transitions: MutableList<StateTransition> = mutableListOf()
) = mockk<ECC> {
    every { this@mockk.states } returns states
    every { this@mockk.transitions } returns transitions
}

fun createFBTypeDescriptorMock(
    typeName: String = "",
    eventInputPorts: List<FBPortDescriptor> = listOf(),
    eventOutputPorts: List<FBPortDescriptor> = listOf(),
    dataInputPorts: List<FBPortDescriptor> = listOf(),
    dataOutputPorts: List<FBPortDescriptor> = listOf(),
    socketPorts: List<FBPortDescriptor> = listOf(),
    plugPorts: List<FBPortDescriptor> = listOf(),
    associatedVariablesForInputEvent: List<Int> = listOf(),
    associatedVariablesForOutputEvent: List<Int> = listOf(),
) = mockk<FBTypeDescriptor> {
    every { this@mockk.typeName } returns typeName
    every { this@mockk.eventInputPorts } returns eventInputPorts
    every { this@mockk.eventOutputPorts } returns eventOutputPorts
    every { this@mockk.dataInputPorts } returns dataInputPorts
    every { this@mockk.dataOutputPorts } returns dataOutputPorts
    every { this@mockk.socketPorts } returns socketPorts
    every { this@mockk.plugPorts } returns plugPorts
    every { getAssociatedVariablesForInputEvent(any()) } returns associatedVariablesForInputEvent
    every { getAssociatedVariablesForOutputEvent(any()) } returns associatedVariablesForOutputEvent
}

fun createParameterDeclarationMock(
    name: String,
    identifier: Identifier = StringIdentifier(name),
    container: Declaration? = null,
    type: DataType? = null,
    initialValue: Literal<*>? = null,
) = mockk<ParameterDeclaration> {
    every { this@mockk.name } returns name
    every { this@mockk.identifier } returns identifier
    every { this@mockk.container } returns container
    every { this@mockk.type } returns type
    every { this@mockk.initialValue } returns initialValue
}

fun <DeclarationT : Declaration> createReferenceMock(
    target: DeclarationT,
    presentation: String = "",
    identifier: Identifier = StringIdentifier(presentation)
) = mockk<Reference<DeclarationT>> {
    every { this@mockk.getTarget() } returns target
    every { this@mockk.identifier } returns identifier
    every { this@mockk.presentation } returns presentation
}

fun createEventAssociationMock(
    parameterReference: Reference<ParameterDeclaration>,
    container: EventDeclaration? = null
) =
    mockk<EventAssociation> {
        every { this@mockk.parameterReference } returns parameterReference
        every { this@mockk.container } returns container
    }

fun createEventDeclarationMock(
    name: String,
    identifier: Identifier = StringIdentifier(name),
    associations: MutableList<EventAssociation> = mutableListOf(),
    container: Declaration? = null
) = mockk<EventDeclaration> {
    every { this@mockk.identifier } returns identifier
    every { this@mockk.name } returns name
    every { this@mockk.associations } returns associations
    every { this@mockk.container } returns container
}

fun createBasicFBTypeDeclarationMock(
    internalVariables: MutableList<ParameterDeclaration> = mutableListOf(),
    inputEvents: MutableList<EventDeclaration> = mutableListOf(),
    outputEvents: MutableList<EventDeclaration> = mutableListOf(),
    inputParameters: MutableList<ParameterDeclaration> = mutableListOf(),
    outputParameters: MutableList<ParameterDeclaration> = mutableListOf(),
    plugs: MutableList<PlugDeclaration> = mutableListOf(),
    sockets: MutableList<SocketDeclaration> = mutableListOf(),
    ecc: ECC = createECCMock(),
    typeDescriptor: FBTypeDescriptor = createFBTypeDescriptorMock(),
    algorithms: MutableList<AlgorithmDeclaration> = mutableListOf(),
) = mockk<BasicFBTypeDeclaration> {
    every { this@mockk.internalVariables } returns internalVariables
    every { this@mockk.inputEvents } returns inputEvents
    every { this@mockk.outputEvents } returns outputEvents
    every { this@mockk.inputParameters } returns inputParameters
    every { this@mockk.outputParameters } returns outputParameters
    every { this@mockk.plugs } returns plugs
    every { this@mockk.sockets } returns sockets
    every { this@mockk.ecc } returns ecc
    every { this@mockk.typeDescriptor } returns typeDescriptor
    every { this@mockk.algorithms } returns algorithms
}
