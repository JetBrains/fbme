package org.fbme.ide.platform.editor

import com.intellij.openapi.actionSystem.*
import com.intellij.openapi.editor.Document
import jetbrains.mps.ide.editor.BaseNodeEditor
import jetbrains.mps.ide.undo.MPSUndoUtil
import jetbrains.mps.nodefs.MPSNodeVirtualFile
import jetbrains.mps.nodefs.NodeVirtualFileSystem
import jetbrains.mps.openapi.editor.EditorState
import jetbrains.mps.openapi.editor.selection.SelectionManager
import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.editor.ProjectEditorSpecs
import org.jdom.Element
import org.jdom.JDOMException
import org.jdom.input.SAXBuilder
import org.jetbrains.annotations.NonNls
import org.jetbrains.mps.openapi.model.SNode
import java.awt.BorderLayout
import java.io.IOException
import java.io.StringReader
import javax.swing.JComponent
import javax.swing.JPanel

class HeaderedNodeEditor(baseNode: SNode, mpsProject: Project) : BaseNodeEditor(mpsProject) {
    private val myVirtualFile: MPSNodeVirtualFile
    private val myBaseNode: SNode
    private val myHeaderPanel: JPanel
    var currentProjection: EditorProjection? = null
        private set
    var projectionComponent: JComponent? = null
        private set
    private val myToolbarActionGroup: ActionGroup = ProjectionChooserComboBoxAction(this).let { action ->
        object : ActionGroup() {
            override fun getChildren(event: AnActionEvent?): Array<AnAction> {
                return arrayOf(action)
            }
        }
    }

    private val myChooserToolbar: ActionToolbar =
        ActionManager.getInstance().createActionToolbar(ActionPlaces.TOOLBAR, myToolbarActionGroup, true)

    init {
        myBaseNode = baseNode
        myVirtualFile = NodeVirtualFileSystem.getInstance().getFileFor(mpsProject.repository, myBaseNode)
        myHeaderPanel = JPanel(BorderLayout())
        val component = myChooserToolbar.component
        myHeaderPanel.add(component, BorderLayout.EAST)
        getComponent().add(myHeaderPanel, BorderLayout.NORTH)
        editNode(myBaseNode.reference, null)
        initializeFirstAvailableProjection()
    }

    override fun isTabbed(): Boolean {
        return true
    }

    override fun showNode(node: SNode, select: Boolean) {
        var node: SNode = node
        val ec = currentEditorComponent
        val editorSpecs = ProjectEditorSpecs.getInstance(myProject)
        val projectState = editorSpecs.getSpecProjectionState(node)
        node = editorSpecs.getSpecTarget(node)
        if (projectState != null) {
            val builder = SAXBuilder()
            try {
                val state = builder.build(StringReader(projectState)).rootElement
                state?.let { restoreState(it) }
            } catch (e: JDOMException) {
                throw RuntimeException(e)
            } catch (e: IOException) {
                throw RuntimeException(e)
            }
        }
        if (select) {
            ec.selectNode(node)
        } else {
            ec.selectionManager.setSelection(node, SelectionManager.FOCUS_POLICY_CELL, 0)
        }
    }

    fun chooseProjection(projection: EditorProjection) {
        currentProjection = projection
        updateProjectionState()
    }

    fun updateProjectionState() {
        val component = currentEditorComponent
        component.updater.initialEditorHints = currentProjection!!.initialEditorHints
        myProject.modelAccess.runReadAction { component.rebuildEditorContent() }
        if (projectionComponent != null) {
            myHeaderPanel.remove(projectionComponent)
        }
        projectionComponent = currentProjection!!.createHeaderComponent()
        if (projectionComponent != null) {
            myHeaderPanel.add(projectionComponent, BorderLayout.WEST)
        }
        myChooserToolbar.updateActionsImmediately()
    }

    override fun getAllEditedDocuments(): List<Document> {
        val virtualFile = currentEditorComponent.virtualFile
        return if (virtualFile != null) listOf(MPSUndoUtil.getDoc(virtualFile)) else emptyList()
    }

    public override fun getData(@NonNls dataId: String): Any? {
        if (dataId == LangDataKeys.VIRTUAL_FILE.name) {
            return myVirtualFile
        }
        if (dataId == HeaderedEditorDataKeys.EDITOR.name) {
            return this
        }
        return if (currentProjection != null) {
            currentProjection!!.getData(dataId)
        } else null
    }

    override fun saveState(): EditorState {
        val state = HeaderedEditorState()
        saveState(state)
        return state
    }

    override fun saveState(state: BaseEditorState) {
        super.saveState(state)
        if (state is HeaderedEditorState && currentProjection != null) {
            val projectionState = createDefaultState(
                currentProjection!!
            )
            currentProjection!!.saveState(projectionState)
            state.myProjectionState = projectionState
        }
    }

    override fun loadState(state: EditorState) {
        if (state is BaseEditorState) {
            myProject.modelAccess.runReadAction {
                if (state is HeaderedEditorState) {
                    val projectionState = state.myProjectionState
                    restoreState(projectionState)
                } else {
                    // regular editor was shown for that node last time
                    initializeFirstAvailableProjection()
                }
                val componentState = Element("container")
                state.save(componentState)
                val memento = componentState.getChild("memento")
                if (memento != null) {
                    memento.removeChildren("enabledHints")
                    val hintsElement = Element("enabledHints")
                    for (hint in currentProjection!!.initialEditorHints) {
                        val hintElement = Element("enabledHintsElement")
                        hintElement.setAttribute("enabledHintsAttribute", hint)
                        hintsElement.addContent(hintElement)
                    }
                    memento.addContent(hintsElement)
                }
                state.load(componentState)
            }
            super.loadState(state)
        }
    }

    private fun restoreState(projectionState: Element?) {
        val controllerId = projectionState!!.getAttributeValue(CONTROLLER_ID_KEY)
        val projectionName = projectionState.getAttributeValue(PROJECTION_NAME_KEY)
        if (controllerId != null && projectionName != null) {
            val controller: EditorProjectionController = EditorProjectionControllerRegistry.instance
                .factories.stream()
                .filter { it.id == controllerId }
                .findFirst().orElseThrow()
                .create(myBaseNode, myProject)
            chooseProjection(controller.restoreProjection(projectionName, projectionState)!!)
        }
    }

    private fun initializeFirstAvailableProjection() {
        val factories: List<EditorProjectionController.Factory> =
            EditorProjectionControllerRegistry.instance.factories.filter { it.isApplicable(myBaseNode) }
        for (factory in factories) {
            val controller = factory.create(myBaseNode, myProject)
            val defaultProjection = controller.createDefaultProjection()
            if (defaultProjection != null) {
                chooseProjection(defaultProjection)
                return
            }
        }
    }

    private class HeaderedEditorState : BaseEditorState() {
        var myProjectionState: Element? = null
        override fun save(e: Element) {
            e.addContent(myProjectionState!!.clone())
        }

        override fun load(e: Element) {
            myProjectionState = e.getChild(PROJECTION_DATA_KEY).clone()
        }
    }

    companion object {
        const val CONTROLLER_ID_KEY = "id"
        const val PROJECTION_NAME_KEY = "name"
        const val PROJECTION_DATA_KEY = "projection_data"
        fun createDefaultState(projection: EditorProjection): Element {
            val controllerId = projection.controller.id
            val projectionName = projection.name
            val element = Element(PROJECTION_DATA_KEY)
            element.setAttribute(CONTROLLER_ID_KEY, controllerId)
            element.setAttribute(PROJECTION_NAME_KEY, projectionName)
            return element
        }
    }
}
