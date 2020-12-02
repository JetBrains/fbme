package org.fbme.ide.platform.editor;

import com.intellij.openapi.actionSystem.CommonDataKeys;
import com.intellij.openapi.actionSystem.DataKey;

public class HeaderedEditorDataKeys extends CommonDataKeys {

    public static final DataKey<HeaderedNodeEditor> EDITOR = DataKey.create("headered-editor");
}
