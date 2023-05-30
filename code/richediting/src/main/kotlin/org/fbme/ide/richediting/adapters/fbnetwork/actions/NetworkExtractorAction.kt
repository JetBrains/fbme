package org.fbme.ide.richediting.adapters.fbnetwork.actions

import com.intellij.util.alsoIfNull
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.project.MPSProject
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.richediting.utils.Notifier
import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.fbnetwork.*

class NetworkExtractorAction(cell: EditorCell, project: MPSProject) : FBNetworkAction(cell, project) {
    fun apply() {
        val funBlock = editedFBs.find { it.associatedNode == cell.sNode }.alsoIfNull{
            showNotification(CANT_GET_FB_CELL)
        } ?: return

        extractNetwork(funBlock)

        cell.editorComponent.updater.update()
    }

    private fun extractNetwork(funBlock: FunctionBlockView) {
        val network = networkInstance.networkDeclaration
        val repository = PlatformRepositoryProvider.getInstance(project)
        val factory = repository.iec61499Factory

        val declaration =
                repository
                        .declarationsScope
                        .findCompositeFBTypeDeclaration(funBlock.component.type.declaration!!.identifier).alsoIfNull {
                    Notifier.showWarning("Couldn't find composite block to deconstruct!")
                } ?: return

        val compositeNetwork = declaration.network

        //Add blocks from composite blocks to network
        val blocksViews = addBlocksFromComposite(funBlock, compositeNetwork, network, factory)

        //Add connections to added blocks
        val creatingConnections: MutableList<FBNetworkConnection> = mutableListOf()
        val connectionsToComposite: MutableList<FBNetworkConnection> = mutableListOf()

        addConnectionsToInternalNetwork(
                network,
                funBlock,
                connectionsToComposite,
                compositeNetwork,
                factory,
                blocksViews,
                creatingConnections
        )

        network.eventConnections.addAll(creatingConnections.filter { it.kind == EntryKind.EVENT })
        network.dataConnections.addAll(creatingConnections.filter { it.kind == EntryKind.DATA })
        network.adapterConnections.addAll(creatingConnections.filter { it.kind == EntryKind.ADAPTER })

        //Delete old connections to composite block
        network.eventConnections.removeAll(connectionsToComposite)
        network.dataConnections.removeAll(connectionsToComposite)
        network.adapterConnections.removeAll(connectionsToComposite)

        //Delete composite block from network
        network.functionBlocks.remove(funBlock.component)
    }

