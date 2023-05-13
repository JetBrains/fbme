package org.fbme.lib.iec61499.stringify

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.parser.CompositeFBTypeConverter
import org.fbme.lib.iec61499.parser.ConverterArguments
import org.fbme.lib.iec61499.parser.STConverter
import org.fbme.lib.st.STFactory
import org.fbme.lib.st.expressions.Expression
import org.fbme.lib.st.statements.Statement
import org.fbme.lib.st.types.DataType
import org.fbme.lib.st.types.ElementaryType
import org.jdom.Element
import java.util.function.BiFunction

class HMIInterfaceTypeGenerator(val declaration: HMIInterfaceTypeDeclaration, val converterArguments: ConverterArguments) {

    fun generateDependents(): List<FBTypeDeclaration> {
        val elements = mutableListOf<FBTypeDeclaration>()
        val outFb = generateDispatchOut(converterArguments.factory, converterArguments.stFactory, declaration.outputParameters)
        elements.add(outFb)
        val inFb = generateDispatchIn(
            converterArguments.factory,
            converterArguments.stFactory,
            declaration.inputParameters
        )
        elements.add(inFb)
//        val hmiElement = Element(declaration.name)
//        printComposite(hmiElement, outFb, inFb)
        return elements
    }

    fun printComposite(element: Element, outEl: FunctionBlockDeclaration, inEl: FunctionBlockDeclaration) {
        val composite = converterArguments.factory.createCompositeFBTypeDeclaration(null)
        composite.network.functionBlocks.add(outEl)
        composite.network.functionBlocks.add(inEl)
        CompositeFBTypeConverter(converterArguments).extract()
//        composite.network.functionBlocks.add(jsonSerializer)
//        composite.network.functionBlocks.add(jsonDeserializer)
//        composite.network.functionBlocks.add(publish)
//        composite.network.functionBlocks.add(subscribe)
        val connection = converterArguments.factory.createFBNetworkConnection(EntryKind.EVENT)
//        connection.sourceReference(outEl, jsonSerializer)
//        connection.sourceReference(inEl, jsonDeserializer)
        composite.network.dataConnections
        element.addContent(CompositeFBTypePrinter(composite).print())
    }

companion object {
    val CONNECTION_TYPES = listOf(
        ElementaryType.BOOL,
        ElementaryType.INT,
        ElementaryType.REAL,
        ElementaryType.LREAL,
        ElementaryType.STRING
    )

    fun generateDispatchOut(factory: IEC61499Factory, stFactory: STFactory, outputVars: List<ParameterDeclaration>): FBTypeDeclaration {
        val bfb = factory.createBasicFBTypeDeclaration(null)

        for (oV in outputVars) {

        }
        for (oV in outputVars) {
            val state = factory.createStateDeclaration(null)
            state.name = "SET_${oV.name}"
            val action = factory.createStateAction()
            val event = factory.createEventDeclaration(null)
            val eventAssociation = factory.createEventAssociation()
            eventAssociation.parameterReference.setTarget(factory.createParameterDeclaration(null))
            event.name = "RES_${oV.type}"
            event.associations.add(eventAssociation)
//            action.event.setTarget(PortPath.createEventPortPath(bfb, event))
            val algorithm = factory.createAlgorithmDeclaration(null)
            algorithm.name = "set${oV.name}"
            val algorithmBody = factory.createAlgorithmBody(AlgorithmLanguage.ST)
            val outCode = generateOutCode(oV, algorithm, factory, stFactory)
            algorithmBody.statements.addAll(outCode)
            algorithm.body = algorithmBody
            stFactory.createVariableReference()
            state.actions.add(action)
            bfb.ecc.states.add(state)
        }

        return bfb
    }


    fun generateDispatchIn(factory: IEC61499Factory, stFactory: STFactory, inputVars: List<ParameterDeclaration>, name: String = ""): FBTypeDeclaration {
        val bfb = factory.createBasicFBTypeDeclaration(null)
        bfb.name = "DISPATCH_IN_${name}"
        val startState = factory.createStateDeclaration(null)
        startState.name = "START"
        bfb.ecc.states.add(startState)
        val inConnections = generateTypedConnections(factory, CONNECTION_TYPES)
        bfb.inputParameters.addAll(inConnections)
        for (oV in inputVars) {
            val state = factory.createStateDeclaration(null)
            state.name = "SET_${oV.name}"
            val action = factory.createStateAction()
            val event = factory.createEventDeclaration(null)
            val eventAssociation = factory.createEventAssociation()
            val currParameter = factory.createParameterDeclaration(null)
            currParameter.name = oV.name
            currParameter.type = oV.type
            currParameter.initialValue = oV.initialValue
            bfb.outputParameters.add(currParameter)
            eventAssociation.parameterReference.setTarget(currParameter)
            event.name = "RES_${oV.type}"
            event.associations.add(eventAssociation)
//            action.event.setTarget(PortPath.createEventPortPath(bfb, event))
            val algorithm = factory.createAlgorithmDeclaration(null)
            algorithm.name = "set${oV.name}"
            val algorithmBody = factory.createAlgorithmBody(AlgorithmLanguage.ST)
            val outCode = generateInCode(oV, algorithm, factory, stFactory)
            algorithmBody.statements.addAll(outCode)
            algorithm.body = algorithmBody
            action.algorithm.setTarget(algorithm)
            bfb.algorithms.add(algorithm)
            state.actions.add(action)
            bfb.ecc.states.add(state)
        }
//        for (oV in inputVars) {
//            val stateTransition = factory.createStateTransition()
//            stateTransition.condition.setGuardCondition(generateInGuard(oV, stFactory))
//            bfb.ecc.transitions.add(stateTransition)
//        }

        return bfb
    }

    fun generateTypedConnections(factory: IEC61499Factory, types: List<DataType>): List<ParameterDeclaration> {
        val resTypes = mutableListOf<ParameterDeclaration>()
        types.forEach {
            val p = factory.createParameterDeclaration(null)
            p.type = it
            p.name = "${p.type}_VALUE"
            resTypes.add(p)
        }
        val p = factory.createParameterDeclaration(null)
        p.type = ElementaryType.STRING
        p.name = "NAME"
        resTypes.add(p)
        return resTypes
    }

    fun generateCode(code: String, factory: IEC61499Factory, stFactory: STFactory, algorithmDeclaration: AlgorithmDeclaration): List<Statement> {
        val parameterCollector =
            BiFunction { name: Identifier?, type: DataType? ->
                val parameterDeclaration: ParameterDeclaration =
                    factory.createParameterDeclaration(name)
                parameterDeclaration.type = type
                algorithmDeclaration.temporaryVariables.add(parameterDeclaration)
                Unit
            }
        return STConverter.parseStatementListWithDeclarations(
            stFactory,
            code,
            { t, u -> parameterCollector.apply(t, u) }
        )
    }

    fun generateOutCode(p: ParameterDeclaration, algorithmDeclaration: AlgorithmDeclaration, factory: IEC61499Factory, stFactory: STFactory): List<Statement> {
        var code = "VAR \n" +
                "TAG: STRING;\n" +
                "END_VAR;" +
                "TAG:= '#${p.name}';\n" +
                "NAME:=CONCAT(MAPPING, TAG);\n" +
                "VALUE:=${p.name};]]>"
        var statementList = generateCode(code, factory, stFactory, algorithmDeclaration)
        return statementList
    }

    fun generateInCode(p: ParameterDeclaration, algorithmDeclaration: AlgorithmDeclaration, factory: IEC61499Factory, stFactory: STFactory): List<Statement> {
        var code = "${p.name}:= ${p.type!!.stringify()}_VALUE;"

        return generateCode(code, factory, stFactory, algorithmDeclaration)
    }

    fun generateInGuard(p: ParameterDeclaration, stFactory: STFactory): Expression {
        var code = "(LEFT(NAME, LEN(NAME) - 7) = MAPPING) AND (RIGHT(NAME, LEN(NAME) - LEN(NAME) + ${p.name.length + 1}) = '#${p.name}')"
        return STConverter.parseExpression(stFactory, code)!!
    }
}



    private fun createFunctionBlockDeclaration(name: String, type: DataType, x: Int, y: Int, assignments: List<String>): FunctionBlockDeclaration {
        val block = converterArguments.factory.createFunctionBlockDeclaration(null)
        block.name = name
        block.typeReference.setTargetName(type.stringify())
        block.x = x
        block.y = y

        val parameterAssignments = assignments.map {
            val parameterAssign = converterArguments.factory.createParameterAssignment()
            parameterAssign.value = STConverter.parseLiteral(converterArguments.stFactory, it)
//            parameterAssign.parameterReference.setTargetName(it.third)
            parameterAssign
        }
        block.parameters.addAll(parameterAssignments)
        return block
    }
}