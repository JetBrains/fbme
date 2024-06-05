package org.fbme.ide.integration.fordiac.validators

import org.fbme.lib.iec61499.declarations.AlgorithmBody.ST
import org.fbme.lib.iec61499.declarations.AlgorithmBody.Unknown
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclarationWithAdapters
import org.fbme.lib.iec61499.ecc.ECC
import org.fbme.lib.iec61499.ecc.StateAction
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.lib.iec61499.stringify.STPrinter
import org.fbme.lib.st.statements.*

object BasicFBTypeValidator : AbstractValidator<BasicFBTypeDeclaration>() {
    override val userErrorMessages: MutableList<String> = mutableListOf()
    override val internalErrors: MutableSet<InternalError> = mutableSetOf()

    override fun validationBody(fbTypeDeclaration: BasicFBTypeDeclaration) {
        validateValue(fbTypeDeclaration.name, "Basic block does not have name.")
        validateECC(fbTypeDeclaration.ecc)
        validateParameters(parameters = fbTypeDeclaration.internalVariables, paramTypeName = "internal parameter")
        validateFBInterfaceDeclarationWithAdapters(fbTypeDeclaration)
        validateAlgorithms(fbTypeDeclaration.algorithms)
    }

    private fun validateFBInterfaceDeclarationWithAdapters(declaration: FBInterfaceDeclarationWithAdapters) {
        declaration.plugs.forEach(::validatePlugDeclaration)
        declaration.sockets.forEach(::validateSocketDeclaration)
        validateFBInterfaceDeclaration(declaration)
    }

    private fun validateECC(ecc: ECC) {
        validateStates(ecc.states)
        validateTransitions(ecc.transitions)
    }

    private fun validateStates(states: List<StateDeclaration>) {
        states.forEach { state ->
            validateValue(state.name, "Expected name of state=[index: ${state.index()}].")
            handleNullObjectInternalError(
                obj = state.container,
                className = "StateDeclaration",
                fieldName = "container"
            )
            validateActions(state.actions, state.name)
        }
    }

    private fun validateActions(actions: List<StateAction>, stateName: String) {
        actions.forEach { action ->
            handleNullObjectInternalError(
                obj = action.container,
                className = "StateAction",
                fieldName = "container"
            )
            handleNullObjectUserError(
                action.algorithm,
                "State '$stateName' has incorrect action=[index: ${action.index()}]. Action must have an algorithm."
            )
        }
    }

    private fun validateTransitions(transitions: List<StateTransition>) {
        transitions.forEach {
            handleNullObjectInternalError(obj = it.container, className = "StateTransition", fieldName = "container")
            handleNullObjectUserError(
                obj = it.condition.eventReference.getTarget(),
                errorMessage = "Transition condition does not have event reference."
            )
            handleNullObjectUserError(
                obj = it.condition.getGuardCondition(),
                errorMessage = "Transition=[index ${it.index()}] does not have condition expression."
            )
            val conditionExpression =
                it.condition.getGuardCondition()?.let { expr -> STPrinter.printExpression(expr) }
            val transition = "transition=[index: ${it.index()}, guard condition: $conditionExpression]"
            handleNullObjectUserError(
                obj = it.sourceReference.getTarget(),
                errorMessage = "SourceReference of $transition not provided."
            )
            handleNullObjectUserError(
                obj = it.targetReference.getTarget(),
                errorMessage = "TargetReference of $transition not provided."
            )
        }
    }

