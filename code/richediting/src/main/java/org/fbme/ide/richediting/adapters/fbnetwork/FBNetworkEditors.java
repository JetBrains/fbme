package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellAction;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.project.Project;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.iec61499.repository.PlatformElementsOwner;
import org.fbme.ide.iec61499.repository.PlatformRepository;
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider;
import org.fbme.ide.richediting.RicheditingMpsBridge;
import org.fbme.ide.richediting.editor.RichEditorDataKeys;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.ide.richediting.inspections.NetworkInspectionsFacility;
import org.fbme.ide.richediting.viewmodel.*;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.StringIdentifier;
import org.fbme.lib.iec61499.DeclarationsScope;
import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.iec61499.declarations.ParameterAssignment;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.fbme.lib.iec61499.instances.Instance;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.fbme.scenes.cells.EditorCell_Scene;
import org.fbme.scenes.cells.SceneStyleAttributes;
import org.fbme.scenes.controllers.*;
import org.fbme.scenes.controllers.components.ComponentControllerFactory;
import org.fbme.scenes.controllers.components.ComponentExtControllerFactory;
import org.fbme.scenes.controllers.components.ComponentsExtensionsFacility;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.ConnectionControllerFactory;
import org.fbme.scenes.controllers.diagram.ConnectionsFacility;
import org.fbme.scenes.controllers.diagram.DiagramComponentSettingProvider;
import org.fbme.scenes.controllers.diagram.DiagramFacility;
import org.fbme.scenes.controllers.scene.*;
import org.fbme.scenes.viewmodel.ComponentExtsView;
import org.fbme.scenes.viewmodel.PositionalCompletionItem;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

public final class FBNetworkEditors {
    private static final Logger LOG = LogManager.getLogger(FBNetworkEditors.class);

    private FBNetworkEditors() {
    }

    public static EditorCell createCellForNetworkInstance(EditorContext context, SNode node, SceneLayout layout) {
        EditorCell_Scene scene = new EditorCell_Scene(context, node, layout);

        NetworkInstance networkInstance = RichEditorDataKeys.contextNetworkInstance(context);
        Style style = scene.getStyle();
        if (networkInstance != null && networkInstance.getNetworkDeclaration() instanceof PlatformElement) {
            style.set(RichEditorStyleAttributes.NETWORK_INSTANCE, networkInstance);
            initializeSceneCell(scene, networkInstance, context, layout);
        }

        return scene;
    }

    public static EditorCell createFBNetworkCell(EditorContext context, SNode node, SceneLayout layout, @Nullable Instance parent) {
        EditorCell_Scene scene = new EditorCell_Scene(context, node, layout);
        PlatformElementsOwner repository = PlatformRepositoryProvider.getInstance(context.getOperationContext().getProject());
        Declaration declaration = repository.getAdapter(node, Declaration.class);
        @NotNull NetworkInstance networkInstance = NetworkInstance.createForDeclaration(declaration, parent);
        initializeSceneCell(scene, networkInstance, context, layout);
        return scene;
    }

    public static EditorCell createFBNetworkCell(EditorContext context, SNode node, SceneLayout layout) {
        return createFBNetworkCell(context, node, layout, null);
    }

