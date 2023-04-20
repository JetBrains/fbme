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
import com.intellij.ui.components.*
import com.intellij.ui.treeStructure.Tree
import com.intellij.util.ui.JBUI
import com.intellij.util.ui.components.BorderLayoutPanel
import jetbrains.mps.nodeEditor.MPSColors
import org.fbme.debugger.RuntimeTraceSynchronizer
import org.fbme.debugger.common.change.InitialChange
import org.fbme.debugger.common.change.InputEventChange
import org.fbme.debugger.common.change.OutputEventChange
import org.fbme.debugger.common.change.StateChange
import org.fbme.debugger.common.resolvePath
import org.fbme.debugger.common.resolveValue
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.debugger.common.trace.TraceItem
import org.fbme.debugger.common.ui.icons.Icons
import org.fbme.debugger.explanation.ExplanationProducer
import org.fbme.ide.richediting.inspections.Inspection
import org.fbme.ide.richediting.inspections.Inspector
import org.fbme.ide.richediting.inspections.NetworkInspector
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.fbnetwork.PortPath
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

open class DebuggerPanel(
    private val project: Project,
    private val mpsProject: jetbrains.mps.project.Project,
    private val trace: ExecutionTrace,
    private val declaration: Declaration,
    private val originalDeclaration: Declaration,
    private val explanationProducer: ExplanationProducer,
    private val inspector: Inspector? = null,
) {
    val toolWindowPanel = SimpleToolWindowPanel(false, true)
    private val splitPane = OnePixelSplitter(false)

    private val statesListModel = CollectionListModel(trace.items)
    protected val statesList = JBList(statesListModel)

    private val suggestions = mutableListOf<String>()

    private inner class NodeFactory {
        fun createNode(path: List<String>, name: String = path.joinToString(".")): MutableTreeNode {
            val watchDeclaration = when (declaration) {
                is ResourceDeclaration -> declaration.resolvePath(path)
                is FBTypeDeclaration -> declaration.resolvePath(path)
                else -> error("Unsupported type")
            }

            when (watchDeclaration) {
                is CompositeFBTypeDeclaration -> {
                    val node = DefaultMutableTreeNode(name)
                    node.addCFBPortNodes(watchDeclaration)
                    for (component in watchDeclaration.network.allComponents) {
                        node.insert(createNode(path.plus(component.name), component.name), node.childCount)
                    }
                    return node
                }

                is BasicFBTypeDeclaration -> {
                    val node = DefaultMutableTreeNode(name)
                    node.addBFBPortNodes(watchDeclaration)
                    return node
                }

                is ServiceInterfaceFBTypeDeclaration -> {
                    val node = DefaultMutableTreeNode(name)
                    node.addSFBPortNodes(watchDeclaration)
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
            return DefaultMutableTreeNode(name)
        }
    }

    private val nodeFactory = NodeFactory()

    private val rootNode = DefaultMutableTreeNode("root")
    private val watchesTreeModel = DefaultTreeModel(rootNode, true)
    protected val watchesTree = Tree(watchesTreeModel)

    private val watchFieldPanel: BorderLayoutPanel

    private val ports: List<Pair<PortPath<out Declaration>, List<String>>> = getPorts()

    init {
        watchesTree.isRootVisible = false
        watchesTree.showsRootHandles = true

        val ml: MouseListener = object : MouseAdapter() {
            override fun mousePressed(e: MouseEvent) {
                if (e.isPopupTrigger) {
                    val popup = JBPopupMenu()
                    val explainItem = JBMenuItem("Why?", AllIcons.Debugger.Question_badge)
                    explainItem.addActionListener {
                        showExplanation(e)
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
            val selectedState = statesList.selectedValue?.state ?: error("no selected state")
            val previousState =
                statesListModel.items.getOrNull(statesList.selectedIndex - 1)?.state ?: selectedState
            when (inspector) {
                is NetworkInspector -> {
                    for ((port, portPath) in ports) {
                        val value = selectedState.resolveValue(portPath)
                        val prevValue = previousState.resolveValue(portPath)

                        val isValueChanged = value != prevValue
                        val color = if (isValueChanged) MPSColors.GREEN.darker() else MPSColors.GRAY

                        inspector.setInspectionForPort(port, Inspection(value ?: "???", color, isValueChanged))
                    }
                }

                else -> {}
            }
        }
        statesList.selectedIndex = 0

        initSuggestions()

        for (child in suggestions.filterNot { it.contains('.') }) {
            val newNode = nodeFactory.createNode(listOf(child))
            rootNode.add(newNode)
            watchesTreeModel.nodeStructureChanged(newNode.parent)
            watchesTreeModel.nodeStructureChanged(newNode)
        }

        watchFieldPanel = watchFieldPanel()

        initUI()

        toolWindowPanel.add(splitPane)
        toolWindowPanel.updateUI()
    }

    private fun getPorts(): List<Pair<PortPath<out Declaration>, List<String>>> {
        var ports: List<Pair<PortPath<out Declaration>, List<String>>> = listOf()
        mpsProject.modelAccess.runReadAction {
            when (originalDeclaration) {
                is ResourceDeclaration -> {
                    ports = originalDeclaration
                        .allFunctionBlocks()
                        .map { fb -> fb.ports }.flatMap { it.toList() }
                        .map { port -> Pair(port, port.declarations.map { it.name }) }
                }

                is CompositeFBTypeDeclaration -> {
                    ports = originalDeclaration
                        .network
                        .functionBlocks
                        .map { fb -> fb.ports }.flatMap { it.toList() }
                        .map { port -> Pair(port, port.declarations.map { it.name }) }
                }

                else -> {}
            }
        }
        return ports
    }

    fun initUI() {
        if (declaration is ResourceDeclaration && RuntimeTraceSynchronizer.hasTrace(trace) && trace.size == 1) {
            val unavailableStatesPanel =
                JBPanelWithEmptyText().withEmptyText("States are not available during execution")
            splitPane.firstComponent = unavailableStatesPanel
            val unavailableWatchesPanel =
                JBPanelWithEmptyText().withEmptyText("Watches are not available during execution")
            splitPane.secondComponent = unavailableWatchesPanel
        } else {
            splitPane.firstComponent = statesPanel()
            splitPane.secondComponent = watchesPanel()
        }
    }

    protected fun showExplanation(e: MouseEvent) {
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

        val selectedState = statesList.selectedValue?.state
        val networkInspector = inspector as? NetworkInspector

        if (selectedState != null && networkInspector != null) {
            for (explanationNode in children) {
                val port = ports.firstOrNull { it.second == explanationNode.path } ?: continue
                val value = selectedState.resolveValue(port.second) ?: continue
                networkInspector.setInspectionForPort(port.first, Inspection(value, MPSColors.RED, true))
            }
        }

        val explanationPopup = GotItTooltip(UUID.randomUUID().toString(), explanationText, project)
        explanationPopup.position = Balloon.Position.atLeft
        explanationPopup.show(watchesTree) { component, _ ->
            Point(component.x, e.y)
        }
    }

    private fun initializeWatchesTreeCellRenderer() {
        watchesTree.cellRenderer = object : DefaultTreeCellRenderer() {
            override fun getTreeCellRendererComponent(
                tree: JTree?,
                value: Any?,
                selected: Boolean,
                expanded: Boolean,
                leaf: Boolean,
                row: Int,
                hasFocus: Boolean,
            ): Component {
                val line = JPanel()
                line.layout = BoxLayout(line, BoxLayout.X_AXIS)
                val node = value as DefaultMutableTreeNode

                if (node.parent != null) {
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
                    val watchDeclaration = when (declaration) {
                        is ResourceDeclaration -> declaration.resolvePath(pathAsList)
                        is FBTypeDeclaration -> declaration.resolvePath(pathAsList)
                        else -> error("Unsupported type")
                    }

                    line.add(JLabel(if (node.parent.parent == null) Icons.Watch else if (watchDeclaration is FBTypeDeclaration) AllIcons.Debugger.WatchLastReturnValue else AllIcons.Debugger.Value).apply {
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
                        is EventDeclaration,
                        -> {
                            val curValue = selectedState.resolveValue(pathAsList)
                            val prevValue = previousState.resolveValue(pathAsList)

                            val isValueChanged = curValue != prevValue

                            line.add(JLabel(": ").apply {
                                initForeground(selected, hasFocus)
                                verticalAlignment = CENTER
                            })

                            line.add(JLabel("$curValue").apply {
                                initForeground(selected, hasFocus, isValueChanged)
                                verticalAlignment = CENTER
                            })
                        }
                    }
                }
                return line
            }
        }
    }

    private fun JLabel.initForeground(
        isSelected: Boolean,
        hasFocus: Boolean,
        isValueChanged: Boolean = false,
    ) {
        foreground =
            if (isSelected && hasFocus) UIManager.getColor("List.selectionForeground")
            else if (isValueChanged) MPSColors.GREEN.darker() else UIManager.getColor("List.foreground")
    }

    private fun initializeStatesListCellRenderer() {
        statesList.cellRenderer = object : ColoredListCellRenderer<TraceItem>() {
            override fun customizeCellRenderer(
                traceItems: JList<out TraceItem>,
                traceItem: TraceItem,
                index: Int,
                isSelected: Boolean,
                hasFocus: Boolean,
            ) {
                val (state, path, change) = traceItem

                val nLen = statesListModel.size.toString().length
                val nPadding = nLen * 10 + 12
                val changePadding = nPadding + 100
                if (traceItem.synced) {
                    append("$index", SimpleTextAttributes.REGULAR_BOLD_ATTRIBUTES, nPadding, 2)
                } else {
                    append("$index", SimpleTextAttributes.GRAYED_BOLD_ATTRIBUTES, nPadding, 2)
                }
                when (change) {
                    is InitialChange -> {
                        append("Initial State", SimpleTextAttributes.REGULAR_ATTRIBUTES)
                    }

                    is InputEventChange -> {
                        val name = change.eventName
                        val value = state.resolveValue(path.plus(change.eventName)) ?: "???"
                        append("Input Event", SimpleTextAttributes.REGULAR_ATTRIBUTES, changePadding, 2)
                        append("${path.plus(name).joinToString(".")} → $value", SimpleTextAttributes.REGULAR_ATTRIBUTES)
                    }

                    is OutputEventChange -> {
                        val name = change.eventName
                        val value = state.resolveValue(path.plus(change.eventName)) ?: "???"
                        append("Output Event", SimpleTextAttributes.REGULAR_ATTRIBUTES, changePadding, 2)
                        append("${path.plus(name).joinToString(".")} → $value", SimpleTextAttributes.REGULAR_ATTRIBUTES)
                    }

                    is StateChange -> {
                        append("ECC State", SimpleTextAttributes.REGULAR_ATTRIBUTES, changePadding, 2)
                        append(
                            "${path.plus("\$ECC").joinToString(".")} → ${change.state}",
                            SimpleTextAttributes.REGULAR_ATTRIBUTES
                        )
                    }
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
        val validPrefix = if (prefix.isNotEmpty()) "$prefix." else ""
        if (declaration is FBTypeDeclaration) {
            suggestions += declaration.inputEvents.map { validPrefix + it.name }
            suggestions += declaration.outputEvents.map { validPrefix + it.name }
            suggestions += declaration.inputParameters.map { validPrefix + it.name }
            suggestions += declaration.outputParameters.map { validPrefix + it.name }
        }
        when (declaration) {
            is BasicFBTypeDeclaration -> {
                suggestions += declaration.internalVariables.map { validPrefix + it.name }
                suggestions += "$validPrefix\$ECC"
            }

            is DeclarationWithNetwork -> {
                for (component in declaration.network.allComponents) {
                    suggestions += validPrefix + component.name
                }
                for (component in declaration.network.allComponents) {
                    initSuggestions(component.type.declaration!!, validPrefix + component.name)
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

    private fun MutableTreeNode.addSFBPortNodes(serviceFBTypeDeclaration: ServiceInterfaceFBTypeDeclaration) {
        addFBPortNodes(serviceFBTypeDeclaration)
    }

    private fun MutableTreeNode.addCFBPortNodes(compositeFBTypeDeclaration: CompositeFBTypeDeclaration) {
        addFBPortNodes(compositeFBTypeDeclaration)
    }
}