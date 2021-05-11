package org.fbme.smvDebugger.visualization;

import java.util.Map;
import java.util.Set;
import java.util.HashMap;
import java.util.HashSet;
import jetbrains.mps.project.MPSProject;
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import java.util.List;

import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.fbme.lib.iec61499.fbnetwork.PortPath;
import org.fbme.lib.st.expressions.VariableReference;
import org.fbme.smvDebugger.model.SystemItemValue;
import org.fbme.smvDebugger.model.SystemItem;
import java.util.ArrayList;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration;
import java.util.Objects;
import java.util.Optional;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.declarations.AlgorithmBody;
import org.fbme.lib.st.statements.AssignmentStatement;
import org.fbme.lib.st.expressions.Variable;
import org.fbme.lib.iec61499.ecc.StateTransition;
import org.fbme.lib.iec61499.ecc.ECTransitionCondition;

public class BacktraceService {
  private final Map<String, Set<String>> graph = new HashMap<>();
  private final Set<String> visited = new HashSet<>();
  private final MPSProject project;
  private final CompositeFBTypeDeclaration compositeFb;

  public BacktraceService(final MPSProject project, final CompositeFBTypeDeclaration compositeFb) {
    this.project = project;
    this.compositeFb = compositeFb;
  }

  public List<String> getRelatedItemSimpleNames(final SystemItemValue itemValue) {
    graph.clear();
    visited.clear();

    final SystemItem item = itemValue.getItem();
    switch (item.getType()) {
      case EVENT_PORT:
        backtraceEvent(item.getFbName(), item.getItemName());
      case DATA_PORT:
        backtraceData(item.getFbName(), item.getItemName());
      case ECC:
        backtraceEccState(item.getFbName(), item.getItemName());
    }

    final Set<String> relatedItemSimpleNames = new HashSet<>();
    relatedItemSimpleNames.addAll(graph.keySet());
    graph.values().forEach(relatedItemSimpleNames::addAll);

    return new ArrayList<>(relatedItemSimpleNames);
  }

  private void backtraceEvent(final String curFbName, final String event) {
    this.project.getModelAccess().runReadAction(() -> {
      final FBNetwork fbNethwork = compositeFb.getNetwork();
      final List<FunctionBlockDeclaration> fbs = fbNethwork.getFunctionBlocks();
      final BasicFBTypeDeclaration curFb = (BasicFBTypeDeclaration) fbs.stream().filter(it -> Objects.equals(it.getName(), curFbName)).findFirst().get().getTypeReference().getTarget();
      final Optional<EventDeclaration> inputEventOpt = curFb.getInputEvents().stream().filter(eventD -> Objects.equals(eventD.getName(), event)).findFirst();
      if (inputEventOpt.isPresent()) {
        final EventDeclaration inputEvent = inputEventOpt.get();
        fbNethwork.getEventConnections().stream().filter(con -> {
          final String target = con.getTargetReference().getTarget().getPortTarget().getName();
          return Objects.equals(target, event);
        }).forEach(con -> {
          final String fbName = con.getSourceReference().getTarget().getFunctionBlock().getName();
          final String eventName = con.getSourceReference().getTarget().getPortTarget().getName();
          final String fullName = fbName + "." + eventName;

          if (!visited.contains(fullName)) {
            visited.add(fullName);
            graph.putIfAbsent(fullName, new HashSet<String>());
            graph.get(fullName).add(curFbName + "." + event);
            backtraceEvent(fbName, eventName);
          }
        });
      }
    });
  }

  private void backtraceData(final String curFbName, final String var) {
    this.project.getModelAccess().runReadAction(() -> {
      final FBNetwork fbNethwork = compositeFb.getNetwork();
      final List<FunctionBlockDeclaration> fbs = fbNethwork.getFunctionBlocks();
      final BasicFBTypeDeclaration curFb = (BasicFBTypeDeclaration) fbs.stream().filter(it -> Objects.equals(it.getName(), curFbName)).findFirst().get().getTypeReference().getTarget();
      curFb.getAlgorithms().forEach(algorithm -> ((AlgorithmBody.ST) algorithm.getBody()).getStatements().forEach(statement -> {
        if (statement instanceof AssignmentStatement) {
          final AssignmentStatement assignment = ((AssignmentStatement) statement);
          final Variable curVar = assignment.getVariable();
          if (curVar instanceof VariableReference) {
            if (Objects.equals(((VariableReference) curVar).getReference().getTarget().getName(), var)) {
              curFb.getEcc().getStates().forEach(state -> {
                if (state.getActions().stream().anyMatch(action -> Objects.equals(action.getAlgorithm().getTarget(), algorithm))) {
                  final String eccName = state.getName();
                  final String fullName = curFbName + "." + eccName;
                  if (!(visited.contains(fullName))) {
                    visited.add(fullName);
                    graph.putIfAbsent(fullName, new HashSet<>());
                    graph.get(fullName).add(curFbName + "." + eccName);
                    backtraceEccState(curFbName, eccName);
                  }
                }
              });

            }
          }
        }
      }));
    });
  }

  private void backtraceEccState(final String curFbName, final String state) {
    this.project.getModelAccess().runReadAction(() -> {
      final FBNetwork fbNetwork = compositeFb.getNetwork();
      final List<FunctionBlockDeclaration> fbs = fbNetwork.getFunctionBlocks();
      final BasicFBTypeDeclaration curFb = (BasicFBTypeDeclaration) fbs.stream().filter(it -> Objects.equals(it.getName(), curFbName)).findFirst().get().getTypeReference().getTarget();
      final List<StateTransition> transitions = curFb.getEcc().getTransitions();
      transitions.stream().filter(transition -> Objects.equals(transition.getTargetReference().getTarget().getName(), state)).forEach(transition -> {
        final ECTransitionCondition condition = transition.getCondition();
        PortPath<EventDeclaration> target = condition.getEventReference().getTarget();
        if (target != null) {
          FunctionBlockDeclarationBase functionBlock = target.getFunctionBlock();
          final String eventName = target.getPortTarget().getName();
          final String fullName = functionBlock == null ? eventName : functionBlock.getName() + "." + eventName;
          if (!(visited.contains(fullName))) {
            visited.add(fullName);
            graph.putIfAbsent(fullName, new HashSet<>());
            graph.get(fullName).add(curFbName + "." + state);
            backtraceEvent(curFbName, fullName);
          }
        }
      });
    });
  }
}
