package org.fbme.ide.integration.fordiac.translator.cpp

import org.fbme.ide.integration.fordiac.translator.lua.calcEventPortWith
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase
import org.fbme.lib.st.types.ArrayType

abstract class AbstractTranslator(isHeader: Boolean) {
    protected abstract val baseClass: String
    private val fileNameExtension = if (isHeader) ".h" else ".cpp"

    protected abstract fun type(): FBInterfaceDeclaration

    protected fun fileName(): String = this.baseClass + fileNameExtension

    protected fun constructIncludeGuardStart(): String {
        val name = type().name.uppercase()

        return """
            |#ifndef _${name}_H_
            |#define _${name}_H_
        """.trimMargin()
    }

    protected fun constructIncludeGuardEnd() = "#endif // _${type().name.uppercase()}_H_"
    protected fun constructFBClassHeader() = "class ${this.constructFBClassName()}: public ${this.baseClass} {"
    protected fun constructFBClassName() = "FORTE_${this.type().name}"
    protected fun constructFORTEString(s: String) = "g_nStringId$s"
    protected fun constructFORTENameList(declarations: Iterable<Declaration>) =
        declarations.joinToString(", ") { this.constructFORTEString(it.name) }

    protected fun constructFORTETypeList(params: Iterable<ParameterDeclaration>): String {
        fun processParameter(param: ParameterDeclaration): String {
            val sb = StringBuilder()

            if (param.type is ArrayType) {
                sb.append(this.constructFORTEString("ARRAY"))
                    .append(", ${(param as ArrayType).dimensions!!.stringify()}")
                    .append(", ")
            }
            sb.append(this.constructFORTEString(param.type!!.stringify()))

            return sb.toString()
        }

        return params.joinToString(separator = ", ") { processParameter(it) }
    }

    protected open fun constructHeaderIncludes(): String {
        val sb = StringBuilder()

        val parameterTypesIncludes =
            this.constructTypeIncludes(this.type().inputParameters + this.type().outputParameters)
        sb.appendLine(parameterTypesIncludes)

        val adapterTypesInclude = this.constructAdapterIncludes(this.type())
        sb.appendLine(adapterTypesInclude)

        return sb.toString()
    }

    protected fun constructTypeIncludes(params: Iterable<ParameterDeclaration>): String {
        val sb = StringBuilder()
        val typeNames = params.map { it.type!!.stringify() }.toSet()

        typeNames.forEach { typeName ->
            sb.appendLine("#include \"forte_${typeName.lowercase()}.h\"")

            if (typeName.startsWith("ANY")) {
                sb.append("#error type contains variables of type ANY. ")
                    .appendLine("Please check the usage of these variables as we can not gurantee correct usage on export!")
            }
        }

        val arrayExists = params.any { it.type!! is ArrayType }
        if (arrayExists) {
            sb.appendLine("#include \"forte_array.h\"")
        }
        sb.appendLine("#include \"forte_array_at.h\"")

        return sb.toString()
    }

    protected fun constructAdapterIncludes(type: FBInterfaceDeclaration): String {
        val sb = StringBuilder()
        val typeNames =
            (type.templateTypeDescriptor.socketPorts.map { (it.declaration as SocketDeclaration).type.typeName } +
                    type.templateTypeDescriptor.plugPorts.map { (it.declaration as PlugDeclaration).type.typeName }
                    ).toSet()

        typeNames.forEach { sb.appendLine("#include \"$it.h\"") }

        return sb.toString()
    }

    protected fun constructImplIncludes(): String {
        val sb = StringBuilder()

        sb.appendLine("#include \"${this.type().name}.h\"")
            .appendLine("#ifdef FORTE_ENABLE_GENERATED_SOURCE_CPP")
            .appendLine("#include \"${this.type().name}_gen.cpp\"")
            .appendLine("#endif")
            .appendLine()

        val params = mutableListOf<ParameterDeclaration>()

        if (this.type() is BasicFBTypeDeclaration) {
            (this.type() as BasicFBTypeDeclaration).algorithms.forEach { algorithm ->
                params.addAll(algorithm.temporaryVariables)
            }
        }

        sb.appendLine(constructTypeIncludes(params))

        return sb.toString()
    }

    protected fun constructFBDeclaration(indent: String = "") =
        "${indent}DECLARE_FIRMWARE_FB(${this.constructFBClassName()})"

