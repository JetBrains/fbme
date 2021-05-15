package org.fbme.ide.richediting.adapters.ecc;

import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.EditorContext;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.iec61499.repository.PlatformElementsOwner;
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider;
import org.fbme.ide.richediting.RicheditingMpsBridge;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.ide.richediting.inspections.ECCInspectionsFacility;
import org.fbme.lib.common.Element;
import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.ecc.ECC;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.lib.iec61499.ecc.StateTransition;
import org.fbme.scenes.cells.EditorCell_Scene;
import org.fbme.scenes.controllers.*;
import org.fbme.scenes.controllers.components.ComponentControllerFactory;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.*;
import org.fbme.scenes.controllers.scene.*;
import org.fbme.scenes.viewmodel.PositionalCompletionItem;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.*;
import java.util.List;

public class ECCEditors {
    private static final Logger LOG = LogManager.getLogger(ECCEditors.class);
    public static final SceneStateKey<Map<StateAction, Boolean>> IS_OPEN_ALGORITHM_BODY = new SceneStateKey<>("is-open-body");
    public static final SceneStateKey<Map<StateDeclaration, Boolean>> IS_OPEN_ACTIONS = new SceneStateKey<>("is-open-actions");

    public static EditorCell createEccEditor(EditorContext context, SNode node, SceneLayout layout) {
        try {
            PlatformElementsOwner repository = PlatformRepositoryProvider.getInstance(context.getOperationContext().getProject());
            context.getOperationContext().getProject();
            EditorCell_Scene scene = new EditorCell_Scene(context, node, layout);
            Layer backgroundLayer = scene.createLayer(0.f);
            Layer tracesLayer = scene.createLayer(1.f);
            Layer componentsLayer = scene.createLayer(3.f);
            Layer connectionsLayer = scene.createLayer(2.f);

            EditorComponent editorComponent = (EditorComponent) context.getEditorComponent();

            SceneViewpoint viewpoint = (layout == SceneLayout.WINDOWED ? new SceneViewpointByCell(scene, scene) : scene.getImplicitViewpoint());
            SceneFocusModel focus = new DefaultFocusModel();
            if (layout == SceneLayout.WINDOWED) {
                new WindowedBackgroundDragFacility(scene, (SceneViewpointByCell) viewpoint, backgroundLayer);
            } else {
                new FullEditorBackgroundDragFacility(scene, scene, editorComponent.getViewport(), backgroundLayer);
            }
            new BackgroundFocusLossFacility(scene, focus, backgroundLayer);

            DefaultSelectionModel<StateDeclaration> componentsSelection = new DefaultSelectionModel<>();
            DefaultLayoutModel<StateDeclaration> componentsLayout = new DefaultLayoutModel<>(context.getRepository());

            final IEC61499Factory declarationFactory = repository.getIEC61499Factory();
            final ECC ecc = repository.getAdapter(node, BasicFBTypeDeclaration.class).getEcc();

            scene.getStyle().set(RichEditorStyleAttributes.ALL_ALGORITHMS, getAllAlgorithmsFromDeclarationFactory(ecc));
            scene.getStyle().set(RichEditorStyleAttributes.ALL_OUTPUTS, getAllOutputsFromDeclarationFactory(ecc));
            scene.getStyle().set(RichEditorStyleAttributes.FACTORY_DECLARATION, declarationFactory);
            ECCViewAdapter eccAdapter = new ECCViewAdapter(ecc, declarationFactory);

            final ComponentsFacility<StateDeclaration, Point> componentsFacility = new ComponentsFacility<>(
                    scene, eccAdapter, getStateControllerFactory(scene), new ECCSynchronizer(viewpoint),
                    componentsLayout, componentsSelection, focus, componentsLayer, tracesLayer
            );

            scene.addCompletionProvider(new CompletionProviderByViewpoint(viewpoint, () -> getCompletion(ecc, declarationFactory)));

            ECPortSettingProvider portSettings = ECPortSettingProvider.create(componentsFacility);
            DiagramComponentSettingProvider<StateDeclaration, Point> settingProvider = new DiagramComponentSettingProvider<>() {
                @NotNull
                public Point getModelForm(@NotNull StateDeclaration component) {
                    return componentsFacility.getModelForm(component);
                }

                @Nullable
                public Point getTransformedForm(@NotNull StateDeclaration component) {
                    return componentsFacility.getTransformedForm(component);
                }
            };
            DiagramFacility<StateDeclaration, StateDeclaration, StateTransition, Point> diagramFacility = new DiagramFacility<>(eccAdapter, portSettings, settingProvider);
            final ConnectionsFacility<StateDeclaration, StateDeclaration, StateTransition, ECTransitionCursor, ECTransitionPath> connectionsFacility =
                    new ConnectionsFacility<>(
                            scene, getTransitionControllerFactory(componentsFacility), ECTransitionUtils.PATH_FACTORY, ECTransitionUtils.PATH_PAINTER,
                            new ECTransitionPathSynchronizer(viewpoint, componentsFacility), componentsLayout, componentsSelection, diagramFacility.getDiagramController(),
                            connectionsLayer, tracesLayer, focus
                    );

            new ECCInspectionsFacility(ecc, scene, it -> (ECTransitionController) connectionsFacility.getController(it));

            return scene;
        } catch (RuntimeException e) {
            LOG.error("Error during cell creation", e);
            throw e;
        }
    }

