package org.fbme.ide.richediting.inspections

import jetbrains.mps.editor.runtime.style.Padding
import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.EditorSettings
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.nodeEditor.MPSFonts
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic
import jetbrains.mps.nodeEditor.cells.ParentSettings
import jetbrains.mps.nodeEditor.cells.TextLine
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionController
import org.fbme.ide.richediting.adapters.fbnetwork.FBNetworkComponentController
import org.fbme.ide.richediting.adapters.fbnetwork.fb.AbstractFBCell.Companion.PORT_SIZE
import org.fbme.ide.richediting.viewmodel.NetworkComponentView
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView
import org.fbme.ide.richediting.viewmodel.NetworkView
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Element
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection
import org.fbme.lib.iec61499.fbnetwork.PortPath
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.fbme.scenes.controllers.LayoutUtil
import org.fbme.scenes.controllers.ROLayoutModel
import org.fbme.scenes.controllers.components.ComponentController
import org.fbme.scenes.controllers.scene.*
import java.awt.*

class NetworkInspectionsFacility(
    private val networkView: NetworkView,
    private val instance: NetworkInstance,
    private val editor: SceneEditor,
    val componentProvider: (NetworkComponentView) -> FBNetworkComponentController,
    private val connectionProvider: (NetworkConnectionView) -> FBConnectionController,
    val layoutModel: ROLayoutModel<NetworkComponentView>,
    private val layer: Layer
) {
    private val portInspections = HashMap<PortPath<out Declaration>?, InspectionData>()
    private val componentInspections = HashMap<Declaration, InspectionData>()
    private val layouter: MyLayouter = MyLayouter()
    private val painter: MyPainter = MyPainter()
    private val highlightedConnections: MutableSet<FBNetworkConnection> = HashSet()

    fun setInspectionForPort(port: PortPath<*>, inspection: Inspection?) {
        if (inspection == null) {
            portInspections.remove(port)
        } else {
            val data = InspectionData(inspection)
            relayoutPortInspection(port, data)
            portInspections[port] = data
        }
        editor.fireRepaint()
    }

    fun setInspectionForComponent(component: Declaration, inspection: Inspection?) {
        if (inspection == null) {
            componentInspections.remove(component)
        } else {
            val data = InspectionData(inspection)
            relayoutComponentInspection(component, data)
            componentInspections[component] = data
        }
        editor.fireRepaint()
    }

    fun setHighlightingForConnection(connection: FBNetworkConnection, color: Color?) {
        val controller = connectionProvider(networkView.getConnectionView(connection))
        if (color != null) {
            highlightedConnections.add(connection)
        } else {
            highlightedConnections.remove(connection)
        }
        controller.highlightColor = color
        editor.fireRepaint()
    }

    fun clear() {
        portInspections.clear()
        componentInspections.clear()
        for (connection in highlightedConnections) {
            val controller = connectionProvider(networkView.getConnectionView(connection))
            controller.highlightColor = null
        }
        editor.fireRepaint()
    }

    fun install() {
        editor.addPainter(layer, painter)
        editor.addLayouter(layouter)
    }

    fun uninstall() {
        editor.removeLayouter(layouter)
        editor.removePainter(painter)
    }

    private inner class InspectionData(val inspection: Inspection) : EditorCell_Basic(editor.editorContext, null) {
        private val textLine: TextLine
        private var lineSize: Int = 0

        init {
            setTextColor(inspection.color)
            setFontStyle(if (inspection.bold) MPSFonts.BOLD else MPSFonts.PLAIN)
            textLine = TextLine(inspection.text, style, false, editor.editorComponentSettings)
        }

        override fun getDescent(): Int {
            return textLine.descent
        }

        override fun relayoutImpl() {
            textLine.relayout()
            myWidth = textLine.width
        }

        override fun paintContent(g: Graphics, parentSettings: ParentSettings?) {
            g.color = MPSColors.WHITE
            g.fillRect(x, y, width, lineSize)
            g.color = inspection.color
            g.drawRect(x, y, width, lineSize)
            textLine.paint(g, x, y - lineSize / 4)
        }

        fun setFontSize(fontSize: Int) {
            style.set(StyleAttributes.FONT_SIZE, fontSize)
        }

        fun setTextColor(color: Color) {
            style.set(StyleAttributes.TEXT_COLOR, color)
        }

        fun setFontStyle(fontStyle: Int) {
            style.set(StyleAttributes.FONT_STYLE, fontStyle)
        }

        fun setLineSize(lineSize: Int) {
            this@InspectionData.lineSize = lineSize
        }
    }

    private inner class MyLayouter : SceneLayouter {
        override fun relayout() {
            for ((key, data) in componentInspections) {
                relayoutComponentInspection(key, data)
            }
            for ((key, data) in portInspections) {
                relayoutPortInspection(key, data)
            }
        }

        override val layoutBounds: Rectangle
            get() = Rectangle(-1, -1)
    }

    private inner class MyPainter : ScenePainter {
        override fun paint(graphics: Graphics2D) {
            for (data in componentInspections.values) {
                data.paint(graphics)
            }
            for (data in portInspections.values) {
                data.paint(graphics)
            }
        }
    }

    private inner class MyInitializer : SceneInitializer {
        override fun onAdd() {
            val inspectionsData = editor.loadState(
                NetworkInspectionsData.KEY
            )
            inspectionsData?.let { loadState(it) }
            val manager = InspectionManagerImpl.getInstance(editor.editorContext.editorComponent)
            manager?.registerNetwork(instance, this@NetworkInspectionsFacility)
        }

        override fun onRemove() {
            val data = NetworkInspectionsData()
            storeState(data)
            editor.storeState(NetworkInspectionsData.KEY, data)
            val manager = InspectionManagerImpl.getInstance(editor.editorContext.editorComponent)
            manager?.unregisterNetwork(instance)
        }
    }

    private fun loadState(data: NetworkInspectionsData) {
        for ((key, value) in data.componentInspections) {
            componentInspections[key] = InspectionData(value)
        }
        for ((key, value) in data.portInspections) {
            portInspections[key] = InspectionData(
                value
            )
        }
        for ((key, value) in data.highlightedConnections) {
            highlightedConnections.add(key)
            val controller = connectionProvider(networkView.getConnectionView(key))
            controller.highlightColor = value
        }
        if (data.highlightedConnections.isNotEmpty()) {
            editor.fireRepaint()
        }
    }

    private fun storeState(data: NetworkInspectionsData) {
        for ((key, value) in componentInspections) {
            data.componentInspections[key] = value.inspection
        }
        for ((key, value) in portInspections) {
            data.portInspections[key!!] = value.inspection
        }
        for (connection in highlightedConnections) {
            val controller = connectionProvider(networkView.getConnectionView(connection))
            data.highlightedConnections[connection] = controller.highlightColor
        }
    }

    private fun relayoutComponentInspection(key: Element, data: InspectionData) {
        val view = networkView.getComponentView(key)
        val controller = componentProvider(view)
        val bounds = controller.getBounds(layoutModel.getActivePosition(view))
        data.setFontSize(LayoutUtil.getFontSize((controller as ComponentController<*>).componentCell.style))
        data.setLineSize(LayoutUtil.getLineSize((controller as ComponentController<*>).componentCell.style))
        data.requestRelayout()
        data.relayout()
        data.y = bounds.y + bounds.height + data.height
        data.x = bounds.x + bounds.width / 2 - data.width / 2
    }

    private fun relayoutPortInspection(key: PortPath<*>?, data: InspectionData) {
        val component = key!!.functionBlock ?: error("Can't get function block")
        val view = networkView.getComponentView(component)
        val portView = networkView.getPortView(key)
        val controller = componentProvider(view)
        val position = layoutModel.getActivePosition(view)
        val portBounds = controller.getPortBounds(portView, position)

        data.setFontSize(LayoutUtil.getFontSize((controller as ComponentController<*>).componentCell.style))
        data.setLineSize(LayoutUtil.getLineSize((controller as ComponentController<*>).componentCell.style))
        data.requestRelayout()
        data.relayout()
        data.x = if (controller.isSource(portView)) {
            portBounds.x + portBounds.width + scale(PORT_SIZE)
        } else {
            portBounds.x - scale(PORT_SIZE) - data.width
        }
        data.y = portBounds.y
    }

    private fun scale(size: Int): Int {
        return size * LayoutUtil.getFontSize(editor.editorContext.contextCell.style) / EditorSettings.getInstance().fontSize
    }

    init {
        layoutModel.addListener(object : ROLayoutModel.Listener<NetworkComponentView> {
            override fun onComponentAdded(component: NetworkComponentView, x: Int, y: Int) {
                // do nothing
            }

            override fun onComponentRemoved(component: NetworkComponentView) {
                // do nothing
            }

            override fun onComponentsMoved(
                components: Set<NetworkComponentView>,
                dx: Int,
                dy: Int,
                completed: Boolean
            ) {
                layouter.relayout()
            }
        })
        editor.addInitializer(MyInitializer())
    }
}