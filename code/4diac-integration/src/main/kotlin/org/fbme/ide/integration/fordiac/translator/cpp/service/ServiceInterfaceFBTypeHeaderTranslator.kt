package org.fbme.ide.integration.fordiac.translator.cpp.service

import org.fbme.ide.integration.fordiac.translator.cpp.AbstractTranslator
import org.fbme.lib.iec61499.declarations.ServiceInterfaceFBTypeDeclaration

class ServiceInterfaceFBTypeHeaderTranslator(private val fb: ServiceInterfaceFBTypeDeclaration) :
    AbstractTranslator(isHeader = true) {

    private val sb = StringBuilder()

    override val baseClass = "CFunctionBlock"

    override fun type(): ServiceInterfaceFBTypeDeclaration = fb

    fun translate(): String {
        sb.appendLine(this.constructIncludeGuardStart())
            .appendLine(this.constructHeaderIncludes())
            .appendLine(this.constructFBClassHeader())
            .appendLine(this.constructFBDeclaration(indent = "  "))
            .appendLine("private:")
            .appendLine(this.constructFBInterfaceDeclaration(indent = "  "))
            .appendLine(this.constructFBInterfaceSpecDeclaration(indent = "  "))
            .appendLine(this.constructAccessors(parameters = fb.inputParameters, functionName = "getDI", indent = "  "))
            .appendLine(
                this.constructAccessors(
                    parameters = fb.outputParameters,
                    functionName = "getDO",
                    indent = "  "
                )
            )
            .appendLine(this.constructAccessors(adapters = fb.sockets + fb.plugs, indent = "  "))
            .append("  FORTE_FB_DATA_ARRAY(")
            .append(fb.outputEvents.size)
            .append(", ")
            .append(fb.inputParameters.size)
            .append(", ")
            .append(fb.outputParameters.size)
            .append(", ")
            .append(fb.sockets.size + fb.plugs.size)
            .appendLine(");")
            .appendLine("  void executeEvent(int pa_nEIID);")
            .appendLine("public:")
            .append("   ")
            .append(this.constructFBClassName())
            .appendLine("(const CStringDictionary::TStringId pa_nInstanceNameId, CResource *pa_poSrcRes) :")
            .append("       ")
            .append(baseClass)
            .appendLine("( pa_poSrcRes, &scm_stFBInterfaceSpec, pa_nInstanceNameId, m_anFBConnData, m_anFBVarsData) {")
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

        s.appendLine("#include \"funcbloc.h\"")
            .appendLine(super.constructHeaderIncludes())

        return s.toString()
    }
}
