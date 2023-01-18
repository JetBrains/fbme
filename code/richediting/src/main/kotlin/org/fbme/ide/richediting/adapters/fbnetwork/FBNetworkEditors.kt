package org.fbme.ide.richediting.adapters.fbnetwork

import jetbrains.mps.nodeEditor.EditorComponent
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.nodeEditor.cells.EditorCell
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.cells.CellAction
import jetbrains.mps.openapi.editor.cells.CellActionType
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformElementsOwner
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.richediting.RicheditingMpsBridge
import org.fbme.ide.richediting.editor.RichEditorDataKeys
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.ide.richediting.inspections.NetworkInspectionsFacility
import org.fbme.ide.richediting.viewmodel.*
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.DeclarationsScope
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterAssignment
import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.instances.Instance
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.fbme.scenes.cells.EditorCell_Scene
import org.fbme.scenes.cells.SceneStyleAttributes.SCENE_BACKGROUND
import org.fbme.scenes.controllers.*
import org.fbme.scenes.controllers.components.*
import org.fbme.scenes.controllers.diagram.*
import org.fbme.scenes.controllers.scene.*
import org.fbme.scenes.viewmodel.PositionalCompletionItem
import org.jetbrains.mps.openapi.model.SNode
import java.awt.Point

object FBNetworkEditors {
    @JvmField
    val CONNECTION_CONTROLLER_FACTORY: ConnectionControllerFactory<NetworkConnectionView, FBConnectionCursor, FBConnectionPath> =
        object : ConnectionControllerFactory<NetworkConnectionView, FBConnectionCursor, FBConnectionPath> {
            override fun create(
                context: EditorContext,
                view: NetworkConnectionView
            ): ConnectionController<FBConnectionCursor, FBConnectionPath> {
                return FBConnectionController(
                    context,
                    view
                )
            }
        }

    @JvmField
    val INLINE_VALUE_CONTROLLER_FACTORY: ComponentExtControllerFactory<NetworkComponentView, Point> =
        object : ComponentExtControllerFactory<NetworkComponentView, Point> {
            override fun create(
                context: EditorContext,
                extView: NetworkComponentView,
                compController: ComponentController<Point>
            ): ComponentExtController<Point> {
                require(!(extView !is InlineValueView || compController !is FunctionBlockController))
                val repository: PlatformElementsOwner =
                    PlatformRepositoryProvider.getInstance(context.operationContext.project)
                val node = extView.associatedNode.parent
                val parameter = repository.getAdapter(node, ParameterAssignment::class.java)
                    ?: error("Parameter assignment is null")
                val cell = RicheditingMpsBridge.createInlineValueCell(context, node!!)
                if (parameter.value == null) {
                    val action: CellAction = object : CellAction {
                        override fun getDescriptionText(): String {
                            return "Delete empty constant"
                        }

                        override fun executeInCommand(): Boolean {
                            return true
                        }

                        override fun canExecute(context: EditorContext): Boolean {
                            return true
                        }

                        override fun execute(context: EditorContext) {
                            parameter.remove()
                        }
                    }
                    cell.setAction(CellActionType.DELETE, action)
                    cell.setAction(CellActionType.BACKSPACE, action)
                }
                cell.isBig = true
                return InlineValueController(context, extView, compController, cell as EditorCell)
            }
        }

    @JvmStatic
    fun createCellForNetworkInstance(context: EditorContext, node: SNode?, layout: SceneLayout): EditorCell {
        val scene = EditorCell_Scene(context, node!!, layout)
        val networkInstance = RichEditorDataKeys.contextNetworkInstance(context)
        val style = scene.style
        if (networkInstance != null && networkInstance.networkDeclaration is PlatformElement) {
            style.set(RichEditorStyleAttributes.NETWORK_INSTANCE, networkInstance)
            initializeSceneCell(scene, networkInstance, context, layout)
        }
        return scene
    }