    protected fun contructFBDefinition() = "DEFINE_FIRMWARE_FB(${this.constructFBClassName()}, " +
            "${this.constructFORTEString(this.type().name)})"

    protected fun constructEventConstants(events: List<EventDeclaration>, indent: String): String {
        val sb = StringBuilder()

        events.forEachIndexed { ind, event ->
            sb.appendLine("${indent}static const TEventID scm_nEvent${event.name}ID = $ind;")
        }

        return sb.toString()
    }

    private fun List<EventDeclaration>.hasAssociations() = this.any { it.associations.isNotEmpty() }

    protected fun hasInputWith() = this.type().inputEvents.hasAssociations()
    protected fun hasOutputWith() = this.type().outputEvents.hasAssociations()

    protected fun constructFBEventInputInterfaceDecl(indent: String): String {
        val sb = StringBuilder()
        val inputEvents = this.type().inputEvents

        if (inputEvents.isNotEmpty()) {
            val eventConstants = this.constructEventConstants(inputEvents, indent)
            sb.appendLine(eventConstants)

            if (this.hasInputWith()) {
                sb.append(indent)
                    .appendLine("static const TDataIOID scm_anEIWith[];")
            }

            sb.append(indent)
                .appendLine("static const TForteInt16 scm_anEIWithIndexes[];")
                .append(indent)
                .appendLine("static const CStringDictionary::TStringId scm_anEventInputNames[];")
        }

        return sb.toString()
    }

    protected fun constructFBEventOutputInterfaceDecl(indent: String): String {
        val sb = StringBuilder()
        val outputEvents = this.type().outputEvents

        if (outputEvents.isNotEmpty()) {
            val eventConstants = this.constructEventConstants(outputEvents, indent)
            sb.appendLine(eventConstants)

            if (this.hasOutputWith()) {
                sb.append(indent)
                    .appendLine("static const TDataIOID scm_anEOWith[];")
            }

            sb.append(indent)
                .appendLine("static const TForteInt16 scm_anEOWithIndexes[];")
                .append(indent)
                .appendLine("static const CStringDictionary::TStringId scm_anEventOutputNames[];")
        }

        return sb.toString()
    }

    protected fun constructFBInterfaceDeclaration(indent: String): String {
        val sb = StringBuilder()
        val hasInputVars = this.type().inputParameters.isNotEmpty()

        if (hasInputVars) {
            sb.append(indent)
                .appendLine("static const CStringDictionary::TStringId scm_anDataInputNames[];")
                .append(indent)
                .appendLine("static const CStringDictionary::TStringId scm_anDataInputTypeIds[];")
        }

        val hasOutputVars = this.type().outputParameters.isNotEmpty()

        if (hasOutputVars) {
            sb.append(indent)
                .appendLine("static const CStringDictionary::TStringId scm_anDataOutputNames[];")
                .append(indent)
                .appendLine("static const CStringDictionary::TStringId scm_anDataOutputTypeIds[];")
        }

        sb.appendLine(this.constructFBEventInputInterfaceDecl(indent))
            .appendLine(this.constructFBEventOutputInterfaceDecl(indent))

        this.type().templateTypeDescriptor.socketPorts.forEachIndexed { index, socketPort ->
            sb.append(indent)
                .appendLine("static const int scm_n${socketPort.name}AdpNum = $index;")
        }

        val socketPortAmount = this.type().templateTypeDescriptor.socketPorts.size

        this.type().templateTypeDescriptor.plugPorts.forEachIndexed { index, plugPort ->
            sb.append(indent)
                .appendLine("static const int scm_n${plugPort.name}AdpNum = ${index + socketPortAmount};")
        }

        val plugPortAmount = this.type().templateTypeDescriptor.plugPorts.size

        if (socketPortAmount != 0 || plugPortAmount != 0) {
            sb.append(indent)
                .appendLine("static const SAdapterInstanceDef scm_astAdapterInstances[];")
        }

        return sb.toString()
    }