    private static ComponentControllerFactory<StateDeclaration, Point> getStateControllerFactory(EditorCell_Scene scene) {
        return ((context, state) -> {
            if (state instanceof PlatformElement) {
                return new ECStateController(scene, context, state);
            }
            return null;
        });
    }

    public static ConnectionControllerFactory<StateTransition, ECTransitionCursor, ECTransitionPath>
    getTransitionControllerFactory(
            ComponentsFacility<StateDeclaration, Point> componentsFacility
    ) {
        return ((context, transition) -> {
            final SNode transitionNode = ((PlatformElement) transition).getNode();
            final EditorCell_Collection cell = RicheditingMpsBridge.createTransitionCell(context, transitionNode);
            cell.setBig(true);
            StateDeclaration sourceDeclaration = transition.getSourceReference().getTarget();
            StateDeclaration targetDeclaration = transition.getTargetReference().getTarget();

            return new ECTransitionController(
                    new ECTransitionConditionCellHandle() {
                        public EditorCell_Basic getCell() {
                            return cell;
                        }

                        public Rectangle getBounds(Point position) {
                            int width = cell.getWidth();
                            int height = cell.getHeight();
                            return new Rectangle(position.x - width / 2, position.y - height / 2, width, height);
                        }
                    },
                    () -> ECTransitionUtils.getBoundsFromDeclaration(sourceDeclaration, componentsFacility),
                    () -> ECTransitionUtils.getBoundsFromDeclaration(targetDeclaration, componentsFacility));
        });
    }

    public static List<PositionalCompletionItem> getCompletion(final ECC ecc, final IEC61499Factory factory) {
        return Collections.singletonList(new PositionalCompletionItem() {
            public String getMatchingText(String pattern) {
                return pattern;
            }

            public String getDescriptionText() {
                return "create EC state";
            }

            public void invoke(String pattern, int x, int y) {
                StateDeclaration state = factory.createStateDeclaration(null);
                state.setName(pattern);
                state.setX(x);
                state.setY(y);
                ecc.getStates().add(state);
            }
        });
    }

    public static void hideAllAlgorithms(EditorCell_Scene scene) {
        setHideOrOpenAlgorithmBodyForAllStates(scene, false);
    }

    public static void showAllAlgorithms(EditorCell_Scene scene) {
        setHideOrOpenAlgorithmBodyForAllStates(scene, true);
    }

    private static void setHideOrOpenAlgorithmBodyForAllStates(EditorCell_Scene scene, boolean isOpen) {
        Map<StateAction, Boolean> isOpenAlgorithmBody = scene.loadState(ECCEditors.IS_OPEN_ALGORITHM_BODY);
        isOpenAlgorithmBody = (isOpenAlgorithmBody != null ? isOpenAlgorithmBody : new HashMap<>());
        EditorContext context = null;
        for (EditorCell cell: scene.getCells()) {
            StateDeclaration declaration = cell.getStyle().get(RichEditorStyleAttributes.STATE_DECLARATION);
            EditorContext cellContext = cell.getStyle().get(RichEditorStyleAttributes.EDITOR_CONTEXT);
            if (cellContext != null) {
                context = cellContext;
            }
            if (declaration != null) {
                for (StateAction action: declaration.getActions()) {
                    isOpenAlgorithmBody.put(action, isOpen);
                }
            }
        }
        scene.storeState(ECCEditors.IS_OPEN_ALGORITHM_BODY, isOpenAlgorithmBody);
        if (context != null) {
            context.getEditorComponent().getUpdater().update();
        }
    }

    public static void hideAllActions(EditorCell_Scene scene) {
        setHideOrOpenActionsForAllStates(scene, false);
    }

    public static void showAllActions(EditorCell_Scene scene) {
        setHideOrOpenActionsForAllStates(scene, true);
    }

    private static void setHideOrOpenActionsForAllStates(EditorCell_Scene scene, boolean isOpen) {
        Map<StateDeclaration, Boolean> isOpenActions = scene.loadState(ECCEditors.IS_OPEN_ACTIONS);
        isOpenActions = (isOpenActions != null ? isOpenActions : new HashMap<>());
        EditorContext context = null;
        for (EditorCell cell: scene.getCells()) {
            StateDeclaration declaration = cell.getStyle().get(RichEditorStyleAttributes.STATE_DECLARATION);
            if (declaration != null) {
                isOpenActions.put(declaration, isOpen);
            }
            if (context == null) {
                EditorContext cellContext = cell.getStyle().get(RichEditorStyleAttributes.EDITOR_CONTEXT);
                if (cellContext != null) {
                    context = cellContext;
                }
            }
        }
        scene.storeState(ECCEditors.IS_OPEN_ACTIONS, isOpenActions);
        if (context != null) {
            context.getEditorComponent().getUpdater().update();
        }
    }

    private static List<AlgorithmDeclaration> getAllAlgorithmsFromDeclarationFactory(ECC ecc) {
        Element element = ecc.getContainer();
        if (element instanceof BasicFBTypeDeclaration) {
            BasicFBTypeDeclaration declaration = (BasicFBTypeDeclaration) element;
            return declaration.getAlgorithms();
        } else {
            return new ArrayList<>();
        }
    }

    private static List<EventDeclaration> getAllOutputsFromDeclarationFactory(ECC ecc) {
        Element element = ecc.getContainer();
        if (element instanceof BasicFBTypeDeclaration) {
            BasicFBTypeDeclaration declaration = (BasicFBTypeDeclaration) element;
            return declaration.getOutputEvents();
        } else {
            return new ArrayList<>();
        }
    }
}
