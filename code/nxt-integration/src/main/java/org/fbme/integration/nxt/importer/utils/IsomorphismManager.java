package org.fbme.integration.nxt.importer.utils;

import jetbrains.mps.nodeEditor.Highlighter;
import jetbrains.mps.project.Project;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.iec61499.repository.PlatformRepository;
import org.fbme.integration.nxt.importer.graph.model.Graph;
import org.fbme.integration.nxt.importer.network.NetworksAnalyser;
import org.fbme.integration.nxt.importer.network.RefactoringRequest;
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.*;
import java.util.stream.Collectors;

public class IsomorphismManager {
    private Project project;
    private PlatformRepository platformRepository;
    private NetworksAnalyser networksAnalyser;
    private IsomorphismHighlighter isomorphismHighlighter;
    private Highlighter highlighter;
    private volatile Map<Graph, FBNetwork> networkByGraph;
    private volatile List<RefactoringRequest> requests;
    private List<IsomorphismListener> listeners;
    private Thread collectThread;
    private final Runnable collectListener = () -> networkByGraph = networksAnalyser.convertNetworks(getNetworks());

    private final Runnable launchListener = () -> {
        while (true) {
            try {
                project.getRepository().getModelAccess().runReadAction(collectListener);
                requests = networksAnalyser.collectRequests(networkByGraph);
                Thread.sleep(120000);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
    };

    public IsomorphismManager(Project project, PlatformRepository platformRepository, NetworksAnalyser networksAnalyser) {
        this.project = project;
        this.platformRepository = platformRepository;
        this.networksAnalyser = networksAnalyser;
        this.requests = List.of();
        this.listeners = new ArrayList<>();

        this.isomorphismHighlighter = new IsomorphismHighlighter(this);
        this.highlighter = project.getComponent(Highlighter.class);
        this.highlighter.addChecker(this.isomorphismHighlighter);

        this.collectThread = new Thread(launchListener);
        this.collectThread.start();
    }

    public void dispose() {
        this.highlighter.removeChecker(this.isomorphismHighlighter);
        this.isomorphismHighlighter.dispose();
        this.collectThread.interrupt();
    }

    public void addListener(IsomorphismListener listener) {
        this.listeners.add(listener);
    }

    public void removeListener(IsomorphismListener listener) {
        this.listeners.remove(listener);
    }

    public List<RefactoringRequest> getRequestsBySNode(SNode node) {
        return requests.stream()
                .filter(request -> request.networkSubgraphDeclarations
                        .stream()
                        .map(nsg -> ((FBTypeDeclaration) nsg.getNetwork().getContainer()))
                        .filter(Objects::nonNull)
                        .anyMatch(typeDeclaration -> ((PlatformElement) typeDeclaration).getNode() == node)
                )
                .collect(Collectors.toList());
    }

    public RefactoringRequest getApplyableRequest(FBNetwork fbNetwork) {
        PlatformElement platformElement = (PlatformElement) fbNetwork.getContainer();
        if (platformElement == null) {
            return null;
        }

        return getRequestsBySNode(platformElement.getNode())
                .stream()
                .max(new NetworksAnalyser.RefactoringRequestComparator())
                .orElse(null);
    }

    public void removeRequest(RefactoringRequest request) {
        Set<RefactoringRequest> requestToRemove = new HashSet<>();
        requestToRemove.add(request);

        for (var nsg : request.networkSubgraphDeclarations) {
            PlatformElement platformElement = (PlatformElement) nsg.getNetwork().getContainer();
            if (platformElement == null) {
                continue;
            }

            requestToRemove.addAll(getRequestsBySNode(platformElement.getNode()));
        }

        requests.removeAll(requestToRemove);
    }

    private List<FBNetwork> getNetworks() {
        return platformRepository.getDeclarationsScope()
                .findAllFBTypeDeclarations()
                .stream()
                .filter(declaration -> declaration instanceof CompositeFBTypeDeclaration)
                .map(declaration -> ((CompositeFBTypeDeclaration) declaration).getNetwork())
                .collect(Collectors.toList());
    }

    public interface IsomorphismListener {
        void changed(SNode node);
    }
}