    @JvmStatic
    @JvmOverloads
    fun createFBNetworkCell(
        context: EditorContext,
        node: SNode?,
        layout: SceneLayout,
        parent: Instance? = null,
        editorShift: Point = Point()
    ): EditorCell {
        val scene = EditorCell_Scene(context, node!!, layout)
        val repository: PlatformElementsOwner = PlatformRepositoryProvider.getInstance(context.operationContext.project)
        val declaration = repository.getAdapter(node, Declaration::class.java)
            ?: error("Error when creating NetworkCell: Declaration is null")
        val networkInstance = NetworkInstance.createForDeclaration(declaration, parent)
        initializeSceneCell(scene, networkInstance, context, layout, editorShift)
        return scene
    }

    private fun initializeSceneCell(
        scene: EditorCell_Scene,
        networkInstance: NetworkInstance,
        context: EditorContext,
        layout: SceneLayout,
        editorShift: Point = Point()
    ) {
        val networkDeclaration = networkInstance.networkDeclaration
        val model = (networkDeclaration as PlatformElement).node.model
        val style = scene.style
        style.set(RichEditorStyleAttributes.NETWORK, networkDeclaration)
        style.set(RichEditorStyleAttributes.NETWORK_INSTANCE, networkInstance)
        style.set(SCENE_BACKGROUND, MPSColors.WHITE)
        val component = context.editorComponent as EditorComponent
        val project = context.operationContext.project
        val repository = PlatformRepositoryProvider.getInstance(project)
        try {
            val isEditable = networkInstance.parent == null
            val networkView = NetworkView(repository.iec61499Factory, networkDeclaration, isEditable)
            val backgroundLayer = scene.createLayer(0f)
            val tracesLayer = scene.createLayer(1f)
            val componentsLayer = scene.createLayer(2f)
            val connectionsLayer = scene.createLayer(3f)
            val inspectionsLayer = scene.createLayer(4f)
            val scale = RicheditingMpsBridge.getEditorScale(project)
            val viewpoint = if (layout === SceneLayout.WINDOWED) {
                SceneViewpointByCell(scene, scene, editorShift.x, editorShift.y)
            } else {
                scene.viewpoint!!
            }
            style.set(RichEditorStyleAttributes.VIEWPOINT, viewpoint)
            val focus: SceneFocusModel = DefaultFocusModel()
            if (layout === SceneLayout.WINDOWED) {
                WindowedBackgroundDragFacility(scene, (viewpoint as SceneViewpointByCell), backgroundLayer)
            } else {
                FullEditorBackgroundDragFacility(scene, scene, component.viewport, backgroundLayer)
            }
            BackgroundFocusLossFacility(scene, focus, backgroundLayer)
            val componentsSelection = DefaultSelectionModel<NetworkComponentView>()
            style.set(RichEditorStyleAttributes.SELECTED_FBS, componentsSelection)
            val componentsLayout = DefaultLayoutModel<NetworkComponentView>(context.repository)
            val expandedComponentsController = ExpandedComponentsController(scene, context)
            val componentsFacility = ComponentsFacility(
                scene,
                networkView.componentsView,
                getComponentControllerFactory(networkInstance, expandedComponentsController),
                FBNetworkComponentSynchronizer(viewpoint, scale, expandedComponentsController),
                componentsLayout,
                componentsSelection,
                focus,
                componentsLayer,
                tracesLayer
            )
            style.set(RichEditorStyleAttributes.COMPONENTS_FACILITY, componentsFacility)
            val completionScope = repository.getDeclarationScopeFor(model)
            val factory = repository.iec61499Factory
            val provider: SceneCompletionProvider = CompletionProviderByViewpoint(viewpoint) {
                getCompletion(completionScope, factory, networkDeclaration, scale)
            }
            scene.addCompletionProvider(provider)
            val inlineValuesView = networkView.extensionsView
            val inlineValuesFacility = ComponentsExtensionsFacility(
                inlineValuesView,
                componentsFacility,
                INLINE_VALUE_CONTROLLER_FACTORY,
                componentsLayer,
                tracesLayer
            )
            val componentProvider = componentProvider@{ it: NetworkComponentView ->
                if (it is InlineValueView || it is BrokenPortView) {
                    inlineValuesFacility.getController(it) as FBNetworkComponentController
                } else {
                    componentsFacility.getController(it) as FBNetworkComponentController
                }
            }
            val portSettings = FBPortSettingProvider(componentProvider)
            val diagramComponentSettings: DiagramComponentSettingProvider<NetworkComponentView, Point> =
                object : DiagramComponentSettingProvider<NetworkComponentView, Point> {
                    override fun getModelForm(component: NetworkComponentView): Point {
                        return if (component is InlineValueView || component is BrokenPortView) {
                            inlineValuesFacility.getModelForm(component)
                        } else componentsFacility.getModelForm(component)
                    }

                    override fun getTransformedForm(component: NetworkComponentView): Point? {
                        return if (component is InlineValueView || component is BrokenPortView) {
                            inlineValuesFacility.getTransformedForm(component)
                        } else componentsFacility.getTransformedForm(component)
                    }
                }
            val diagramFacility = DiagramFacility(networkView.diagramView, portSettings, diagramComponentSettings)
            style.set(RichEditorStyleAttributes.DIAGRAM_FACILITY, diagramFacility)
            val extendedLayout: ROLayoutModel<NetworkComponentView> = ExtendedLayoutModel(
                componentsLayout,
                { view, compPosition ->
                    val controller = inlineValuesFacility.getController(view) as InlineValueController
                    controller.getCoordinates(compPosition)
                },
                { inlineValuesView.getExtensions(it) }
            )
            val connectionsFacility = ConnectionsFacility(
                scene,
                CONNECTION_CONTROLLER_FACTORY,
                FBConnectionUtils.getPathFactory(style),
                FBConnectionUtils.getPathPainter(style),
                FBConnectionPathSynchronizer(
                    viewpoint,
                    scale,
                    expandedComponentsController,
                    componentsFacility,
                    diagramFacility.diagramController
                ),
                extendedLayout,
                componentsSelection,
                diagramFacility.diagramController,
                connectionsLayer,
                tracesLayer,
                focus
            )
            style.set(RichEditorStyleAttributes.CONNECTIONS_FACILITY, connectionsFacility)
            val connectionProvider = { it: NetworkConnectionView ->
                connectionsFacility.getController(it) as FBConnectionController
            }
            val networkInspectionsFacility = NetworkInspectionsFacility(
                networkView,
                networkInstance,
                scene,
                componentProvider,
                connectionProvider,
                extendedLayout,
                inspectionsLayer
            )
            style.set(RichEditorStyleAttributes.INSPECTIONS_FACILITY, networkInspectionsFacility)
        } catch (e: RuntimeException) {
//            LOG.error("Error during cell creation", e);
        }
    }

