package org.fbme.ide.platform.editor;

import com.intellij.openapi.actionSystem.*;
import com.intellij.openapi.editor.Document;
import jetbrains.mps.ide.editor.BaseNodeEditor;
import jetbrains.mps.ide.undo.MPSUndoUtil;
import jetbrains.mps.nodeEditor.NodeEditorComponent;
import jetbrains.mps.nodefs.MPSNodeVirtualFile;
import jetbrains.mps.nodefs.NodeVirtualFileSystem;
import jetbrains.mps.openapi.editor.EditorState;
import jetbrains.mps.openapi.editor.selection.SelectionManager;
import jetbrains.mps.project.Project;
import org.fbme.ide.iec61499.editor.ProjectEditorSpecs;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

import javax.swing.*;
import java.awt.*;
import java.io.IOException;
import java.io.StringReader;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

public class HeaderedNodeEditor extends BaseNodeEditor {

    private final MPSNodeVirtualFile myVirtualFile;
    private final SNode myBaseNode;
    private final JPanel myHeaderPanel;

    private EditorProjection myCurrentProjection;
    private JComponent myProjectionComponent;

    private final ActionGroup myToolbarActionGroup;

    {
        final ProjectionChooserComboBoxAction action = new ProjectionChooserComboBoxAction(this);
        myToolbarActionGroup = new ActionGroup() {
            @NotNull
            @Override
            public AnAction[] getChildren(@Nullable AnActionEvent event) {
                return new AnAction[]{action};
            }
        };
    }

    private final ActionToolbar myChooserToolbar = ActionManager.getInstance().createActionToolbar(ActionPlaces.TOOLBAR, myToolbarActionGroup, true);

    public HeaderedNodeEditor(SNode baseNode, @NotNull Project mpsProject) {
        super(mpsProject);
        myBaseNode = baseNode;
        myVirtualFile = NodeVirtualFileSystem.getInstance().getFileFor(mpsProject.getRepository(), myBaseNode);

        myHeaderPanel = new JPanel(new BorderLayout());

        JComponent component = myChooserToolbar.getComponent();
        myHeaderPanel.add(component, BorderLayout.EAST);
        getComponent().add(myHeaderPanel, BorderLayout.NORTH);
        editNode(myBaseNode.getReference(), null);

        initializeFirstAvailableProjection();
    }

    public JComponent getProjectionComponent() {
        return myProjectionComponent;
    }

    @Override
    public boolean isTabbed() {
        return true;
    }

    @Override
    public void dispose() {
        super.dispose();
    }

    @Override
    public void showNode(SNode node, boolean select) {
        NodeEditorComponent ec = getCurrentEditorComponent();
        ProjectEditorSpecs editorSpecs = ProjectEditorSpecs.getInstance(myProject);
        String projectState = editorSpecs.getSpecProjectionState(node);
        node = editorSpecs.getSpecTarget(node);
        if (projectState != null) {
            SAXBuilder builder = new SAXBuilder();
            try {
                Element state = builder.build(new StringReader(projectState)).getRootElement();
                if (state != null) {
                    restoreState(state);
                }
            } catch (JDOMException | IOException e) {
                throw new RuntimeException(e);
            }
        }

        if (select) {
            ec.selectNode(node);
        } else {
            ec.getSelectionManager().setSelection(node, SelectionManager.FOCUS_POLICY_CELL, 0);
        }
    }

    public void chooseProjection(@NotNull EditorProjection projection) {
        myCurrentProjection = projection;
        updateProjectionState();
    }

    @NotNull
    public EditorProjection getCurrentProjection() {
        return myCurrentProjection;
    }

    public void updateProjectionState() {
        final NodeEditorComponent component = getCurrentEditorComponent();
        component.getUpdater().setInitialEditorHints(myCurrentProjection.getInitialEditorHints());
        myProject.getModelAccess().runReadAction(component::rebuildEditorContent);
        if (myProjectionComponent != null) {
            myHeaderPanel.remove(myProjectionComponent);
        }
        myProjectionComponent = myCurrentProjection.createHeaderComponent();
        if (myProjectionComponent != null) {
            myHeaderPanel.add(myProjectionComponent, BorderLayout.WEST);
        }
        myChooserToolbar.updateActionsImmediately();
    }

