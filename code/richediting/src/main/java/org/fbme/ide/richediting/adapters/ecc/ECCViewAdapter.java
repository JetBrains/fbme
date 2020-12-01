package org.fbme.ide.richediting.adapters.ecc;

import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.iec61499.ecc.ECC;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.lib.iec61499.ecc.StateTransition;
import org.fbme.scenes.controllers.diagram.DiagramView;
import org.fbme.scenes.viewmodel.ComponentsView;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

public class ECCViewAdapter implements DiagramView<StateDeclaration, StateDeclaration, StateTransition>, ComponentsView<StateDeclaration> {

    private final ECC myEcc;
    private final IEC61499Factory myFactory;

    public ECCViewAdapter(ECC ecc, IEC61499Factory factory) {
        myEcc = ecc;
        myFactory = factory;
    }

    @Override
    public boolean isEditable() {
        return true;
    }

    @NotNull
    @Override
    public Set<StateDeclaration> components() {
        return new HashSet<>(myEcc.getStates());
    }

    @NotNull
    @Override
    public Set<StateTransition> edges() {
        return new HashSet<>(myEcc.getTransitions());
    }

    @Nullable
    @Override
    public StateTransition addEdge(@NotNull StateDeclaration sourcePort, @NotNull StateDeclaration targetPort) {
        StateTransition transition = myFactory.createStateTransition();
        transition.getSourceReference().setTarget(sourcePort);
        transition.getTargetReference().setTarget(targetPort);
        myEcc.getTransitions().add(transition);
        return transition;
    }

    @NotNull
    @Override
    public Set<StateDeclaration> getComponents() {
        return components();
    }

    @NotNull
    @Override
    public Set<StateDeclaration> ports(@NotNull StateDeclaration state) {
        return Collections.singleton(state);
    }

    @NotNull
    @Override
    public StateDeclaration component(@NotNull StateDeclaration state) {
        return state;
    }

    @NotNull
    @Override
    public StateDeclaration sourcePort(StateTransition transition) {
        return Objects.requireNonNull(transition.getSourceReference().getTarget());
    }

    @Override
    public void setSourcePort(StateTransition transition, @NotNull StateDeclaration state) {
        transition.getSourceReference().setTarget(state);
    }

    @NotNull
    @Override
    public StateDeclaration targetPort(StateTransition transition) {
        return Objects.requireNonNull(transition.getTargetReference().getTarget());
    }

    @Override
    public void setTargetPort(StateTransition transition, @NotNull StateDeclaration state) {
        transition.getTargetReference().setTarget(state);
    }

    @Override
    public void removeEdge(@NotNull StateTransition transition) {
        transition.remove();
    }

    @Override
    public void remove(StateDeclaration state) {
        state.remove();
    }
}