    private fun addConnectionsToInternalNetwork(
            network: FBNetwork,
            funBlock: FunctionBlockView,
            connectionsToComposite: MutableList<FBNetworkConnection>,
            compositeNetwork: FBNetwork,
            factory: IEC61499Factory,
            blocksViews: Map<FunctionBlockDeclaration, FunctionBlockDeclaration>,
            creatingConnections: MutableList<FBNetworkConnection>
    ) {
        val map: MutableMap<Declaration, MutableList<Pair<Declaration, FunctionBlockDeclaration>>> = HashMap()

        network.allConnections.forEach {
            if (it.targetReference.getTarget()?.functionBlock == funBlock.component
                    || it.sourceReference.getTarget()?.functionBlock == funBlock.component) {
                connectionsToComposite.add(it)
            }
        }

        compositeNetwork.allConnections.forEach {
            val target = it.targetReference.getTarget() ?: return@forEach
            val source = it.sourceReference.getTarget() ?: return@forEach

            if (source.functionBlock == null && target.functionBlock == null) return@forEach

            if (source.functionBlock != null && target.functionBlock != null) {
                val newConnection = factory.createFBNetworkConnection(it.kind)
                newConnection.targetReference.setTarget(
                        PortPath.createPortPath(blocksViews[target.functionBlock]!!, it.kind, target.portTarget))
                newConnection.sourceReference.setTarget(
                        PortPath.createPortPath(blocksViews[source.functionBlock]!!, it.kind, source.portTarget))
                newConnection.path = it.path
                creatingConnections.add(newConnection)
            }

            if (source.functionBlock == null) {
                if (map[source.portTarget] == null) {
                    map[source.portTarget] = mutableListOf()
                }

                map[source.portTarget]!!.add(target.portTarget to (target.functionBlock as FunctionBlockDeclaration))

                connectionsToComposite.filterNot {
                    it.sourceReference.getTarget()?.functionBlock == it.targetReference.getTarget()?.functionBlock
                }.forEach { connToComposite ->
                    val cTarget = connToComposite.targetReference.getTarget()
                    val cSource = connToComposite.sourceReference.getTarget()

                    if (cTarget?.portTarget == source.portTarget && cSource != null) {
                        val newConnection = factory.createFBNetworkConnection(it.kind)
                        newConnection.targetReference.setTarget(
                                PortPath.createPortPath(blocksViews[target.functionBlock]!!, it.kind, target.portTarget)
                        )
                        newConnection.path = it.path
                        newConnection.sourceReference.setTarget(
                                PortPath.createPortPath(cSource.functionBlock, it.kind, cSource.portTarget)
                        )
                        creatingConnections.add(newConnection)
                    }
                }
            }

            if (target.functionBlock == null) {
                if (map[target.portTarget] == null) {
                    map[target.portTarget] = mutableListOf()
                }

                map[target.portTarget]!!.add(source.portTarget to (source.functionBlock as FunctionBlockDeclaration))

                connectionsToComposite.filterNot {
                    it.sourceReference.getTarget()?.functionBlock == it.targetReference.getTarget()?.functionBlock
                }.forEach { connToComposite ->
                    val cSource = connToComposite.sourceReference.getTarget()
                    val cTarget = connToComposite.targetReference.getTarget()

                    if (cSource?.portTarget == target.portTarget && cTarget != null) {
                        val newConnection = factory.createFBNetworkConnection(it.kind)
                        newConnection.sourceReference.setTarget(
                                PortPath.createPortPath(blocksViews[target.functionBlock]!!, it.kind, target.portTarget)
                        )
                        newConnection.path = it.path
                        newConnection.targetReference.setTarget(
                                PortPath.createPortPath(cTarget.functionBlock, it.kind, cTarget.portTarget))
                        creatingConnections.add(newConnection)
                    }
                }
            }
        }

       connectionsToComposite.filter {
            it.sourceReference.getTarget()?.functionBlock == it.targetReference.getTarget()?.functionBlock
        }.forEach {
            val source = it.sourceReference.getTarget() ?: return@forEach
            val target = it.targetReference.getTarget() ?: return@forEach
            val targetList = map[target.portTarget]
            val sourceList = map[source.portTarget]

            targetList?.forEach{(tPort, tFb) ->
                sourceList?.forEach {(sPort, sFb) ->
                    val newConnection = factory.createFBNetworkConnection(it.kind)
                    newConnection.sourceReference.setTarget(
                            PortPath.createPortPath(blocksViews[sFb]!!, it.kind, sPort)
                    )
                    newConnection.targetReference.setTarget(
                            PortPath.createPortPath(blocksViews[tFb]!!, it.kind, tPort)
                    )
                    newConnection.path = ConnectionPath(30, 300, 30)
                    creatingConnections.add(newConnection)
                }
            }
        }
    }

    private fun addBlocksFromComposite(
            funBlock: FunctionBlockView,
            compositeNetwork: FBNetwork,
            network: FBNetwork,
            factory: IEC61499Factory
    ): Map<FunctionBlockDeclaration, FunctionBlockDeclaration> {
        val blocksViews = compositeNetwork.functionBlocks.associateWith {
            val identifier = StringIdentifier("${funBlock.component.name}_${it.name}")
            val newView = factory.createFunctionBlockDeclaration(identifier)
            newView.typeReference.setTarget(it.typeReference.getTarget()!!)
            newView.x = it.x + funBlock.component.x
            newView.y = it.y + funBlock.component.y
            newView
        }

        blocksViews.values.forEach {
            network.functionBlocks.add(it)
        }

        return blocksViews
    }

    companion object {
        const val CANT_GET_FB_CELL = "Couldn't find functional block!"
    }
}
