package org.fbme.ide.platform.editor;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.declarations.*;
import org.fbme.lib.iec61499.fbnetwork.subapp.SubapplicationDeclaration;
import org.jetbrains.annotations.NotNull;

public final class HeaderedEditorAlias {

    private HeaderedEditorAlias() {
    }

    public static String getAlias(@NotNull Declaration declaration) {
        if (declaration instanceof AdapterTypeDeclaration) {
            return "Adapter";
        } else if (declaration instanceof BasicFBTypeDeclaration) {
            return "Basic Function Block";
        } else if (declaration instanceof CompositeFBTypeDeclaration) {
            return "Composite Function Block";
        } else if (declaration instanceof DeviceTypeDeclaration) {
            return "Device";
        } else if (declaration instanceof ResourceTypeDeclaration) {
            return "Resource";
        } else if (declaration instanceof SegmentTypeDeclaration) {
            return "Segment";
        } else if (declaration instanceof ServiceInterfaceFBTypeDeclaration) {
            return "Service Interface Function Block";
        } else if (declaration instanceof SubapplicationDeclaration) {
            return "Subapplication";
        } else if (declaration instanceof SystemDeclaration) {
            return "System";
        }
        return "Library Element";
    }
}
