package org.fbme.lib.iec61499.fbnetwork.subapp;

import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public interface SubappNetwork extends FBNetwork {

    @NotNull List<SubapplicationDeclaration> getSubapplications();

    default @NotNull List<FunctionBlockDeclarationBase> getContainedComponents() {
        ArrayList<FunctionBlockDeclarationBase> items = new ArrayList<>();
        items.addAll(getFunctionBlocks());
        items.addAll(getSubapplications());
        return Collections.unmodifiableList(items);
    };
}
