package org.fbme.ide.integration.fordiac.translator.cpp.adapter

import org.fbme.ide.integration.fordiac.translator.cpp.AbstractTranslator
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.st.types.ArrayType

class AdapterFBTypeHeaderTranslator(private val fb: AdapterTypeDeclaration) : AbstractTranslator(isHeader = true) {
    private val sb = StringBuilder()

    override val baseClass: String = "CAdapter"
    override fun type(): AdapterTypeDeclaration = fb

    fun translate(): String {
        sb.appendLine(this.constructIncludeGuardStart())
            .append(this.constructHeaderIncludes())
            .appendLine(this.constructFBClassHeader())
            .appendLine(this.constructFBDeclaration(indent = "  "))
            .appendLine("private:")
            .appendLine(this.constructFBInterfaceDeclaration(indent = "  "))
            .appendLine(this.constructFBInterfaceSpecDeclaration(indent = "  "))
            .appendLine(
                constructAdapterAccessors(
                    parameters = fb.inputParameters,
                    socketFunctionName = "getDI",
                    plugFunctionName = "getDO",
                    indent = "  "
                )
            )
            .appendLine(
                constructAdapterAccessors(
                    parameters = fb.outputParameters,
                    socketFunctionName = "getDO",
                    plugFunctionName = "getDI",
                    indent = "  "
                )
            )

        val sockets = fb.templateTypeDescriptor.socketPorts.map { it.declaration as SocketDeclaration }
        val plugs = fb.templateTypeDescriptor.socketPorts.map { it.declaration as PlugDeclaration }
        sb.appendLine(this.constructAccessors(sockets + plugs, indent = "  "))
            .appendLine("public:")

        addEventAccessors(fb.inputEvents, indent = "  ")
        addEventAccessors(fb.outputEvents, indent = "  ")

        sb.appendLine("private:")
            .append("  FORTE_ADAPTER_DATA_ARRAY(")
            .append(fb.inputEvents.size)
            .append(", ")
            .append(fb.outputEvents.size)
            .append(", ")
            .append(fb.inputParameters.size)
            .append(", ")
            .append(fb.outputParameters.size)
            .append(", ")
            .append(sockets.size + plugs.size)
            .appendLine(");")
            .appendLine("public:")
            .append("  ")
            .append(this.constructFBClassName())
            .append("(CStringDictionary::TStringId pa_anAdapterInstanceName, ")
            .appendLine("CResource *pa_poSrcRes, bool pa_bIsPlug) :")
            .append("      ")
            .append(baseClass)
            .append("(pa_poSrcRes, &scm_stFBInterfaceSpecSocket, pa_anAdapterInstanceName, ")
            .appendLine("&scm_stFBInterfaceSpecPlug, pa_bIsPlug, m_anFBConnData, m_anFBVarsData) {")
            .appendLine("   };")
            .append("  virtual ~")
            .append(this.constructFBClassName())
            .appendLine("() = default;")
            .appendLine("};")
            .appendLine(this.constructIncludeGuardEnd())

        val res = sb.toString()
        sb.clear()

        return res.toString()
    }

    override fun constructHeaderIncludes(): String {
        val s = StringBuilder()

        s.appendLine("#include \"adapter.h\"")
            .appendLine("#include \"typelib.h\"")
            .appendLine(super.constructHeaderIncludes())

        return s.toString()
    }

    override fun constructFBInterfaceSpecDeclaration(indent: String): String {
        val s = StringBuilder()

        s.append(indent)
            .appendLine("static const SFBInterfaceSpec scm_stFBInterfaceSpecSocket;")
            .append(indent)
            .appendLine("static const SFBInterfaceSpec scm_stFBInterfaceSpecPlug;")

        return s.toString()
    }

    override fun constructFBDeclaration(indent: String): String =
        "${indent}DECLARE_ADAPTER_TYPE(${this.constructFBClassName()})"

    override fun constructEventConstants(events: List<EventDeclaration>, indent: String): String {
        val s = StringBuilder()

        s.append(indent)
            .appendLine("public:")
            .appendLine(super.constructEventConstants(events, "$indent  "))
            .append(indent)
            .appendLine("private:")

        return s.toString()
    }

    private fun constructAdapterAccessors(
        parameters: Iterable<ParameterDeclaration>,
        socketFunctionName: String,
        plugFunctionName: String,
        indent: String
    ): String {
        val s = StringBuilder()

        parameters.forEachIndexed { index, param ->
            val isArray = param.type is ArrayType
            val typeName = param.type!!.stringify()

            s.append(indent)
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
                .append(param.name)
                .appendLine("() {")
                .append(indent)

            if (isArray) {
                s.append("  return static_cast<CIEC_")
                    .append(typeName)
                    .append("*>(static_cast<CIEC_ARRAY *>((isSocket()) ? ")
                    .append(socketFunctionName)
                    .append("(")
                    .append(index)
                    .append(") : ")
                    .append(plugFunctionName)
                    .append("(")
                    .append(index)
                    .appendLine("))[0]); //the first element marks the start of the array")
            } else {
                s.append("  return *static_cast<CIEC_")
                    .append(typeName)
                    .append("*>((isSocket()) ? ")
                    .append(socketFunctionName)
                    .append("(")
                    .append(index)
                    .append(") : ")
                    .append(plugFunctionName)
                    .append("(")
                    .append(index)
                    .appendLine("));")
            }

            s.append(indent)
                .appendLine("}")
        }

        return s.toString()
    }

    private fun addEventAccessors(events: Iterable<EventDeclaration>, indent: String = "") {
        events.forEach { event ->
            sb.append(indent)
                .append("int ")
                .append(event.name)
                .appendLine("() {")
                .append(indent)
                .append("  return m_nParentAdapterListEventID + scm_nEvent")
                .append(event.name)
                .appendLine("ID;")
                .append(indent)
                .appendLine("}")
        }
    }
}