package org.fbme.formalfb.generation.spin

import com.intellij.util.containers.BidirectionalMap
import org.fbme.formalfb.generation.GenerationException
import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.declarations.AlgorithmLanguage
import org.fbme.lib.st.expressions.*
import org.fbme.lib.st.statements.AssignmentStatement
import org.fbme.lib.st.statements.Statement


fun translateSTAlgo(algo: AlgorithmDeclaration, indent: Int, nameMappings: BidirectionalMap<String, String>): String {
    if (algo.body?.language != AlgorithmLanguage.ST) throw GenerationException("Only ST language is supported for algorithms")
    val generator = STGenerator(algo, indent, nameMappings)
    return generator.generate()
}

class STGenerator(val algo: AlgorithmDeclaration, val indent: Int, val nameMappings: BidirectionalMap<String, String>) : BlockGenerator {

    override fun generate(): String {
        val sb = StringBuilder()
        val statements = (algo.body as AlgorithmBody.ST).statements
        sb.append("// Algorithm ${algo.name}${strEnd(-1, statements.size, indent)}")
        for ((index, statement) in statements.withIndex()) {
            sb.append(translateStatement(statement) + ";${strEnd(index, statements.size, indent)}")
        }
        return sb.toString()
    }

    fun translateStatement(statement: Statement): String {
        return when (statement) {
            is AssignmentStatement -> {
                translateVariable(statement.variable!!) + " = " + translateExpression(statement.expression!!)
            }
            else -> ""
        }
    }

    fun translateExpression(expression: Expression): String {
        return when(expression) {
            is Variable -> translateVariable(expression)
            is Literal<*> -> translateLiteral(expression)
            is BinaryExpression -> {
                translateExpression(expression.leftExpression!!) + " " +
                        translateOperator(expression.operation) + " " +
                        translateExpression(expression.rightExpression!!)
            }
            else -> throw GenerationException("Unsupported expression type $expression")
        }
    }

    private fun translateOperator(operation: BinaryOperation): String {
        return when(operation) {
            BinaryOperation.AND -> "&&"
            BinaryOperation.OR -> "||"
            else -> operation.alias
        }
    }

    private fun translateLiteral(expression: Literal<*>): String {
        return expression.value.toString()
    }

    fun translateVariable(variable: Variable): String {
        return when(variable) {
            is VariableReference -> mapVarName(variable.reference.getTarget()!!.name)
            else -> throw GenerationException("Unsupported Variable type $variable")//todo: support all cases
        }
    }
}