    protected fun constructFBInterfaceDefinition(): String {
        val sb = StringBuilder()

        val (eventInputWith, eventInputWithIndices) = calcEventPortWith(
            this.type().inputEvents,
            this.type().inputParameters.map { it.name }
        )

        val (eventOutputWith, eventOutputWithIndices) = calcEventPortWith(
            this.type().outputEvents,
            this.type().outputParameters.map { it.name }
        )

        val hasInputPorts = this.type().inputParameters.isNotEmpty()

        if (hasInputPorts) {
            sb.append("const CStringDictionary::TStringId ${this.constructFBClassName()}")
                .append("::scm_anDataInputNames[] = {")
                .append(this.constructFORTENameList(this.type().inputParameters))
                .appendLine("};")
                .append("const CStringDictionary::TStringId ${this.constructFBClassName()}")
                .append("::scm_anDataInputTypeIds[] = {")
                .append(this.constructFORTETypeList(this.type().inputParameters))
                .appendLine("};")
        }

        val hasOutputPorts = this.type().outputParameters.isNotEmpty()

        if (hasOutputPorts) {
            sb.append("const CStringDictionary::TStringId ${this.constructFBClassName()}")
                .append("::scm_anDataOutputNames[] = {")
                .append(this.constructFORTENameList(this.type().outputParameters))
                .appendLine("};")
                .append("const CStringDictionary::TStringId ${this.constructFBClassName()}")
                .append("::scm_anDataOutputTypeIds[] = {")
                .append(this.constructFORTETypeList(this.type().outputParameters))
                .appendLine("};")
        }

        val hasEventInputPorts = this.type().inputEvents.isNotEmpty()

        if (hasEventInputPorts) {
            if (eventInputWith.isNotEmpty()) {
                sb.append("const TDataIOID ")
                    .append(this.constructFBClassName())
                    .append("::scm_anEIWith[] = {")
                    .append(eventInputWith.joinToString(separator = ", "))
                    .appendLine("};")
            }
            sb.append("const TForteInt16 ")
                .append(this.constructFBClassName())
                .append("::scm_anEIWithIndexes[] = {")
                .append(eventInputWithIndices.joinToString(separator = ", "))
                .appendLine("};")
                .append("const CStringDictionary::TStringId ")
                .append(this.constructFBClassName())
                .append("::scm_anEventInputNames[] = {")
                .append(this.constructFORTENameList(this.type().inputEvents))
                .appendLine("};")
        }

        val hasEventOutputPorts = this.type().outputEvents.isNotEmpty()

        if (hasEventOutputPorts) {
            if (eventOutputWith.isNotEmpty()) {
                sb.append("const TDataIOID ")
                    .append(this.constructFBClassName())
                    .append("::scm_anEOWith[] = {")
                    .append(eventOutputWith.joinToString(separator = ", "))
                    .appendLine("};")
            }
            sb.append("const TForteInt16 ")
                .append(this.constructFBClassName())
                .append("::scm_anEOWithIndexes[] = {")
                .append(eventOutputWithIndices.joinToString(separator = ", "))
                .appendLine("};")
                .append("const CStringDictionary::TStringId ")
                .append(this.constructFBClassName())
                .append("::scm_anEventOutputNames[] = {")
                .append(this.constructFORTENameList(this.type().outputEvents))
                .appendLine("};")
        }

        val hasSocketPorts = this.type().templateTypeDescriptor.socketPorts.isNotEmpty()
        val hasPlugPorts = this.type().templateTypeDescriptor.plugPorts.isNotEmpty()

        if (hasSocketPorts || hasPlugPorts) {
            sb.append("const SAdapterInstanceDef ")
                .append(this.constructFBClassName())
                .appendLine("::scm_astAdapterInstances[] = {")
            val adapterPorts =
                this.type().templateTypeDescriptor.socketPorts + this.type().templateTypeDescriptor.plugPorts

            val ports = adapterPorts.map { port ->
                val s = StringBuilder()
                s.append("  {")

                if (port.declaration is SocketDeclaration) {
                    val socketTypeName = (port.declaration as SocketDeclaration).type.typeName
                    s.append(this.constructFORTEString(socketTypeName))
                } else {
                    val plugTypeName = (port.declaration as PlugDeclaration).type.typeName
                    s.append(this.constructFORTEString(plugTypeName))
                }

                s.append(", ")
                    .append(this.constructFORTEString(port.name))
                    .append(", ")
                    .append(!port.isInput) // todo: adapter is socket?
                    .append("}")
                s.toString()
            }
            sb.appendLine(ports.joinToString(",\n"))
                .appendLine("};")
        }

        return sb.toString()
    }

    protected fun constructFBInterfaceSpecDeclaration(indent: String = "") =
        "${indent}static const SFBInterfaceSpec scm_stFBInterfaceSpec;"