    private static void initializeSceneCell(EditorCell_Scene scene, final NetworkInstance networkInstance, EditorContext context, SceneLayout layout) {
        FBNetwork networkDeclaration = networkInstance.getNetworkDeclaration();
        SModel model = ((PlatformElement) networkDeclaration).getNode().getModel();

        Style style = scene.getStyle();
        style.set(RichEditorStyleAttributes.NETWORK, networkDeclaration);
        style.set(RichEditorStyleAttributes.NETWORK_INSTANCE, networkInstance);
        style.set(SceneStyleAttributes.SCENE_BACKGROUND, MPSColors.WHITE);

        EditorComponent component = (EditorComponent) context.getEditorComponent();
        Project project = context.getOperationContext().getProject();
        PlatformRepository repository = PlatformRepositoryProvider.getInstance(project);

        try {

            NetworkView networkView = new NetworkView(repository.getIEC61499Factory(), networkDeclaration, networkInstance.getParent() == null);
            Layer backgroundLayer = scene.createLayer(0.f);
            Layer tracesLayer = scene.createLayer(1.f);
            Layer componentsLayer = scene.createLayer(2.f);
            Layer connectionsLayer = scene.createLayer(3.f);
            Layer inspectionsLayer = scene.createLayer(4.f);

            final float scale = RicheditingMpsBridge.getEditorScale(project);

            SceneViewpoint viewpoint = (layout == SceneLayout.WINDOWED ? new SceneViewpointByCell(scene, scene) : scene.getImplicitViewpoint());
            style.set(RichEditorStyleAttributes.VIEWPOINT, viewpoint);

            SceneFocusModel focus = new DefaultFocusModel();
            if (layout == SceneLayout.WINDOWED) {
                new WindowedBackgroundDragFacility(scene, (SceneViewpointByCell) viewpoint, backgroundLayer);
            } else {
                new FullEditorBackgroundDragFacility(scene, scene, component.getViewport(), backgroundLayer);
            }
            new BackgroundFocusLossFacility(scene, focus, backgroundLayer);

            DefaultSelectionModel<NetworkComponentView> componentsSelection = new DefaultSelectionModel<>();
            style.set(RichEditorStyleAttributes.SELECTED_FBS, componentsSelection);

            DefaultLayoutModel<NetworkComponentView> componentsLayout = new DefaultLayoutModel<>(context.getRepository());
            ExpandedComponentsController expandedComponentsController = new ExpandedComponentsController(scene, context);
            final ComponentsFacility<NetworkComponentView, Point> componentsFacility = new ComponentsFacility<>(
                    scene,
                    networkView.getComponentsView(),
                    getComponentControllerFactory(networkInstance, expandedComponentsController),
                    new FBNetworkComponentSynchronizer(viewpoint, scale, expandedComponentsController),
                    componentsLayout,
                    componentsSelection,
                    focus,
                    componentsLayer,
                    tracesLayer
            );

            style.set(RichEditorStyleAttributes.COMPONENTS_FACILITY, componentsFacility);

            DeclarationsScope completionScope = repository.getDeclarationScopeFor(model);
            IEC61499Factory factory = repository.getIEC61499Factory();
            SceneCompletionProvider provider = new CompletionProviderByViewpoint(viewpoint, () -> getCompletion(completionScope, factory, networkDeclaration, scale));
            scene.addCompletionProvider(provider);

            final ComponentExtsView<NetworkComponentView, NetworkComponentView> inlineValuesView = networkView.getExtensionsView();

            final ComponentsExtensionsFacility<NetworkComponentView, NetworkComponentView, Point> inlineValuesFacility = new ComponentsExtensionsFacility<NetworkComponentView, NetworkComponentView, Point>(inlineValuesView, componentsFacility, INLINE_VALUE_CONTROLLER_FACTORY, componentsLayer, tracesLayer);

            Function<NetworkComponentView, FBNetworkComponentController> componentProvider = it -> {
                if (it instanceof InlineValueView || it instanceof BrokenPortView) {
                    return (FBNetworkComponentController) inlineValuesFacility.getController(it);
                }
                return (FBNetworkComponentController) componentsFacility.getController(it);
            };


            FBPortSettingProvider portSettings = new FBPortSettingProvider(componentProvider);
            DiagramComponentSettingProvider<NetworkComponentView, Point> diagramComponentSettings = new DiagramComponentSettingProvider<>() {
                @NotNull
                public Point getModelForm(@NotNull NetworkComponentView component) {
                    if (component instanceof InlineValueView || component instanceof BrokenPortView) {
                        return inlineValuesFacility.getModelForm(component);
                    }
                    return componentsFacility.getModelForm(component);
                }

                @Nullable
                public Point getTransformedForm(@NotNull NetworkComponentView component) {
                    if (component instanceof InlineValueView || component instanceof BrokenPortView) {
                        return inlineValuesFacility.getTransformedForm(component);
                    }
                    return componentsFacility.getTransformedForm(component);
                }
            };
            DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point> diagramFacility =
                    new DiagramFacility<>(networkView.getDiagramView(), portSettings, diagramComponentSettings);

            style.set(RichEditorStyleAttributes.DIAGRAM_FACILITY, diagramFacility);

            ROLayoutModel<NetworkComponentView> extendedLayout = new ExtendedLayoutModel<>(
                    componentsLayout,
                    (view, compPosition) -> ((InlineValueController) inlineValuesFacility.getController(view)).getCoordinates(compPosition),
                    (view, compPosition) -> ((InlineValueController) inlineValuesFacility.getController(view)).getBounds(compPosition),
                    inlineValuesView::getExtensions
            );

            final ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath> connectionsFacility =
                    new ConnectionsFacility<>(
                            scene, CONNECTION_CONTROLLER_FACTORY, FBConnectionUtils.getPathFactory(style), FBConnectionUtils.getPathPainter(style),
                            new FBConnectionPathSyncronizer(viewpoint, scale, expandedComponentsController), extendedLayout, componentsSelection, diagramFacility.getDiagramController(), connectionsLayer, tracesLayer, focus
                    );
            style.set(RichEditorStyleAttributes.CONNECTIONS_FACILITY, connectionsFacility);

            MagneticNetworkManager magneticNetworkManager = new MagneticNetworkManager(diagramFacility, componentsFacility, connectionsFacility, viewpoint);
            style.set(RichEditorStyleAttributes.MAGNETIC_NETWORK_MANAGER, magneticNetworkManager);

            Function<NetworkConnectionView, FBConnectionController> connectionProvider = it -> (FBConnectionController) connectionsFacility.getController(it);

            new NetworkInspectionsFacility(networkView, networkInstance, scene, componentProvider, connectionProvider, extendedLayout, inspectionsLayer);
        } catch (RuntimeException e) {
            LOG.error("Error during cell creation", e);
        }
    }

