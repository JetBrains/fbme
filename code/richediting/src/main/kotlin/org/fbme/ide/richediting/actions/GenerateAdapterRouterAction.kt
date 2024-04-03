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
import org.fbme.ide.richediting.utils.SwitchGenerator
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
            val node = event.getRequiredData(MPSCommonDataKeys.NODE)
            val adapterTypeDeclaration = repository.adapter<AdapterTypeDeclaration>(node)
            val adapterName = adapterTypeDeclaration.name
            val model = event.getRequiredData(MPSCommonDataKeys.CONTEXT_MODEL)
            val switchGenerator = SwitchGenerator(repository.iec61499Factory, repository.stFactory)
            switchGenerator.generateRouter(
                adapterName,
                model,
                adapterTypeDeclaration,
                outputsCount,
                routerName
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
