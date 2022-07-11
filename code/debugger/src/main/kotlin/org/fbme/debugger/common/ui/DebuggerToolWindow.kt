package org.fbme.debugger.common.ui

import com.intellij.icons.AllIcons
import com.intellij.openapi.project.DumbAwareAction
import com.intellij.openapi.project.Project
import com.intellij.openapi.ui.ComboBox
import com.intellij.openapi.ui.JBMenuItem
import com.intellij.openapi.ui.JBPopupMenu
import com.intellij.openapi.ui.SimpleToolWindowPanel
import com.intellij.openapi.ui.popup.Balloon
import com.intellij.ui.*
import com.intellij.ui.components.JBList
import com.intellij.ui.components.JBScrollBar
import com.intellij.ui.components.JBScrollPane
import com.intellij.ui.components.JBViewport
import com.intellij.ui.treeStructure.Tree
import com.intellij.util.ui.JBUI
import com.intellij.util.ui.components.BorderLayoutPanel
import org.fbme.debugger.common.change.InitialChange
import org.fbme.debugger.common.change.InputEventChange
import org.fbme.debugger.common.change.OutputEventChange
import org.fbme.debugger.common.change.StateChange
import org.fbme.debugger.common.resolvePath
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.common.trace.TraceItem
import org.fbme.debugger.common.ui.icons.Icons
import org.fbme.debugger.explanation.ExplanationProducer
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.ecc.StateDeclaration
import java.awt.Component
import java.awt.Dimension
import java.awt.Point
import java.awt.event.*
import java.util.*
import javax.swing.*
import javax.swing.tree.DefaultMutableTreeNode
import javax.swing.tree.DefaultTreeCellRenderer
import javax.swing.tree.DefaultTreeModel
import javax.swing.tree.MutableTreeNode