    protected fun constructFBInterfaceSpecDefinition(): String {
        val sb = StringBuilder()

        sb.append("const SFBInterfaceSpec ")
            .append(this.constructFBClassName())
            .appendLine("::scm_stFBInterfaceSpec = {")
            .append("  ")
            .append(this.type().inputEvents.size)
            .append(", ")

        val noInputEvents = this.type().inputEvents.isEmpty()

        if (noInputEvents) {
            sb.append("nullptr, nullptr, nullptr")
        } else {
            sb.append("scm_anEventInputNames, ")
                .append(
                    if (this.hasInputWith()) {
                        "scm_anEIWith"
                    } else {
                        "nullptr"
                    }
                )
                .append(", scm_anEIWithIndexes")
        }

        sb.appendLine(",")
            .append("  ")
            .append(this.type().outputEvents.size)
            .append(", ")

        val noOutputEvents = this.type().outputEvents.isEmpty()

        if (noOutputEvents) {
            sb.append("nullptr, nullptr, nullptr")
        } else {
            sb.append("scm_anEventOutputNames, ")
                .append(
                    if (this.hasOutputWith()) {
                        "scm_anEOWith"
                    } else {
                        "nullptr"
                    }
                )
                .append(", scm_anEOWithIndexes")
        }

        sb.appendLine(",")
            .append("  ")
            .append(this.type().inputParameters.size)
            .append(", ")

        val noInputParameters = this.type().inputParameters.isEmpty()

        sb.append(
            if (noInputParameters) {
                "nullptr, nullptr"
            } else {
                "scm_anDataInputNames, scm_anDataInputTypeIds"
            }
        )
            .appendLine(",")
            .append("  ")
            .append(this.type().outputParameters.size)
            .append(", ")

        val noOutputParameters = this.type().outputParameters.isEmpty()

        sb.append(
            if (noOutputParameters) {
                "nullptr, nullptr"
            } else {
                "scm_anDataOutputNames, scm_anDataOutputTypeIds"
            }
        )
            .appendLine(",")

        val adapterPortsAmount = this.type().templateTypeDescriptor.socketPorts.size +
                this.type().templateTypeDescriptor.plugPorts.size

        sb.append("  ")
            .append(adapterPortsAmount)
            .append(", ")
            .appendLine(
                if (adapterPortsAmount > 0) {
                    "scm_astAdapterInstances"
                } else {
                    "nullptr"
                }
            )
            .appendLine("};")

        return sb.toString()
    }

    protected fun constructAccessors(adapters: Iterable<FunctionBlockDeclarationBase>, indent: String): String {
        val s = StringBuilder()

        adapters.forEachIndexed { index, adapter ->
            s.append(indent)
                .append("FORTE_")
                .append(adapter.type.typeName)
                .append("& ")
                .append(EXPORT_PREFIX)
                .append(adapter.name)
                .appendLine("() {")
                .append(indent)
                .append("  return (*static_cast<FORTE_")
                .append(adapter.type.typeName)
                .append("*>(m_apoAdapters[")
                .append(index)
                .appendLine("]));")
                .append(indent)
                .appendLine("};")
        }

        return s.toString()
    }

    protected fun constructAccessors(
        parameters: Iterable<ParameterDeclaration>,
        functionName: String,
        indent: String
    ): String {
        val sb = StringBuilder()

        parameters.forEachIndexed { index, param ->
            val isArray = param.type is ArrayType
            val typeName = param.type!!.stringify()

            sb.append(indent)
                .append("CIEC_")
                .append(typeName)
                .append(" ")
                .append(
                    if (isArray) {
                        "*"
                    } else {
                        "&"
                    }
                )
                .append(EXPORT_PREFIX)
                .append(param.name)
                .appendLine("() {")
                .append(indent)

            if (isArray) {
                sb.append("  return static_cast<CIEC_")
                    .append(typeName)
                    .append("*>((*static_cast<CIEC_ARRAY *>(")
                    .append(functionName)
                    .append("(")
                    .append(index)
                    .appendLine(")))[0]); //the first element marks the start of the array")
            } else {
                sb.append("  return *static_cast<CIEC_")
                    .append(typeName)
                    .append("*>(")
                    .append(functionName)
                    .append("(")
                    .append(index)
                    .appendLine("));")
            }

            sb.append(indent)
                .appendLine("}")
        }

        return sb.toString()
    }

    companion object {
        internal const val EXPORT_PREFIX = "st_"
    }
}
