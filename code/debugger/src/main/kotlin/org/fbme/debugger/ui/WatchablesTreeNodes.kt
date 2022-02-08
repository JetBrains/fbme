package org.fbme.debugger.ui

import org.fbme.ide.platform.debugger.Watchable
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration

object WatchablesTreeNodes {
    interface NodeWithDeclaration : NavigatableNode {
        val declaration: Declaration
    }

    interface CompositeFBParentNode : NavigatableTreeNode
    interface BasicFBParentNode : NavigatableTreeNode

    class ResourceNode(
        override val declaration: ResourceDeclaration,
        val name: String
    ) : TreeNode(), NodeWithDeclaration, CompositeFBParentNode, BasicFBParentNode {
        override val parent: NavigatableTreeNode? = null
    }

    interface FBNode : NavigatableTreeNode, NodeWithDeclaration {
        override val declaration: FunctionBlockDeclaration
        val name: String
    }

    class CompositeFBNode(
        override val parent: CompositeFBParentNode,
        override val declaration: FunctionBlockDeclaration,
        override val name: String
    ) : TreeNode(), FBNode, BasicFBParentNode

    class BasicFBNode(
        override val parent: BasicFBParentNode,
        override val declaration: FunctionBlockDeclaration,
        override val name: String
    ) : TreeNode(), FBNode

    class PortNode(
        override val parent: FBNode,
        val watchable: Watchable,
        val isEvent: Boolean,
        val isInput: Boolean
    ) : LeafNode()
}