package org.fbme.ide.richediting.adapters.ecc;

import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.style.Style;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.iec61499.repository.PlatformElementsOwner;
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider;
import org.fbme.ide.richediting.RicheditingMpsBridge;
import org.fbme.ide.richediting.inspections.ECCInspectionsFacility;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.iec61499.ecc.ECC;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.lib.iec61499.ecc.StateTransition;
import org.fbme.lib.iec61499.instances.ECCInstance;
import org.fbme.lib.iec61499.instances.Instance;
import org.fbme.scenes.cells.EditorCell_Scene;
import org.fbme.scenes.controllers.*;
import org.fbme.scenes.controllers.components.ComponentControllerFactory;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.ConnectionControllerFactory;
import org.fbme.scenes.controllers.diagram.ConnectionsFacility;
import org.fbme.scenes.controllers.diagram.DiagramComponentSettingProvider;
import org.fbme.scenes.controllers.diagram.DiagramFacility;
import org.fbme.scenes.controllers.scene.*;
import org.fbme.scenes.viewmodel.PositionalCompletionItem;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.Collections;
import java.util.List;

public class ECCEditors {
    private static final Logger LOG = LogManager.getLogger(ECCEditors.class);

    public static EditorCell createEccEditor(EditorContext context, SNode node, SceneLayout layout, @Nullable Instance parent) {
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
            Declaration declaration = repository.getAdapter(node, Declaration.class);
            @NotNull ECCInstance eccInstance = ECCInstance.createForDeclaration(declaration, parent);
            final ECC ecc = eccInstance.getECCDeclaration();
            ECCViewAdapter eccAdapter = new ECCViewAdapter(ecc, declarationFactory);

            final ComponentsFacility<StateDeclaration, Point> componentsFacility = new ComponentsFacility<>(
                    scene, eccAdapter, STATE_CONTROLLER_FACTORY, new ECCSynchronizer(viewpoint),
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
                            scene, TRANSITION_CONTROLLER_FACTORY, ECTransitionUtils.PATH_FACTORY, ECTransitionUtils.PATH_PAINTER,
                            new ECTransitionPathSynchronizer(viewpoint), componentsLayout, componentsSelection, diagramFacility.getDiagramController(),
                            connectionsLayer, tracesLayer, focus
                    );

            new ECCInspectionsFacility(ecc, scene, it -> (ECTransitionController) connectionsFacility.getController(it));

            return scene;
        } catch (RuntimeException e) {
            LOG.error("Error during cell creation", e);
            throw e;
        }
    }

    public static EditorCell createEccEditor(EditorContext context, SNode node, SceneLayout layout) {
        return createEccEditor(context, node, layout, null);
    }

    public static final ComponentControllerFactory<StateDeclaration, Point> STATE_CONTROLLER_FACTORY = (context, state) -> {
        if (state instanceof PlatformElement) {
            final SNode stateNode = ((PlatformElement) state).getNode();
            final EditorCell_Collection cell = RicheditingMpsBridge.createStateDeclarationCell(context, stateNode);
            cell.setBig(true);
            return new ECStateController(new ECStateCellHandle() {
                public EditorCell_Basic getCell() {
                    return cell;
                }

                public Rectangle getBounds(Point position) {
                    cell.relayout();
                    jetbrains.mps.openapi.editor.cells.EditorCell nameCell = cell.firstCell();
                    int width = nameCell.getWidth();
                    int height = nameCell.getHeight();
                    return new Rectangle(position.x - width / 2, position.y - height / 2, width, height);
                }

                public Style getStateTextStyle() {
                    return cell.firstCell().getStyle();
                }
            });
        }
        return null;
    };

    public static final ConnectionControllerFactory<StateTransition, ECTransitionCursor, ECTransitionPath> TRANSITION_CONTROLLER_FACTORY = (context, transition) -> {
        final SNode transitionNode = ((PlatformElement) transition).getNode();
        final EditorCell_Collection cell = RicheditingMpsBridge.createTransitionCell(context, transitionNode);
        cell.setBig(true);
        return new ECTransitionController(new ECTransitionConditionCellHandle() {
            public EditorCell_Basic getCell() {
                return cell;
            }

            public Rectangle getBounds(Point position) {
                int width = cell.getWidth();
                int height = cell.getHeight();
                return new Rectangle(position.x - width / 2, position.y - height / 2, width, height);
            }
        });
    };

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
}
