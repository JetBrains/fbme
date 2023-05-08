package org.fbme.ide.richediting.adapters.ecc

import jetbrains.mps.nodeEditor.EditorComponent
import jetbrains.mps.nodeEditor.cells.EditorCell
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic
import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformElementsOwner
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.richediting.RicheditingMpsBridge.Companion.createTransitionCell
import org.fbme.ide.richediting.adapters.ecc.ECTransitionUtils.getBoundsFromDeclaration
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.ide.richediting.inspections.ECCInspectionsFacility
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.ecc.ECC
import org.fbme.lib.iec61499.ecc.StateAction
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.lib.iec61499.instances.ECCInstance
import org.fbme.lib.iec61499.instances.Instance
import org.fbme.scenes.cells.EditorCell_Scene
import org.fbme.scenes.controllers.*
import org.fbme.scenes.controllers.components.ComponentController
import org.fbme.scenes.controllers.components.ComponentControllerFactory
import org.fbme.scenes.controllers.components.ComponentsFacility
import org.fbme.scenes.controllers.diagram.*
import org.fbme.scenes.controllers.scene.*
import org.fbme.scenes.viewmodel.PositionalCompletionItem
import org.jetbrains.mps.openapi.model.SNode
import org.slf4j.LoggerFactory
import java.awt.Point
import java.awt.Rectangle

object ECCEditors {
    private val LOG = LoggerFactory.getLogger(ECCEditors.javaClass)

    @JvmField
    val IS_OPEN_ALGORITHM_BODY = SceneStateKey<MutableMap<StateAction, Boolean>>("is-open-body")

    @JvmField
    val IS_OPEN_ACTIONS = SceneStateKey<MutableMap<StateDeclaration, Boolean>>("is-open-actions")

    @JvmStatic
    @JvmOverloads
    fun createEccEditor(
        context: EditorContext,
        node: SNode,
        layout: SceneLayout,
        parent: Instance? = null,
        editorShift: Point = Point()
    ): EditorCell {
        return try {
            val repository: PlatformElementsOwner =
                PlatformRepositoryProvider.getInstance(context.operationContext.project)
            val scene = EditorCell_Scene(context, node, layout)
            val backgroundLayer = scene.createLayer(0f)
            val tracesLayer = scene.createLayer(1f)
            val componentsLayer = scene.createLayer(3f)
            val connectionsLayer = scene.createLayer(2f)
            val editorComponent = context.editorComponent as EditorComponent
            val viewpoint = if (layout === SceneLayout.WINDOWED) {
                SceneViewpointByCell(scene, scene, editorShift.x, editorShift.y)
            } else {
                scene.viewpoint!!
            }
            val focus: SceneFocusModel = DefaultFocusModel()
            if (layout === SceneLayout.WINDOWED) {
                WindowedBackgroundDragFacility(scene, (viewpoint as SceneViewpointByCell), backgroundLayer)
            } else {
                FullEditorBackgroundDragFacility(scene, scene, editorComponent.viewport, backgroundLayer)
            }
            BackgroundFocusLossFacility(scene, focus, backgroundLayer)
            scene.style.set(RichEditorStyleAttributes.VIEWPOINT, viewpoint)
            val componentsSelection = DefaultSelectionModel<StateDeclaration>()
            val componentsLayout = DefaultLayoutModel<StateDeclaration>(context.repository)
            val declarationFactory = repository.iec61499Factory
            val declaration = repository.getAdapter(node, Declaration::class.java) ?: error("Declaration is null")
            val eccInstance = ECCInstance.createForDeclaration(declaration, parent)
            val ecc = eccInstance.eCCDeclaration
            scene.style.set(RichEditorStyleAttributes.ECC, ecc)
            val isEditable = parent == null
            val eccAdapter = ECCViewAdapter(ecc, declarationFactory, isEditable)
            val componentsFacility = ComponentsFacility(
                scene, eccAdapter, getStateControllerFactory(scene, isEditable), ECCSynchronizer(viewpoint),
                componentsLayout, componentsSelection, focus, componentsLayer, tracesLayer
            )
            scene.style.set(RichEditorStyleAttributes.COMPONENTS_FACILITY, componentsFacility)
            scene.addCompletionProvider(
                CompletionProviderByViewpoint(viewpoint) {
                    getCompletion(ecc, declarationFactory)
                }
            )
            val portSettings = ECPortSettingProvider.create(componentsFacility)
            val settingProvider: DiagramComponentSettingProvider<StateDeclaration, Point> =
                object : DiagramComponentSettingProvider<StateDeclaration, Point> {
                    override fun getModelForm(component: StateDeclaration): Point {
                        return componentsFacility.getModelForm(component)
                    }

                    override fun getTransformedForm(component: StateDeclaration): Point? {
                        return componentsFacility.getTransformedForm(component)
                    }
                }
            val diagramFacility = DiagramFacility(eccAdapter, portSettings, settingProvider)
            scene.style.set(RichEditorStyleAttributes.DIAGRAM_FACILITY, diagramFacility)
            val connectionsFacility = ConnectionsFacility(
                scene,
                getTransitionControllerFactory(componentsFacility, isEditable),
                ECTransitionUtils.PATH_FACTORY,
                ECTransitionUtils.PATH_PAINTER,
                ECTransitionPathSynchronizer(viewpoint, componentsFacility),
                componentsLayout,
                componentsSelection,
                diagramFacility.diagramController,
                connectionsLayer,
                tracesLayer,
                focus
            )
            scene.style.set(RichEditorStyleAttributes.CONNECTIONS_FACILITY, connectionsFacility)
            ECCInspectionsFacility(
                ecc,
                scene
            ) { connectionsFacility.getController(it) as ECTransitionController }
            scene
        } catch (e: RuntimeException) {
            LOG.error("Error during cell creation", e)
            throw e
        }
    }

