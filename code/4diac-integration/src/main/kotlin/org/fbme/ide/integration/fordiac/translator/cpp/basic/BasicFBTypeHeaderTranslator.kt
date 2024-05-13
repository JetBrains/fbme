package org.fbme.ide.integration.fordiac.translator.cpp.basic

import org.fbme.ide.integration.fordiac.translator.cpp.AbstractTranslator
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase

class BasicFBTypeHeaderTranslator(private val fb: BasicFBTypeDeclaration) : AbstractTranslator(isHeader = true) {
    private val sb = StringBuilder()

    override val baseClass: String = "CBasicFB"

    override fun type(): BasicFBTypeDeclaration = fb

    fun translate(): String {
        sb.appendLine(this.constructIncludeGuardStart())
            .appendLine(this.constructHeaderIncludes())
            .appendLine(this.constructFBClassHeader())
            .append("  ")
            .appendLine(this.constructFBDeclaration())
            .appendLine("private:")
            .appendLine(this.constructFBInterfaceDeclaration(indent = "  "))
            .append("  ")
            .appendLine(this.constructFBInterfaceSpecDeclaration())

        addInternalVarDelcaration()

        if (fb.inputParameters.isNotEmpty() || fb.outputParameters.isNotEmpty()) {
            addInitialValueAssignmentDeclaration()
        }
        sb.appendLine(this.constructAccessors(parameters = fb.inputParameters, functionName = "getDI", indent = "  "))
            .appendLine(
                this.constructAccessors(
                    parameters = fb.outputParameters,
                    functionName = "getDO",
                    indent = "  "
                )
            )
            .appendLine(
                this.constructAccessors(
                    parameters = fb.internalVariables,
                    functionName = "getVarInternal",
                    indent = "  "
                )
            )

        addAccessors(this.type().sockets + this.type().plugs, indent = "  ")
        addAlgorithms(indent = "  ")
        addStates(indent = "  ")

        sb.appendLine("  virtual void executeEvent(int pa_nEIID);")

        addBasicFBDataArray(indent = "  ")

        sb.appendLine("public:")
            .append("  ")
            .append(this.constructFBClassName())
            .appendLine("(CStringDictionary::TStringId pa_nInstanceNameId, CResource *pa_poSrcRes) :")
            .append("      ")
            .append(baseClass)
            .append("(pa_poSrcRes, &scm_stFBInterfaceSpec, pa_nInstanceNameId, ")
            .append(
                if (fb.internalVariables.isNotEmpty()) {
                    "&scm_stInternalVars"
                } else {
                    "nullptr"
                }
            )
            .appendLine(", m_anFBConnData, m_anFBVarsData) {")
            .appendLine("  };")
            .append("  virtual ~")
            .append(this.constructFBClassName())
            .appendLine("() = default;")
            .appendLine("};")
            .appendLine(this.constructIncludeGuardEnd())

        val res = sb.toString()
        sb.clear()

        return res
    }

    private fun addInternalVarDelcaration() {
        if (fb.internalVariables.isNotEmpty()) {
            sb.appendLine("static const CStringDictionary::TStringId scm_anInternalsNames[];")
                .appendLine("static const CStringDictionary::TStringId scm_anInternalsTypeIds[];")
                .appendLine("static const SInternalVarsInformation scm_stInternalVars;")
        }
    }

    private fun addBasicFBDataArray(indent: String) {
        sb.append(indent)
            .append("FORTE_BASIC_FB_DATA_ARRAY(")
            .append(fb.outputEvents.size)
            .append(", ")
            .append(fb.inputParameters.size)
            .append(", ")
            .append(fb.outputParameters.size)
            .append(", ")
            .append(fb.internalVariables.size)
            .append(", ")
            .append(fb.sockets.size + fb.plugs.size)
            .appendLine(");")
    }


    private fun addAccessors(adapters: Iterable<FunctionBlockDeclarationBase>, indent: String) {
        adapters.forEachIndexed { index, adapter ->
            sb.append(indent)
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
    }

    private fun addInitialValueAssignmentDeclaration() = sb.appendLine("virtual void setInitialValues();")

    override fun constructHeaderIncludes(): String {
        val s = StringBuilder()
        s.appendLine("#include \"basicfb.h\"")
//            .append(super.constructHeaderIncludes())
            .append(this.constructTypeIncludes(fb.inputParameters + fb.outputParameters + fb.internalVariables))
            .append(this.constructAdapterIncludes(this.type()))

        return s.toString()
    }

    private fun addAlgorithms(indent: String) {
        this.type().algorithms.forEach { alg ->
            sb.append(indent)
                .appendLine("void alg_${alg.name}(void);")
        }
    }

    private fun addStates(indent: String) {
        this.type().ecc.states.forEachIndexed { index, state ->
            sb.append(indent)
                .append("static const TForteInt16 scm_nState")
                .append(state.name)
                .append(" = ")
                .append(index)
                .appendLine(";")
        }

        this.type().ecc.states.forEachIndexed { index, state ->
            sb.append(indent)
                .append("void enterState")
                .append(state.name)
                .appendLine("(void);")
        }
    }
}
