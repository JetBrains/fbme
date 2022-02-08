package org.fbme.debugger.ui

import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.material.ButtonDefaults
import androidx.compose.material.Icon
import androidx.compose.material.MaterialTheme
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material.icons.filled.Stop
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import org.fbme.debugger.Debugger
import org.fbme.debugger.ItemButton
import org.fbme.debugger.ui.DeploymentTreeNodes.DeviceNode
import org.fbme.debugger.ui.DeploymentTreeNodes.ResourceNode
import org.fbme.debugger.ui.DeploymentTreeNodes.SystemNode
import org.fbme.debugger.ui.colors.*
import org.fbme.lib.iec61499.declarations.DeviceDeclaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration

@Composable
fun DeploymentTree(
    debugger: Debugger,
) {
    NavigatableTree(
        nodes = debugger.deployNodes,
        selectedNode = debugger.deploySelectedNode,
        itemContent = getItemContent(debugger)
    )
}

private fun getItemContent(debugger: Debugger): @Composable (NavigatableNode) -> Unit = { node: NavigatableNode ->
    ItemIcon(node)
    ItemName(node, debugger.deploySelectedNode.value === node)
    if (node is ResourceNode) {
        Spacer(modifier = Modifier.width(10.dp))
        DeployResourceButtons(debugger, node)
    }
}

@Composable
private fun ItemIcon(node: NavigatableNode) {
    when (node) {
        is SystemNode -> {
            Spacer(modifier = Modifier.width(3.dp))
            ItemIcon(color = MaterialTheme.colors.SystemIconBackground, text = "S")
        }
        is DeviceNode -> {
            Spacer(modifier = Modifier.width(3.dp))
            ItemIcon(color = MaterialTheme.colors.DeviceIconBackground, text = "D")
        }
        is ResourceNode -> {
            ItemIcon(color = MaterialTheme.colors.ResourceIconBackground, text = "R")
        }
    }
}

@Composable
private fun ItemName(node: NavigatableNode, isSelected: Boolean = false) {
    Spacer(modifier = Modifier.width(3.dp))
    when (node) {
        is SystemNode -> ItemText(text = node.systemName, isSelected)
        is DeviceNode -> ItemText(text = node.deviceName, isSelected)
        is ResourceNode -> ItemText(text = node.resourceName, isSelected)
    }
}

@Composable
private fun DeployResourceButtons(debugger: Debugger, resourceNode: ResourceNode) {
    val deviceNode = resourceNode.parent
    val device = deviceNode.deviceDeclaration
    val resource = resourceNode.resourceDeclaration
    Row(
        verticalAlignment = Alignment.CenterVertically
    ) {
        DeployResourceButton(debugger, device, resource)
        Spacer(modifier = Modifier.width(10.dp))
        StopResourceButton(debugger, device, resource)
    }
}

@Composable
private fun DeployResourceButton(
    debugger: Debugger,
    device: DeviceDeclaration,
    resource: ResourceDeclaration
) {
    ItemButton(
        onClick = {
            debugger.deployResource(device, resource)
        },
        colors = ButtonDefaults.buttonColors(
            backgroundColor = Color.Transparent,
            contentColor = MaterialTheme.colors.DeployResourceIconBackground
        )
    ) {
        Icon(
            Icons.Default.PlayArrow,
            contentDescription = "Deploy",
            modifier = Modifier.size(20.dp),
        )
    }
}

@Composable
private fun StopResourceButton(
    debugger: Debugger,
    device: DeviceDeclaration,
    resource: ResourceDeclaration
) {
    ItemButton(
        onClick = {
            debugger.stopResource(device, resource)
        },
        colors = ButtonDefaults.buttonColors(
            backgroundColor = Color.Transparent,
            contentColor = MaterialTheme.colors.StopResourceIconBackground
        )
    ) {
        Icon(
            Icons.Default.Stop,
            contentDescription = "Stop",
            modifier = Modifier.size(20.dp),
        )
    }
}