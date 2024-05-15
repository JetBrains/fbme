package org.fbme.ide.integration.fordiac.translator.cpp.composite

import org.fbme.ide.integration.fordiac.translator.cpp.AbstractTranslator
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclaration

class CompositeFBTypeHeaderTranslator(private val fb: CompositeFBTypeDeclaration) :
    AbstractTranslator(isHeader = true) {
    private val sb = StringBuilder()

    override val baseClass = "CCompositeFB"
    override fun type(): FBInterfaceDeclaration = fb

    fun translate(): String {
        sb.appendLine(this.constructIncludeGuardStart())
            .appendLine(this.constructHeaderIncludes())
            .appendLine(this.constructFBClassHeader())
            .appendLine(this.constructFBDeclaration(indent = "  "))
            .appendLine("private:")
            .appendLine(this.constructFBInterfaceDeclaration(indent = "  "))
            .appendLine(this.constructFBInterfaceSpecDeclaration(indent = "  "))

        addFBNetwork()

        sb.appendLine(this.constructAccessors(fb.inputParameters, functionName = "getDI", indent = "  "))
            .appendLine(this.constructAccessors(fb.outputParameters, functionName = "getDO", indent = "  "))
            .appendLine(this.constructAccessors(fb.sockets + fb.plugs, indent = "  "))
            .append("  FORTE_FB_DATA_ARRAY(")
            .append(fb.outputEvents.size)
            .append(", ")
            .append(fb.inputParameters.size)
            .append(", ")
            .append(fb.outputParameters.size)
            .append(", ")
            .append(fb.sockets.size + fb.plugs.size)
            .appendLine(");")
            .appendLine("public:")
            .append("  ")
            .append(this.constructFBClassName())
            .appendLine("(const CStringDictionary::TStringId pa_nInstanceNameId, CResource *pa_poSrcRes) :")
            .append("      ")
            .append(baseClass)
            .appendLine(
                "(pa_poSrcRes, &scm_stFBInterfaceSpec, pa_nInstanceNameId, &scm_stFBNData, m_anFBConnData, m_anFBVarsData) {"
            )
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

    override fun constructHeaderIncludes(): String {
        val s = StringBuilder()

        s.appendLine("#include \"cfb.h\"")
            .appendLine("#include \"typelib.h\"")
            .appendLine(super.constructHeaderIncludes())

        return s.toString()
    }

    private fun addFBNetwork() {
        if (fb.network.functionBlocks.isNotEmpty()) {
            sb.appendLine("  static const SCFB_FBInstanceData scm_astInternalFBs[];")
        }

        sb.appendLine("  static const SCFB_FBParameter scm_astParamters[];")

        if (fb.network.eventConnections.isNotEmpty()) {
            sb.appendLine("  static const SCFB_FBConnectionData scm_astEventConnections[];")
                .appendLine("  static const SCFB_FBFannedOutConnectionData scm_astFannedOutEventConnections[];")
        }

        if (fb.network.dataConnections.isNotEmpty()) {
            sb.appendLine("  static const SCFB_FBConnectionData scm_astDataConnections[];")
                .appendLine("  static const SCFB_FBFannedOutConnectionData scm_astFannedOutDataConnections[];")
        }

        sb.appendLine("  static const SCFB_FBNData scm_stFBNData;")
    }
}