    @Override
    public List<Document> getAllEditedDocuments() {
        final MPSNodeVirtualFile virtualFile = getCurrentEditorComponent().getVirtualFile();
        return virtualFile != null ? Collections.singletonList(MPSUndoUtil.getDoc(virtualFile)) : Collections.emptyList();
    }

    @Override
    public Object getData(@NonNls String dataId) {
        if (dataId.equals(LangDataKeys.VIRTUAL_FILE.getName())) {
            return myVirtualFile;
        }
        if (dataId.equals(HeaderedEditorDataKeys.EDITOR.getName())) {
            return this;
        }
        if (myCurrentProjection != null) {
            return myCurrentProjection.getData(dataId);
        }
        return null;
    }

    @Override
    public EditorState saveState() {
        HeaderedEditorState state = new HeaderedEditorState();
        saveState(state);
        return state;
    }

    @Override
    protected void saveState(BaseNodeEditor.BaseEditorState state) {
        super.saveState(state);
        if (state instanceof HeaderedEditorState && myCurrentProjection != null) {
            Element projectionState = createDefaultState(myCurrentProjection);
            myCurrentProjection.saveState(projectionState);
            ((HeaderedEditorState) state).myProjectionState = projectionState;
        }
    }

    @Override
    public void loadState(@NotNull final EditorState state) {
        if (state instanceof BaseNodeEditor.BaseEditorState) {
            final BaseNodeEditor.BaseEditorState realState = (BaseEditorState) state;
            myProject.getModelAccess().runReadAction(() -> {
                if (realState instanceof HeaderedEditorState) {
                    Element projectionState = ((HeaderedEditorState) realState).myProjectionState;
                    restoreState(projectionState);
                } else {
                    // regular editor was shown for that node last time
                    initializeFirstAvailableProjection();
                }
                Element componentState = new Element("container");
                realState.save(componentState);
                Element memento = componentState.getChild("memento");
                if (memento != null) {
                    memento.removeChildren("enabledHints");
                    Element hintsElement = new Element("enabledHints");
                    for (String hint : myCurrentProjection.getInitialEditorHints()) {
                        Element hintElement = new Element("enabledHintsElement");
                        hintElement.setAttribute("enabledHintsAttribute", hint);
                        hintsElement.addContent(hintElement);
                    }
                    memento.addContent(hintsElement);
                }
                realState.load(componentState);
            });
            super.loadState(realState);
        }
    }

    private void restoreState(Element projectionState) {
        final String controllerId = projectionState.getAttributeValue(CONTROLLER_ID_KEY);
        String projectionName = projectionState.getAttributeValue(PROJECTION_NAME_KEY);
        if (controllerId != null && projectionName != null) {
            EditorProjectionController controller = EditorProjectionControllerRegistry.getInstance()
                    .getFactories().stream()
                    .filter(it -> Objects.equals(it.getId(), controllerId))
                    .findFirst().orElseThrow()
                    .create(myBaseNode, myProject);
            chooseProjection(controller.restoreProjection(projectionName, projectionState));
        }
    }

    private void initializeFirstAvailableProjection() {
        List<EditorProjectionController.Factory> factories = EditorProjectionControllerRegistry.getInstance()
                .getFactories().stream()
                .filter(it -> it.isApplicable(myBaseNode))
                .collect(Collectors.toList());

        for (EditorProjectionController.Factory factory : factories) {
            EditorProjectionController controller = factory.create(myBaseNode, myProject);
            EditorProjection defaultProjection = controller.createDefaultProjection();
            if (defaultProjection != null) {
                chooseProjection(defaultProjection);
                return;
            }
        }
    }

    public static final String CONTROLLER_ID_KEY = "id";
    public static final String PROJECTION_NAME_KEY = "name";
    public static final String PROJECTION_DATA_KEY = "projection_data";

    private static class HeaderedEditorState extends BaseNodeEditor.BaseEditorState {

        private Element myProjectionState;

        @Override
        public void save(Element e) {
            e.addContent(myProjectionState);
        }

        @Override
        public void load(Element e) {
            myProjectionState = e.getChild(PROJECTION_DATA_KEY).clone();
        }
    }

    public static Element createDefaultState(@NotNull EditorProjection projection) {
        String controllerId = projection.getController().getId();
        String projectionName = projection.getName();

        Element element = new Element(PROJECTION_DATA_KEY);
        element.setAttribute(CONTROLLER_ID_KEY, controllerId);
        element.setAttribute(PROJECTION_NAME_KEY, projectionName);
        return element;
    }
}