    private fun validateStatement(statement: Statement, algorithmName: String) {
        handleNullObjectInternalError(
            obj = statement.container,
            className = "Statement",
            fieldName = "container"
        )

        val messageSuffix = " in algorithm=[name: $algorithmName]."

        when (statement) {
            is ExitStatement -> {} // nothing to validate
            is ForStatement -> {
                handleNullObjectInternalError(
                    obj = statement.controlVariable.container,
                    className = "ControlVariableDeclaration",
                    fieldName = "container"
                )
                val messageTemplate = { exprName: String ->
                    "Expected $exprName expression in for statement$messageSuffix"
                }
                handleNullObjectUserError(
                    obj = statement.controlVariable.beginExpression,
                    errorMessage = messageTemplate("begin")
                )
                handleNullObjectUserError(
                    obj = statement.controlVariable.endExpression,
                    errorMessage = messageTemplate("end")
                )
                handleNullObjectUserError(
                    obj = statement.controlVariable.stepExpression,
                    errorMessage = messageTemplate("step")
                )
                statement.statements.forEach { validateStatement(it, algorithmName) }
            }

            is CaseStatement -> {
                handleNullObjectUserError(
                    obj = statement.expression,
                    errorMessage = "Expected expression in 'case' statement$messageSuffix"
                )

                statement.cases.forEach {
                    handleNullObjectInternalError(
                        obj = it.container,
                        className = "CaseElement",
                        fieldName = "container"
                    )
                    handleNullObjectUserError(
                        obj = it.literal,
                        errorMessage = "Expected literal in case element$messageSuffix"
                    )
                    it.statements.forEach { st -> validateStatement(st, algorithmName) }
                }

                statement.elseCase?.forEach { validateStatement(it, algorithmName) }
            }

            is RepeatStatement -> {
                handleNullObjectUserError(
                    obj = statement.condition,
                    errorMessage = "Expected condition in 'repeat' statement$messageSuffix"
                )
                statement.body.forEach { validateStatement(it, algorithmName) }
            }

            is IfStatement -> {
                handleNullObjectUserError(
                    obj = statement.condition,
                    errorMessage = "Expected condition in 'if' statement$messageSuffix"
                )
                statement.thenClause.forEach { validateStatement(it, algorithmName) }
                statement.elseIfClauses.forEach {
                    handleNullObjectInternalError(
                        obj = it.container,
                        className = "ElseIfClause",
                        fieldName = "container"
                    )
                    handleNullObjectUserError(
                        obj = it.condition,
                        errorMessage = "Expected condition in 'else if' statement$messageSuffix"
                    )
                    it.body.forEach { st -> validateStatement(st, algorithmName) }
                }
                statement.elseClause?.forEach { validateStatement(it, algorithmName) }
            }

            is EmptyStatement -> {}  // nothing to validate
            is AssignmentStatement -> {
                handleNullObjectInternalError(
                    obj = statement.container,
                    className = "AssignmentStatement",
                    fieldName = "container"
                )
                handleNullObjectUserError(
                    obj = statement.variable,
                    errorMessage = "Expected variable in 'assignment' statement$messageSuffix"
                )
                handleNullObjectUserError(
                    obj = statement.expression,
                    errorMessage = "Expected expression in 'assignment' statement$messageSuffix"
                )
            }

            is ReturnStatement -> {} // nothing to validate
            is WhileStatement -> {
                handleNullObjectInternalError(
                    obj = statement.container,
                    className = "WhileStatement",
                    fieldName = "container"
                )
                handleNullObjectUserError(
                    obj = statement.condition,
                    errorMessage = "Expected condition in 'while' statement$messageSuffix"
                )
                statement.body.forEach { validateStatement(it, algorithmName) }
            }
        }
    }

    private fun validateAlgorithms(algorithms: List<AlgorithmDeclaration>) {
        algorithms.forEach {
            handleNullObjectInternalError(
                obj = it.container,
                className = "AlgorithmDeclaration",
                fieldName = "container"
            )
            validateValue(value = it.name, errorMessage = "Name for algorithm=[index: ${it.index()}] not provided.")
            validateParameters(
                parameters = it.temporaryVariables,
                paramTypeName = "temporary parameter",
                prefixMessage = "Algorithm=[name: ${it.name}, index: ${it.index()}]."
            )

            it.body?.let { body ->
                handleNullObjectInternalError(
                    obj = body.container,
                    className = "AlgorithmBody",
                    fieldName = "container"
                )
                when (body) {
                    is Unknown -> {
                        val message =
                            "Unsupported language used in algorithm=[name: ${it.name}, index: ${it.index()}] body."
                        userErrorMessages.add(message)
                    }

                    is ST -> body.statements.forEach { st ->
                        validateStatement(
                            statement = st,
                            algorithmName = it.name
                        )
                    }
                }
            }
        }
    }
}
