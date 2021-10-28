package org.fbme.smvDebugger.visualization

import com.intellij.ui.JBColor
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers
import jetbrains.mps.project.MPSProject
import org.fbme.ide.richediting.editor.NetworkInstanceNavigationSupport.navigate
import org.fbme.ide.richediting.inspections.Inspection
import org.fbme.ide.richediting.inspections.InspectionManagerImpl.Companion.getInstance
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.fbnetwork.PortPath
import org.fbme.lib.iec61499.instances.NetworkInstance.Companion.createForCompositeFBType
import org.fbme.smvDebugger.model.SystemItemType
import org.fbme.smvDebugger.model.SystemItemValue

class SystemHighlighter(private val project: MPSProject, private val compositeFb: CompositeFBTypeDeclaration) {
    fun highlight(itemValues: List<SystemItemValue?>?) {
        project.modelAccess.runReadAction {
            val networkInstance = createForCompositeFBType(compositeFb)
            val editor = navigate(project, networkInstance, false)
            val editorComponent = editor.currentEditorComponent
            val inspectionManager = getInstance(editorComponent)
            val networkInspector = inspectionManager!!.installInspector(networkInstance) {}
            networkInspector!!.clear()
            val fbNetwork = compositeFb.network
            val components: List<FunctionBlockDeclaration?> = fbNetwork.functionBlocks
            for (itemValue in itemValues!!) {
                val item = itemValue!!.item
                if (item.fbNames!!.size == 0) {
                    continue
                }
                var component: FunctionBlockDeclaration? = null
                var curComponents = components
                val i = Wrappers._int(0)
                while (i.value < item.fbNames.size) {
                    component = curComponents.stream()
                        .filter { it: FunctionBlockDeclaration? -> it!!.name == item.fbNames[i.value] }
                        .findFirst()
                        .orElse(null)
                    curComponents =
                        if (component != null && component.typeReference.getTarget() is CompositeFBTypeDeclaration) {
                            val compositeDeclaration =
                                component.typeReference.getTarget() as CompositeFBTypeDeclaration?
                            compositeDeclaration!!.network.functionBlocks
                        } else {
                            break
                        }
                    i.value++
                }
                if (component != null) {
                    if (item.type == SystemItemType.ECC) {
                        networkInspector.setInspectionForComponent(
                            component,
                            Inspection(itemValue.value!!, HIGHLIGHT_COLOR)
                        )
                    } else {
                        val ports = component.ports
                        ports.stream()
                            .filter { it.portTarget!!.name == item.itemName }
                            .findFirst()
                            .ifPresent { port: PortPath<out Declaration>? ->
                                networkInspector.setInspectionForPort(
                                    port!!, Inspection(itemValue.value!!, HIGHLIGHT_COLOR)
                                )
                            }
                    }
                }
            }
        }
    }

    companion object {
        private val HIGHLIGHT_COLOR = JBColor.GREEN.darker().darker()
    }
}