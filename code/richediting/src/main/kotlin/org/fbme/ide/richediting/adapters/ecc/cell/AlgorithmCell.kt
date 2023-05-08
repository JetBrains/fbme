package org.fbme.ide.richediting.adapters.ecc.cell

import jetbrains.mps.editor.runtime.style.Measure
import jetbrains.mps.editor.runtime.style.Padding
import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.nodeEditor.cells.EditorCell_Property
import jetbrains.mps.nodeEditor.cells.ModelAccessor
import jetbrains.mps.nodeEditor.cells.ParentSettings
import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.iec61499.repository.PlatformIdentifier
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.richediting.adapters.ecc.ECCEditors
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.declarations.AlgorithmLanguage
import org.fbme.lib.iec61499.ecc.StateAction
import org.fbme.scenes.controllers.scene.scene
import org.jetbrains.mps.openapi.model.SNode
import java.awt.Graphics
import java.awt.Graphics2D
import java.awt.Point
import kotlin.math.max

class AlgorithmCell(
    editorContext: EditorContext,
    accessor: ModelAccessor,
    node: SNode,
    private val action: StateAction,
    val algorithmBody: EditorCell_Collection?,
) : EditorCell_Property(editorContext, accessor, node) {
    init {
        style.set(RichEditorStyleAttributes.STATE_ACTION, action)
        style.set(StyleAttributes.PADDING_BOTTOM, Padding(0.05, Measure.SPACES))
    }

    val isOpenBody get() = scene?.loadState(ECCEditors.IS_OPEN_ALGORITHM_BODY)?.get(action) ?: true

    fun relayoutAll() {
        this.myTextLine.relayout()
        width = this.myTextLine.width
        relayout()
        if (isOpenBody && algorithmBody != null) {
            algorithmBody.relayout()
            for (editorCell in algorithmBody) {
                editorCell.relayout()
            }
        }
    }

    var totalWidth: Int
        get() = if (isOpenBody && algorithmBody != null) max(width, algorithmBody.width) else width
        set(width) {
            setWidth(width)
            if (isOpenBody && algorithmBody != null) {
                algorithmBody.width = width - CellConstants.ACTIVE_WEIGHT_PADDING
            }
        }
    val totalHeight: Int
        get() = if (isOpenBody && algorithmBody != null) myHeight + algorithmBody.height + CellConstants.BOTTOM_PADDING else height

    fun moveToAll(x: Int, y: Int, currentHeight: Int) {
        var h = currentHeight
        moveTo(x, y + h)
        h += height
        if (isOpenBody && algorithmBody != null) {
            algorithmBody.moveTo(x + CellConstants.LEFT_ALGORITHM_BODY_PADDING, y + h)
        }
    }

    val algorithmBodyPoint: Point
        get() = Point(x + CellConstants.LEFT_ALGORITHM_BODY_PADDING, y + height)

    override fun paintContent(graphics: Graphics, settings: ParentSettings) {
        if (isOpenBody && algorithmBody != null) {
            val g = graphics.create() as Graphics2D
            g.color = CellConstants.ALGORITHM_COLOR
            g.fillRoundRect(
                myX,
                myY,
                myWidth + CellConstants.ACTIVE_WEIGHT_PADDING,
                totalHeight,
                CellConstants.ROUNDED,
                CellConstants.ROUNDED
            )
            drawText(graphics, settings)
        } else if (algorithmBody != null) {
            val g = graphics.create() as Graphics2D
            g.color = CellConstants.HIDDEN_ALGORITHM_COLOR
            g.fillRoundRect(
                myX,
                myY,
                myWidth + CellConstants.ACTIVE_WEIGHT_PADDING,
                myHeight,
                CellConstants.ROUNDED,
                CellConstants.ROUNDED
            )
            drawText(graphics, settings)
        } else {
            val g = graphics.create() as Graphics2D
            g.color = CellConstants.ALGORITHM_COLOR
            g.fillRoundRect(myX, myY, myWidth + CellConstants.ACTIVE_WEIGHT_PADDING, myHeight, 10, 10)
            if (isEditable) {
                drawText(graphics, settings)
            }
        }
    }

    private fun drawText(graphics: Graphics, settings: ParentSettings) {
        val dx = (myWidth - myTextLine.width + CellConstants.ACTIVE_WEIGHT_PADDING) / 2
        myX += dx
        super.paintContent(graphics, settings)
        myX -= dx
    }

    companion object {
        @JvmStatic
        fun createAlgorithmCell(
            editorContext: EditorContext,
            algorithm: AlgorithmDeclaration?,
            node: SNode,
            action: StateAction,
            body: EditorCell_Collection?
        ): AlgorithmCell {
            val modelAccessor: ModelAccessor = object : ModelAccessor {
                var currentAlgorithm: AlgorithmDeclaration? = algorithm

                override fun getText() = currentAlgorithm?.name ?: ""

                override fun setText(text: String) {
                    val algorithm = currentAlgorithm
                    if (algorithm == null) {
                        if (text != "") {
                            val fbTypeDeclaration = action.container!!.container!!.container
                            val allAlgorithms = fbTypeDeclaration.algorithms
                            val factory =
                                PlatformRepositoryProvider.getInstance(editorContext.repository).iec61499Factory
                            val newAlgorithmDeclaration = factory.createAlgorithmDeclaration(StringIdentifier(text))
                            val body = factory.createAlgorithmBody(AlgorithmLanguage.ST)
                            newAlgorithmDeclaration.body = body
                            allAlgorithms.add(newAlgorithmDeclaration)
                            action.algorithm.setTarget(newAlgorithmDeclaration)
                            newAlgorithmDeclaration.name = text
                            currentAlgorithm = newAlgorithmDeclaration
                        }
                    } else {
                        if (text == "") {
                            // (action as StateActionByNode).node.dropReference(...)
                            for (sNode in node.children) {
                                for (sReference in sNode.references) {
                                    if (sReference.targetNodeId == (algorithm.identifier as PlatformIdentifier).reference.nodeId) {
                                        sNode.dropReference(sReference.link)
                                        break
                                    }
                                }
                            }
                            algorithm.remove()
                            currentAlgorithm = null
                        } else {
                            algorithm.name = text
                        }
                    }
                }

                override fun isValidText(text: String): Boolean {
                    return true
                }
            }
            return AlgorithmCell(editorContext, modelAccessor, node, action, body)
        }

    }
}