    public static final ConnectionControllerFactory<NetworkConnectionView, FBConnectionCursor, FBConnectionPath> CONNECTION_CONTROLLER_FACTORY = FBConnectionController::new;

    public static final ComponentExtControllerFactory<NetworkComponentView, Point> INLINE_VALUE_CONTROLLER_FACTORY = (context, extView, compController) -> {
        if (!(extView instanceof InlineValueView) || !(compController instanceof FunctionBlockController)) {
            throw new IllegalArgumentException();
        }

        PlatformElementsOwner repository = PlatformRepositoryProvider.getInstance(context.getOperationContext().getProject());

        SNode node = ((InlineValueView) extView).getAssociatedNode().getParent();
        final ParameterAssignment parameter = repository.getAdapter(node, ParameterAssignment.class);
        jetbrains.mps.openapi.editor.cells.EditorCell cell = RicheditingMpsBridge.createInlineValueCell(context, node);
        if (parameter.getValue() == null) {
            CellAction action = new CellAction() {
                public String getDescriptionText() {
                    return "Delete empty constant";
                }

                public boolean executeInCommand() {
                    return true;
                }

                public boolean canExecute(EditorContext context) {
                    return true;
                }

                public void execute(EditorContext context) {
                    parameter.remove();
                }
            };
            cell.setAction(CellActionType.DELETE, action);
            cell.setAction(CellActionType.BACKSPACE, action);
        }
        cell.setBig(true);
        return new InlineValueController(context, (InlineValueView) extView, (FunctionBlockController) compController, (EditorCell) cell);
    };

    public static ComponentControllerFactory<NetworkComponentView, Point> getComponentControllerFactory(
            @NotNull NetworkInstance instance,
            ExpandedComponentsController expandedComponentsController
    ) {
        return (context, view) -> {
            if (view instanceof FunctionBlockView) {
                return new FunctionBlockController(context, (FunctionBlockView) view, instance, expandedComponentsController);
            }
            if (view instanceof InterfaceEndpointView) {
                return new EndpointPortController(context, (InterfaceEndpointView) view);
            }
            return null;
        };
    }

    private static List<PositionalCompletionItem> getCompletion(
            final DeclarationsScope scope,
            final IEC61499Factory factory,
            final FBNetwork fbnetwork,
            final float scale
    ) {
        return scope.findAllFBTypeDeclarations().stream()
                .map(type -> new PositionalCompletionItem() {
                    public String getMatchingText(String pattern) {
                        return type.getName();
                    }

                    public String getDescriptionText() {
                        return "create function block";
                    }

                    public void invoke(String pattern, int x, int y) {
                        FunctionBlockDeclaration declaration = factory.createFunctionBlockDeclaration(new StringIdentifier(type.getName()));
                        declaration.setX((int) (x / scale));
                        declaration.setY((int) (y / scale));
                        declaration.getTypeReference().setTarget(type);
                        fbnetwork.getFunctionBlocks().add(declaration);
                    }
                })
                .collect(Collectors.toList());
    }
}