    @JvmStatic
    fun getComponentControllerFactory(
        instance: NetworkInstance,
        expandedComponentsController: ExpandedComponentsController
    ): ComponentControllerFactory<NetworkComponentView, Point> {
        return object : ComponentControllerFactory<NetworkComponentView, Point> {
            override fun create(context: EditorContext, view: NetworkComponentView): ComponentController<Point>? {
                if (view is FunctionBlockView) {
                    return FunctionBlockController(context, view, instance, expandedComponentsController)
                }
                if (view is InterfaceEndpointView) {
                    return EndpointPortController(context, view)
                }
                return null
            }
        }
    }

    private fun getCompletion(
        scope: DeclarationsScope,
        factory: IEC61499Factory,
        fbNetwork: FBNetwork,
        scale: Float
    ): List<PositionalCompletionItem> {
        return scope.findAllFBTypeDeclarations().map { type: FBTypeDeclaration ->
            object : PositionalCompletionItem {
                override fun getMatchingText(pattern: String?): String {
                    return type.name
                }

                override val descriptionText: String
                    get() {
                        return "create function block"
                    }

                override fun invoke(pattern: String?, x: Int, y: Int) {
                    val declaration = factory.createFunctionBlockDeclaration(StringIdentifier(type.name))
                    declaration.x = (x / scale).toInt()
                    declaration.y = (y / scale).toInt()
                    declaration.typeReference.setTarget(type)
                    fbNetwork.functionBlocks.add(declaration)
                }
            }
        }
    }
}
