package org.fbme.ide.richediting.inspections

import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.editor.runtime.style.StyleImpl
import jetbrains.mps.nodeEditor.EditorSettings
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.nodeEditor.MPSFonts
import jetbrains.mps.nodeEditor.cells.TextLine
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionController
import org.fbme.ide.richediting.adapters.fbnetwork.FBNetworkComponentController
import org.fbme.ide.richediting.viewmodel.NetworkComponentView
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView
import org.fbme.ide.richediting.viewmodel.NetworkView
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Element
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection
import org.fbme.lib.iec61499.fbnetwork.PortPath
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.fbme.scenes.controllers.ROLayoutModel
import org.fbme.scenes.controllers.scene.*
import java.awt.*
import java.util.function.Function

class NetworkInspectionsFacility(
    private val myNetworkView: NetworkView,
    private val myInstance: NetworkInstance,
    private val myEditor: SceneEditor,
    private val myComponentProvider: Function<NetworkComponentView, FBNetworkComponentController>,
    private val myConnectionProvider: Function<NetworkConnectionView, FBConnectionController>,
    private val myLayoutModel: ROLayoutModel<NetworkComponentView>,
    private val myLayer: Layer
) {
    private val myPortInspections = HashMap<PortPath<out Declaration>?, InspectionData>()
    private val myComponentInspections = HashMap<Declaration, InspectionData>()
    private val myLayouter: MyLayouter = MyLayouter()
    private val myPainter: MyPainter = MyPainter()
    private val myHighlightedConnections: MutableSet<FBNetworkConnection> = HashSet()

    fun setInspectionForPort(port: PortPath<*>, inspection: Inspection?) {
        if (inspection == null) {
            myPortInspections.remove(port)
        } else {
            val data = InspectionData(inspection)
            relayoutPortInspection(port, data)
            myPortInspections[port] = data
        }
        myEditor.fireRepaint()
    }

    fun setInspectionForComponent(component: Declaration, inspection: Inspection?) {
        if (inspection == null) {
            myComponentInspections.remove(component)
        } else {
            val data = InspectionData(inspection)
            relayoutComponentInspection(component, data)
            myComponentInspections[component] = data
        }
        myEditor.fireRepaint()
    }

    fun setHighlightingForConnection(connection: FBNetworkConnection, color: Color?) {
        val controller = myConnectionProvider.apply(myNetworkView.getConnectionView(connection))
        if (color != null) {
            myHighlightedConnections.add(connection)
        } else {
            myHighlightedConnections.remove(connection)
        }
        controller.highlightColor = color
        myEditor.fireRepaint()
    }

    fun clear() {
        myPortInspections.clear()
        myComponentInspections.clear()
        for (connection in myHighlightedConnections) {
            val controller = myConnectionProvider.apply(myNetworkView.getConnectionView(connection))
            controller.highlightColor = null
        }
        myEditor.fireRepaint()
    }

    fun install() {
        myEditor.addPainter(myLayer, myPainter)
        myEditor.addLayouter(myLayouter)
    }

    fun uninstall() {
        myEditor.removeLayouter(myLayouter)
        myEditor.removePainter(myPainter)
    }

    private class InspectionData(val myInspection: Inspection) {
        private val myColor: Color?
        var myX = 0
        var myY = 0
        val myTextline: TextLine

        fun paint(g: Graphics) {
            g.color = MPSColors.WHITE
            g.fillRect(myX - 1, myY, myTextline.width + 2, myTextline.height)
            g.color = myColor
            g.drawRect(myX - 1, myY, myTextline.width + 2, myTextline.height)
            myTextline.paint(g, myX, myY)
        }

        init {
            myColor = myInspection.color
            val style = StyleImpl()
            style.set(StyleAttributes.FONT_SIZE, EditorSettings.getInstance().fontSize / 2)
            style.set(StyleAttributes.TEXT_COLOR, myColor)
            style.set(StyleAttributes.FONT_STYLE, MPSFonts.BOLD)
            myTextline = TextLine(myInspection.text, style, false)
        }
    }

    private inner class MyLayouter : SceneLayouter {
        override fun relayout() {
            for ((key, data) in myComponentInspections) {
                relayoutComponentInspection(key, data)
            }
            for ((key, data) in myPortInspections) {
                relayoutPortInspection(key, data)
            }
        }

        override val layoutBounds: Rectangle
            get() = Rectangle(-1, -1)
    }

    private inner class MyPainter : ScenePainter {
        override fun paint(graphics: Graphics2D) {
            for (data in myComponentInspections.values) {
                data.paint(graphics)
            }
            for (data in myPortInspections.values) {
                data.paint(graphics)
            }
        }
    }

    private inner class MyInitializer : SceneInitializer {
        override fun onAdd() {
            val inspectionsData = myEditor.loadState(
                NetworkInspectionsData.KEY
            )
            inspectionsData?.let { loadState(it) }
            val manager = InspectionManagerImpl.getInstance(myEditor.editorContext.editorComponent)
            manager?.registerNetwork(myInstance, this@NetworkInspectionsFacility)
        }

        override fun onRemove() {
            val data = NetworkInspectionsData()
            storeState(data)
            myEditor.storeState(NetworkInspectionsData.KEY, data)
            val manager = InspectionManagerImpl.getInstance(myEditor.editorContext.editorComponent)
            manager?.unregisterNetwork(myInstance)
        }
    }

    private fun loadState(data: NetworkInspectionsData) {
        for ((key, value) in data.componentInspections) {
            myComponentInspections[key] = InspectionData(value)
        }
        for ((key, value) in data.portInspections) {
            myPortInspections[key] = InspectionData(
                value
            )
        }
        for ((key, value) in data.highlightedConnections) {
            myHighlightedConnections.add(key)
            val controller = myConnectionProvider.apply(myNetworkView.getConnectionView(key))
            controller.highlightColor = value
        }
        if (!data.highlightedConnections.isEmpty()) {
            myEditor.fireRepaint()
        }
    }

    private fun storeState(data: NetworkInspectionsData) {
        for ((key, value) in myComponentInspections) {
            data.componentInspections[key] = value.myInspection
        }
        for ((key, value) in myPortInspections) {
            data.portInspections[key!!] = value.myInspection
        }
        for (connection in myHighlightedConnections) {
            val controller = myConnectionProvider.apply(myNetworkView.getConnectionView(connection))
            data.highlightedConnections[connection] = controller.highlightColor
        }
    }

    private fun relayoutComponentInspection(key: Element, data: InspectionData) {
        val view = myNetworkView.getComponentView(key)
        val controller = myComponentProvider.apply(view)
        val bounds = controller.getBounds(myLayoutModel.getActivePosition(view))
        data.myTextline.relayout()
        data.myY = bounds.y + bounds.height + data.myTextline.height
        data.myX = bounds.x + bounds.width / 2 - data.myTextline.width / 2
    }

    private fun relayoutPortInspection(key: PortPath<*>?, data: InspectionData) {
        val component = key!!.functionBlock ?: error("Can't get function block")
        val view = myNetworkView.getComponentView(component)
        val portView = myNetworkView.getPortView(key)
        val controller = myComponentProvider.apply(view)
        val coordinates = controller.getPortCoordinates(portView, myLayoutModel.getActivePosition(view))
        data.myTextline.relayout()
        data.myY = coordinates.y - PORT_TEXT_Y_OFFSET - data.myTextline.height / 2
        data.myX =
            coordinates.x + if (controller.isSource(portView)) PORT_TEXT_X_OFFSET else -(data.myTextline.width + PORT_TEXT_X_OFFSET)
    }

    companion object {
        private const val PORT_TEXT_X_OFFSET = 5
        private const val PORT_TEXT_Y_OFFSET = 2
        private const val COMPONENT_TEXT_Y_OFFSET = 10
    }

    init {
        myLayoutModel.addListener(object : ROLayoutModel.Listener<NetworkComponentView> {
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
                myLayouter.relayout()
            }
        })
        myEditor.addInitializer(MyInitializer())
    }
}