    private fun getStateControllerFactory(
        scene: EditorCell_Scene,
        isEditable: Boolean
    ): ComponentControllerFactory<StateDeclaration, Point> {
        return object : ComponentControllerFactory<StateDeclaration, Point> {
            override fun create(context: EditorContext, view: StateDeclaration): ComponentController<Point>? {
                if (view !is PlatformElement) {
                    return null
                }
                return ECStateController(scene, context, view, isEditable)
            }
        }
    }

    @JvmStatic
    fun getTransitionControllerFactory(
        componentsFacility: ComponentsFacility<StateDeclaration, Point>,
        isEditable: Boolean
    ): ConnectionControllerFactory<StateTransition, ECTransitionCursor, ECTransitionPath> {
        return object : ConnectionControllerFactory<StateTransition, ECTransitionCursor, ECTransitionPath> {
            override fun create(
                context: EditorContext,
                view: StateTransition
            ): ConnectionController<ECTransitionCursor, ECTransitionPath> {
                val transitionNode = (view as PlatformElement).node
                val cell = createTransitionCell(context, transitionNode)
                cell.isBig = true
                val sourceDeclaration: StateDeclaration =
                    view.sourceReference.getTarget() ?: error("Source declaration is null")
                val targetDeclaration: StateDeclaration =
                    view.targetReference.getTarget() ?: error("Target declaration is null")

                return ECTransitionController(
                    object : ECTransitionConditionCellHandle {
                        override val cell: EditorCell_Basic
                            get() = cell

                        override val idEditable: Boolean
                            get() = isEditable

                        override fun getBounds(position: Point): Rectangle {
                            val width = cell.width
                            val height = cell.height
                            return Rectangle(position.x - width / 2, position.y - height / 2, width, height)
                        }
                    },
                    object : ECStateCellHandle {
                        override val bounds: Rectangle
                            get() {
                                return getBoundsFromDeclaration(sourceDeclaration, componentsFacility)
                            }
                    },
                    object : ECStateCellHandle {
                        override val bounds: Rectangle
                            get() {
                                return getBoundsFromDeclaration(targetDeclaration, componentsFacility)
                            }
                    }
                )
            }
        }
    }

    @JvmStatic
    fun getCompletion(ecc: ECC, factory: IEC61499Factory): List<PositionalCompletionItem> {
        return listOf<PositionalCompletionItem>(object : PositionalCompletionItem {
            override fun getMatchingText(pattern: String?): String? {
                return pattern
            }

            override val descriptionText: String
                get() = "create EC state"

            override fun invoke(pattern: String?, x: Int, y: Int) {
                val state = factory.createStateDeclaration(null)
                state.name = pattern!!
                state.x = x
                state.y = y
                ecc.states.add(state)
            }
        })
    }
}
