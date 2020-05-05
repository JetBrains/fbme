package org.fbme.lib.iec61499.fbnetwork.subapp;

import org.fbme.lib.iec61499.fbnetwork.FBNetwork;

import java.util.List;

public interface SubappNetwork extends FBNetwork {

    List<SubapplicationDeclaration> getSubapplications();
}
