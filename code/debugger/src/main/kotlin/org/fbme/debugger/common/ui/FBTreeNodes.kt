package org.fbme.debugger.common.ui

import org.fbme.debugger.common.ui.tree.LeafNode
import org.fbme.debugger.common.ui.tree.NavigableNode
import org.fbme.debugger.common.ui.tree.NavigableTreeNode
import org.fbme.debugger.common.ui.tree.TreeNode
import org.fbme.ide.platform.debugger.Watchable
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration

object FBTreeNodes {
    interface NodeWithDeclaration : NavigableNode {
        val declaration: Declaration
    }

    interface CompositeFBParentNode : NavigableTreeNode
    interface BasicFBParentNode : NavigableTreeNode

    class ResourceNode(
        override val declaration: ResourceDeclaration,
        val name: String
    ) : TreeNode(), NodeWithDeclaration, CompositeFBParentNode, BasicFBParentNode {
        override val parent: NavigableTreeNode? = null
    }

    interface FBNode : NavigableTreeNode, NodeWithDeclaration {
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