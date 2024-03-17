package org.fbme.ide.richediting.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.project.DumbAware
import com.intellij.openapi.project.Project
import com.intellij.openapi.ui.ComboBox
import com.intellij.openapi.ui.DialogWrapper
import com.intellij.ui.components.JBTextField
import com.intellij.ui.dsl.builder.*
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.fbnetwork.*
import org.fbme.lib.st.expressions.*
import org.fbme.lib.st.types.ElementaryType
import javax.swing.JComponent


class GenerateAdapterRouterAction : AnAction(), DumbAware {

    override fun update(event: AnActionEvent) = event.executeReadAction {
        val repository = event.repository
        val node = event.getData(MPSCommonDataKeys.NODE)
        val adapterTypeDeclaration = node?.let { repository.adapterOrNull<AdapterTypeDeclaration>(node) }
        event.presentation.isEnabledAndVisible = adapterTypeDeclaration != null
    }

    override fun actionPerformed(event: AnActionEvent) {
        val (outputsCount, routerName) = event.executeReadAction<Pair<Int, String>?> {
            val repository = event.repository

            val node = event.getRequiredData(MPSCommonDataKeys.NODE)
            val adapterTypeDeclaration = repository.adapter<AdapterTypeDeclaration>(node)

            val parameterNames = adapterTypeDeclaration.outputParameters
                .mapNotNull { parameter -> parameter.name.takeIf { parameter.type == ElementaryType.INT } }
                .toTypedArray()
            val dialog = GenerateAdapterRouterDialog(checkNotNull(event.project), parameterNames)
            if (!dialog.showAndGet()) {
                return@executeReadAction null
            }
            val outputsCount = dialog.outputsCount
            val routerName = dialog.routeParameterName
            outputsCount to routerName
        } ?: return
        event.executeWriteActionInEditor {
            val repository = event.repository
            val factory = repository.iec61499Factory
            val node = event.getRequiredData(MPSCommonDataKeys.NODE)
            val adapterTypeDeclaration = repository.adapter<AdapterTypeDeclaration>(node)
            val adapterName = adapterTypeDeclaration.name
            val model = event.getRequiredData(MPSCommonDataKeys.CONTEXT_MODEL)

            val routerDeclaration = factory.createCompositeFBTypeDeclaration(
                StringIdentifier("${adapterName}_router")
            )
            model.addRootNode((routerDeclaration as PlatformElement).node)

            val socket = factory.createSocketDeclaration(StringIdentifier("${adapterName}_socket"))
            socket.typeReference.setTarget(adapterTypeDeclaration)
            routerDeclaration.sockets.add(socket)

            for (i in 0 until outputsCount) {
                val plug = factory.createPlugDeclaration(StringIdentifier("${adapterName}_plug$i"))
                plug.typeReference.setTarget(adapterTypeDeclaration)
                routerDeclaration.plugs.add(plug)
            }
            val switchGenerator = SwitchGenerator(factory, repository.stFactory)
            switchGenerator.addSocketPlugsSwitch(
                adapterName = "${adapterName}_internalLeftSwitch",
                model = model,
                root = routerDeclaration,
                socket = socket,
                plugs = routerDeclaration.plugs,
                socketToPlug = true,
                routerName = routerName,
            )
            switchGenerator.addSocketPlugsSwitch(
                adapterName = "${adapterName}_internalRightSwitch",
                model = model,
                root = routerDeclaration,
                socket = socket,
                plugs = routerDeclaration.plugs,
                socketToPlug = false,
                routerName = routerName,
            )
        }
    }

    @Suppress("UnstableApiUsage")
    private class GenerateAdapterRouterDialog(
        project: Project,
        private val parametersNames: Array<String>,
    ) : DialogWrapper(project) {
        private lateinit var outputsCountField: Cell<JBTextField>
        private lateinit var _routeParameterName: Cell<ComboBox<String>>

        val outputsCount: Int get() = outputsCountField.component.text.toInt()
        val routeParameterName: String get() = _routeParameterName.component.item

        init {
            init()
            title = "Generate Adapter Router"
        }

        override fun createCenterPanel(): JComponent = panel {
            row("Outputs count:") {
                outputsCountField = intTextField(1..20)
            }
            row("Output selector field:") {
                _routeParameterName = comboBox(parametersNames)
            }
        }

    }

}