open class DebuggerToolWindow(
    private val project: Project,
    private val trace: ExecutionTrace,
    private val declaration: Declaration,
    private val explanationProducer: ExplanationProducer
) {
    val toolWindowPanel = SimpleToolWindowPanel(false, true)
    private val splitPane = OnePixelSplitter(false)

    private val statesListModel = CollectionListModel(trace.items)
    protected val statesList = JBList(statesListModel)

    val suggestions = mutableListOf<String>()

    inner class NodeFactory() {
        fun createNode(path: List<String>): MutableTreeNode {
            val name = path.joinToString(".")

            if (declaration is FBTypeDeclaration) {
                val watchDeclaration = declaration.resolvePath(path)

                when (watchDeclaration) {
                    is CompositeFBTypeDeclaration -> {
                        val node = DefaultMutableTreeNode(name)
                        node.addCFBPortNodes(watchDeclaration)
                        return node
                    }
                    is BasicFBTypeDeclaration -> {
                        val node = DefaultMutableTreeNode(name)
                        node.addBFBPortNodes(watchDeclaration)
                        return node
                    }
                    is ParameterDeclaration -> {
                        return DefaultMutableTreeNode(name, false)
                    }
                    is EventDeclaration -> {
                        return DefaultMutableTreeNode(name, false)
                    }
                    is StateDeclaration -> {
                        return DefaultMutableTreeNode(name, false)
                    }
                }
            }
            return DefaultMutableTreeNode(name)
        }
    }

    protected val watchesTreeMenuItems = mutableListOf<JBMenuItem>() // TODO

    private val nodeFactory = NodeFactory()

    private val rootNode = DefaultMutableTreeNode("root")
    private val watchesTreeModel = DefaultTreeModel(rootNode, true)
    protected val watchesTree = Tree(watchesTreeModel)

    private val watchFieldPanel: BorderLayoutPanel

    init {
        watchesTree.isRootVisible = false
        watchesTree.showsRootHandles = true

        val ml: MouseListener = object : MouseAdapter() {
            override fun mousePressed(e: MouseEvent) {
                if (e.isPopupTrigger) {
                    val popup = JBPopupMenu()
                    val explainItem = JBMenuItem("Why?", AllIcons.Debugger.Question_badge)
                    explainItem.addActionListener {
                        showExplanationPopup(e)
                    }
                    popup.add(explainItem)
                    popup.show(e.component, e.x, e.y)
                }
            }
        }
        watchesTree.addMouseListener(ml)

        initializeWatchesTreeCellRenderer()

        trace.addListenerOnAdding { traceItem -> statesListModel.add(traceItem) }
        initializeStatesListCellRenderer()
        statesList.addListSelectionListener {
            watchesTree.updateUI()
        }
        statesList.selectedIndex = 0

        initSuggestions()

        watchFieldPanel = watchFieldPanel()

        splitPane.firstComponent = statesPanel()
        splitPane.secondComponent = watchesPanel()

        toolWindowPanel.add(splitPane)
        toolWindowPanel.updateUI()
    }

    protected fun showExplanationPopup(e: MouseEvent) {
        // TODO: rewrite
        val selectionPath = watchesTree
            .selectionPath
            ?.path
            ?.toList()
            ?.map { it.toString() }
            ?.drop(1)
            ?.joinToString(".")
            ?.split(".")
            ?: return
        val children = explanationProducer.getNodeOrPut(statesList.selectedIndex, selectionPath).children
        var explanationText = ""

        for (explanationNode in children) {
            explanationText += "$explanationNode\n"
        }

        val explanation =
            GotItTooltip(
                UUID.randomUUID().toString(),
                explanationText,
                project
            )
        explanation.position = Balloon.Position.atLeft
        explanation.show(watchesTree) { component, _ ->
            Point(component.x, e.y)
        }
    }

    val watchItems = mutableMapOf<List<String>, JComponent>()

    open fun initializeWatchesTreeCellRenderer() {
        watchesTree.cellRenderer = object : DefaultTreeCellRenderer() {
            override fun getTreeCellRendererComponent(
                tree: JTree?,
                value: Any?,
                selected: Boolean,
                expanded: Boolean,
                leaf: Boolean,
                row: Int,
                hasFocus: Boolean
            ): Component {
//                super.getTreeCellRendererComponent(tree, value, selected, expanded, leaf, row, hasFocus)
                val line = JPanel()
                line.layout = BoxLayout(line, BoxLayout.X_AXIS)
                val node = value as DefaultMutableTreeNode

                if (node.parent != null && declaration is FBTypeDeclaration) {
                    var path = node.userObject as String
                    var par = node.parent as DefaultMutableTreeNode
                    while (par.parent != null) {
                        val name = par.userObject as String
                        path = "$name.$path"
                        par = par.parent as DefaultMutableTreeNode
                    }

                    val selectedState = statesList.selectedValue?.state ?: error("no selected state")
                    val previousState =
                        statesListModel.items.getOrNull(statesList.selectedIndex - 1)?.state ?: selectedState
                    val pathAsList = path.split(".")
                    val watchDeclaration = declaration.resolvePath(pathAsList)

                    line.add(JLabel(if (path == node.userObject.toString()) Icons.Watch else AllIcons.Debugger.Value).apply {
                        verticalAlignment = CENTER
                    })
                    line.add(Box.createRigidArea(Dimension(5, 0)))

                    line.add(JLabel(node.userObject.toString()).apply {
                        initForeground(selected, hasFocus)
                        verticalAlignment = CENTER
                    })

                    when (watchDeclaration) {
                        is CompositeFBTypeDeclaration -> {}
                        is BasicFBTypeDeclaration -> {}
                        is StateDeclaration,
                        is ParameterDeclaration,
                        is EventDeclaration -> {
                            val curValue = selectedState.resolveValue(pathAsList)
                            val prevValue = previousState.resolveValue(pathAsList)

                            val isValueChanged = curValue != prevValue

                            line.add(JLabel(": ").apply {
                                initForeground(selected, hasFocus)
                                verticalAlignment = CENTER
                            })

                            line.add(JLabel("$curValue").apply {
                                initForeground(selected, hasFocus)
                                verticalAlignment = CENTER
                            })
                        }
                    }
                    watchItems[pathAsList] = line
                }
                return line
            }
        }
    }

    private fun JLabel.initForeground(
        isSelected: Boolean,
        hasFocus: Boolean
    ) {
        foreground =
            if (isSelected && hasFocus) UIManager.getColor("List.selectionForeground")
            else UIManager.getColor("List.foreground")
    }

    private fun initializeStatesListCellRenderer() {
        statesList.cellRenderer = object : ColoredListCellRenderer<TraceItem>() {
            override fun customizeCellRenderer(
                traceItems: JList<out TraceItem>,
                traceItem: TraceItem,
                index: Int,
                isSelected: Boolean,
                hasFocus: Boolean
            ) {
                val (state, path, change) = traceItem

                append("$index\t", SimpleTextAttributes.GRAYED_BOLD_ATTRIBUTES)

                when (change) {
                    is InitialChange -> {
                        append("Initial State", SimpleTextAttributes.REGULAR_ATTRIBUTES)
                    }
                    is InputEventChange -> {
                        val name = change.eventName
                        val value = state.resolveValue(path.plus(change.eventName)) ?: "???"
                        append("Input Event $name: $value", SimpleTextAttributes.REGULAR_ATTRIBUTES)
                    }
                    is OutputEventChange -> {
                        val name = change.eventName
                        val value = state.resolveValue(path.plus(change.eventName)) ?: "???"
                        append("Output Event $name: $value", SimpleTextAttributes.REGULAR_ATTRIBUTES)
                    }
                    is StateChange -> {
                        append("ECC State: ${change.state}", SimpleTextAttributes.REGULAR_ATTRIBUTES)
                    }
                }
                if (path.isNotEmpty()) {
                    append(" ${path.joinToString(".")}", SimpleTextAttributes.GRAY_ATTRIBUTES)
                }
            }
        }
    }

    private fun statesPanel(): JBScrollPane {
        val statesViewport = JBViewport().apply {
            view = statesList
        }

        val scrollPane = JBScrollPane().apply {
            viewport = statesViewport
            verticalScrollBar = JBScrollBar(1)
            horizontalScrollBar = JBScrollBar(0)
        }

        return scrollPane
    }

    private fun watchesPanel(): BorderLayoutPanel {
        val borderLayoutPanel = BorderLayoutPanel()

        borderLayoutPanel.addToTop(watchFieldPanel)
        borderLayoutPanel.addToCenter(JBScrollPane().apply {
            viewport = JBViewport().apply {
                view = watchesTree
            }
            verticalScrollBar = JBScrollBar(1)
            horizontalScrollBar = JBScrollBar(0)
        })

        return borderLayoutPanel
    }

    private fun watchFieldPanel(): BorderLayoutPanel {
        val watchFieldPanel = BorderLayoutPanel()

        val collectionComboboxModel = CollectionComboBoxModel(suggestions)

        val textFieldWithAutoCompletion = TextFieldWithAutoCompletion.create(
            project,
            collectionComboboxModel.items,
            false,
            ""
        )

        fun addNewWatch() {
            val path = textFieldWithAutoCompletion.text.split(".")
            val newNode = nodeFactory.createNode(path)
            rootNode.add(newNode)
            watchesTreeModel.nodeStructureChanged(newNode.parent)
            watchesTreeModel.nodeStructureChanged(newNode)
        }

        DumbAwareAction.create {
            addNewWatch()
        }.registerCustomShortcutSet(KeyEvent.VK_ENTER, InputEvent.SHIFT_DOWN_MASK, textFieldWithAutoCompletion)

        val addToWatchesButton = InplaceButton("Add to Watches ", AllIcons.Debugger.AddToWatch) {
            addNewWatch()
        }

        val combobox = ComboBox<String>()
        combobox.isEditable = true
        combobox.editor = ComboBoxCompositeEditor.withComponents<Any, TextFieldWithAutoCompletion<String>>(
            textFieldWithAutoCompletion,
            addToWatchesButton
        )
        combobox.model = collectionComboboxModel

        watchFieldPanel.background = JBUI.CurrentTheme.Tree.BACKGROUND
        watchFieldPanel.addToCenter(combobox)

        return watchFieldPanel
    }

    private fun initSuggestions(declaration: Declaration = this.declaration, prefix: String = "") {
        val prefix = if (prefix.isNotEmpty()) "$prefix." else ""
        if (declaration is FBTypeDeclaration) {
            suggestions += declaration.inputEvents.map { prefix + it.name }
            suggestions += declaration.outputEvents.map { prefix + it.name }
            suggestions += declaration.inputParameters.map { prefix + it.name }
            suggestions += declaration.outputParameters.map { prefix + it.name }

            when (declaration) {
                is BasicFBTypeDeclaration -> {
                    suggestions += declaration.internalVariables.map { prefix + it.name }
                    suggestions += "$prefix\$ECC"
                }
                is CompositeFBTypeDeclaration -> {
                    for (component in declaration.network.allComponents) {
                        suggestions += prefix + component.name
                    }
                    for (component in declaration.network.allComponents) {
                        initSuggestions(component.type.declaration!!, prefix + component.name)
                    }
                }
            }
        }
    }

    private fun MutableTreeNode.addFBPortNodes(fbTypeDeclaration: FBTypeDeclaration) {
        for (inputEvent in fbTypeDeclaration.inputEvents) {
            insert(DefaultMutableTreeNode(inputEvent.name, false), childCount)
        }
        for (inputParameter in fbTypeDeclaration.inputParameters) {
            insert(DefaultMutableTreeNode(inputParameter.name, false), childCount)
        }
        for (outputEvent in fbTypeDeclaration.outputEvents) {
            insert(DefaultMutableTreeNode(outputEvent.name, false), childCount)
        }
        for (outputParameter in fbTypeDeclaration.outputParameters) {
            insert(DefaultMutableTreeNode(outputParameter.name, false), childCount)
        }
    }

    private fun MutableTreeNode.addBFBPortNodes(basicFBTypeDeclaration: BasicFBTypeDeclaration) {
        addFBPortNodes(basicFBTypeDeclaration)
        insert(DefaultMutableTreeNode("\$ECC", false), childCount)
    }

    private fun MutableTreeNode.addCFBPortNodes(compositeFBTypeDeclaration: CompositeFBTypeDeclaration) {
        addFBPortNodes(compositeFBTypeDeclaration)
    }
}