package org.fbme.ide.richediting.editor

import com.intellij.ide.navigationToolbar.AbstractNavBarModelExtension
import com.intellij.openapi.project.Project
import com.intellij.openapi.vfs.VirtualFile
import com.intellij.psi.PsiElement
import com.intellij.util.Processor
import jetbrains.mps.smodel.MPSModuleRepository
import jetbrains.mps.smodel.ModelAccessHelper
import org.fbme.lib.iec61499.instances.NetworkInstance
import java.util.*

class NetworkInstanceNavBarExtension : AbstractNavBarModelExtension() {
    override fun getPresentableText(`object`: Any): String? {
        val modelAccess = ModelAccessHelper(MPSModuleRepository.getInstance().modelAccess)
        if (`object` is NetworkInstanceNavBarModel.Item) {
            val instance = `object`.instance
            return modelAccess.runReadAction<String> {
                (instance.parent ?: instance).declaration.name
            }
        }
        if (`object` is NetworkInstanceNavBarModel.SystemItem) {
            val system = `object`.system
            return modelAccess.runReadAction<String> { system.name }
        }
        if (`object` is NetworkInstanceNavBarModel.DeviceItem) {
            val device = `object`.device
            return modelAccess.runReadAction<String> { device.name }
        }
        return null
    }

    override fun getParent(element: PsiElement): PsiElement? {
        return null
    }

    override fun adjustElement(element: PsiElement): PsiElement? {
        return null
    }

    override fun additionalRoots(project: Project): Collection<VirtualFile> {
        return emptyList()
    }

    override fun processChildren(`object`: Any, rootElement: Any, processor: Processor<Any>): Boolean {
        if (`object` is NetworkInstanceNavBarModel.Item) {
            val item = `object`
            val instance = item.instance
            val project = item.project
            project!!.modelAccess.runReadAction {
                for (component in instance.networkDeclaration.functionBlocks) {
                    val child = instance.getChild(component!!)
                    if (child != null) {
                        val childNetwork = child.containedNetwork
                        if (childNetwork is NetworkInstance) {
                            processor.process(NetworkInstanceNavBarModel.Item(childNetwork, project))
                        }
                    }
                }
            }
        }
        if (`object` is NetworkInstanceNavBarModel.SystemItem) {
            val systemItem = `object`
            val system = systemItem.system
            val project = systemItem.project
            project!!.modelAccess.runReadAction {
                for (application in system.applications) {
                    val root = NetworkInstance.createForApplication(application!!)
                    processor.process(NetworkInstanceNavBarModel.Item(root, project))
                }
            }
        }
        if (`object` is NetworkInstanceNavBarModel.DeviceItem) {
            val deviceItem = `object`
            val device = deviceItem.device
            val project = deviceItem.project
            project!!.modelAccess.runReadAction {
                for (resource in device.resources) {
                    val root = NetworkInstance.createForResource(resource!!)
                    processor.process(NetworkInstanceNavBarModel.Item(root, project))
                }
            }
        }
        return true
    }
}