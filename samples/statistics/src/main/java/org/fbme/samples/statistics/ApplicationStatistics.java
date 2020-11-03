package org.fbme.samples.statistics;

import org.fbme.lib.iec61499.declarations.ApplicationDeclaration;
import org.fbme.lib.iec61499.declarations.SubapplicationTypeDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.fbme.lib.iec61499.fbnetwork.subapp.SubappNetwork;
import org.fbme.lib.iec61499.fbnetwork.subapp.SubapplicationDeclaration;

import java.util.function.Consumer;

public class ApplicationStatistics {

    private final ApplicationDeclaration applicationDeclaration;
    private final Consumer<String> traceConsumer;

    public ApplicationStatistics(ApplicationDeclaration applicationDeclaration, Consumer<String> traceConsumer) {
        this.applicationDeclaration = applicationDeclaration;
        this.traceConsumer = traceConsumer;
    }

    public void traceApplication() {
        traceConsumer.accept("Application : " + applicationDeclaration.getName());
        traceFunctionBlocks("  ", applicationDeclaration.getNetwork());
    }

    private void traceFunctionBlocks(String indent, SubappNetwork network) {
        for (FunctionBlockDeclaration functionBlock : network.getFunctionBlocks()) {
            traceConsumer.accept(indent + "Function Block : " + functionBlock.getName());
        }
        for (SubapplicationDeclaration subapplication : network.getSubapplications()) {
            SubapplicationTypeDeclaration typeDeclaration = subapplication.getTypeReference().getTarget();
            SubappNetwork typeNetwork = typeDeclaration == null ? null : typeDeclaration.getNetwork();
            if (typeNetwork != null && !(typeNetwork.getFunctionBlocks().isEmpty() && typeNetwork.getSubapplications().isEmpty())) {
                traceConsumer.accept(indent + "Sub-application : " + subapplication.getName() + "; includes:");
                traceFunctionBlocks(indent + "  ", typeNetwork);
            } else {
                traceConsumer.accept(indent + "Sub-application : " + subapplication.getName());
            }
        }
    }
}
