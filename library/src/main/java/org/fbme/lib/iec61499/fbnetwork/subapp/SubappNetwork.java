package org.fbme.lib.iec61499.fbnetwork.subapp;

import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface SubappNetwork extends FBNetwork {

    @NotNull List<SubapplicationDeclaration> getSubapplications();
}
