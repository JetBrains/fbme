package org.fbme.ide.richediting.adapters.fbnetwork.fb

import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Vertical
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.nodeEditor.cells.ParentSettings
import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.richediting.adapters.ecc.ECCEditors
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPathPainter
import org.fbme.ide.richediting.adapters.fbnetwork.FBNetworkEditors
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.instances.FunctionBlockInstance
import org.fbme.lib.iec61499.instances.Instance
import org.fbme.scenes.cells.EditorCell_Scene
import org.fbme.scenes.cells.EditorCell_SceneLabel
import org.fbme.scenes.controllers.scene.SceneLayout
import org.jetbrains.mps.openapi.model.SNode
import java.awt.*
import java.awt.geom.AffineTransform

class FBSceneCell(
    context: EditorContext,
    fbType: FBTypeDescriptor,
    node: SNode,
    isEditable: Boolean,
    parent: FunctionBlockInstance?,
    editorShift: Point = Point()
) : AbstractFBCell(context, fbType, node, isEditable) {
    private val typeNameLabel: EditorCell_SceneLabel?
    private val sceneCell: EditorCell_Scene?
    override val rootCell: EditorCell_Collection
    private fun createCollection(): EditorCell_Collection {
        return object : EditorCell_Collection(context, node, CellLayout_Vertical()) {
            override fun paintContent(g: Graphics, parentSettings: ParentSettings) {
                this@FBSceneCell.paint(g.create() as Graphics2D)
            }

            override fun paintSelection(g: Graphics, c: Color, drawBorder: Boolean, parentSettings: ParentSettings) {
                // do nothing
            }
        }
    }

    private fun paint(graphics: Graphics2D) {
        val x = rootCell.x
        val y = rootCell.y
        val shape = getComponentShape(x, y)
        val shadowShape = shape.createTransformedShape(AffineTransform.getTranslateInstance(2.0, 2.0))
        graphics.paint = Color(0xEEEEEE)
        graphics.fill(shadowShape)
        graphics.stroke = BasicStroke(scale(1).toFloat())
        graphics.color = MPSColors.BLACK
        graphics.draw(shape)
        val foreground = rootCell.style.get(StyleAttributes.TEXT_COLOR)
        drawAllPortIcons(graphics, foreground)
    }

    private fun createSceneCell(instance: Instance?, editorShift: Point = Point()): EditorCell_Scene {
        val scene: EditorCell_Scene = if (fbType.declaration is BasicFBTypeDeclaration) {
            ECCEditors.createEccEditor(context, node, SceneLayout.WINDOWED, instance, editorShift) as EditorCell_Scene
        } else {
            FBNetworkEditors.createFBNetworkCell(
                context,
                node,
                SceneLayout.WINDOWED,
                instance,
                editorShift
            ) as EditorCell_Scene
        }
        scene.cellId = scene.sNode.nodeId.toString()
        return scene
    }

    override fun paintTrace(g: Graphics2D, x: Int, y: Int) {
        val shape = getComponentShape(x, y + lineSize)
        g.paint = MPSColors.GRAY
        FBConnectionPathPainter.setupShadowPathPaint(g, scale(1).toFloat())
        g.draw(shape)
    }

    override fun getInputEventPortBounds(eventNumber: Int): Rectangle {
        val lineSize = lineSize
        val width = scale(PORT_SIZE)
        val y = eventNumber * lineSize
        return Rectangle(0, y, width, lineSize)
    }

    override fun getOutputEventPortBounds(eventNumber: Int): Rectangle {
        val lineSize = lineSize
        val width = scale(PORT_SIZE)
        val y = eventNumber * lineSize
        return Rectangle(rootCell.width - width, y, width, lineSize)
    }

    override fun getInputDataPortBounds(dataNumber: Int): Rectangle {
        val lineSize = lineSize
        val width = scale(PORT_SIZE)
        val y = (eventPortsCount + 2 + dataNumber) * lineSize
        return Rectangle(0, y, width, lineSize)
    }

    override fun getOutputDataPortBounds(dataNumber: Int): Rectangle {
        val lineSize = lineSize
        val width = scale(PORT_SIZE)
        val y = (eventPortsCount + 2 + dataNumber) * lineSize
        return Rectangle(rootCell.width - width, y, width, lineSize)
    }

    override fun getSocketPortBounds(socketNumber: Int): Rectangle {
        val lineSize = lineSize
        val width = scale(PORT_SIZE)
        val y = (eventPortsCount + inputDataPortsCount + 2 + socketNumber) * lineSize
        return Rectangle(0, y, width, lineSize)
    }

    override fun getPlugPortBounds(plugNumber: Int): Rectangle {
        val lineSize = lineSize
        val width = scale(PORT_SIZE)
        val y = (eventPortsCount + 2 + outputDataPortsCount + plugNumber) * lineSize
        return Rectangle(rootCell.width - width, y, width, lineSize)
    }

    init {
        rootCell = createCollection()
        typeNameLabel = createTypeNameLabel()
        sceneCell = createSceneCell(parent, editorShift)
        sceneCell.style.set(StyleAttributes.TEXT_COLOR, if (isEditable) MPSColors.BLACK else MPSColors.DARK_GRAY)
        sceneCell.style.set(StyleAttributes.DRAW_BORDER, false)
        rootCell.addEditorCell(sceneCell)
        rootCell.addEditorCell(typeNameLabel)
        initPorts()
    }
}
