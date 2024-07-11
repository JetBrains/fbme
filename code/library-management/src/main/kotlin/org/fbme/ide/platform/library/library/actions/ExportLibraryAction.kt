package org.fbme.ide.platform.library.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import jetbrains.mps.project.Solution
import jetbrains.mps.vfs.IFile
import org.jetbrains.mps.openapi.module.SModule
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.IOException
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream


class ExportLibraryAction: AnAction() {

    private fun resolveModulePath(module: SModule): String? {
        require(module is Solution) { "The module is not a Solution." }
        // Attempt to get the descriptor file
        val descriptorFile: IFile? = module.descriptorFile
        return descriptorFile?.getParent()?.path

    }

    override fun actionPerformed(e: AnActionEvent) {
        val module = e.getData(MPSCommonDataKeys.CONTEXT_MODULE) ?: return

        // TODO: (SEE the same note at the ImportLIbraryAction.kt
        //  consider rename solution or it's id in .mds or header file in order to avoid id conflicts
        // while importing exported library

        val mpsProject = e.getData(MPSCommonDataKeys.MPS_PROJECT)
        val ideaProject = mpsProject!!.project
        val targetDir = ideaProject.basePath
        zipModule(module, targetDir + "/" + module.moduleName + ".zip")
    }

    @Throws(IOException::class)
    fun zipModule(module: SModule?, zipFilePath: String?) {
        val modulePath = resolveModulePath(module!!)
        val fos = FileOutputStream(zipFilePath)
        val zipOut = ZipOutputStream(fos)
        val fileToZip = File(modulePath)
        zipFile(fileToZip, fileToZip.getName(), zipOut)
        zipOut.close()
        fos.close()
    }

    @Throws(IOException::class)
    private fun zipFile(fileToZip: File, fileName: String, zipOut: ZipOutputStream) {
        if (!fileToZip.isDirectory()) {
            zipFile(fileToZip, fileName, zipOut, "")
            return
        }
        val children = fileToZip.listFiles()
        if (children != null) {
            for (childFile in children) {
                zipFile(childFile, fileName + "/" + childFile.getName(), zipOut, fileName)
            }
        }
    }

    @Throws(IOException::class)
    private fun zipFile(fileToZip: File, fileName: String, zipOut: ZipOutputStream, parentDirectoryName: String) {
        var fileName = fileName
        if (fileToZip.isHidden()) {
            return
        }
        if (fileToZip.isDirectory()) {
            if (!fileName.endsWith("/")) {
                fileName += "/"
            }
            if (parentDirectoryName != "") {
                zipOut.putNextEntry(ZipEntry(fileName))
                zipOut.closeEntry()
            }
            val children = fileToZip.listFiles()
            for (childFile in children) {
                zipFile(childFile, fileName + childFile.getName(), zipOut, fileName)
            }
            return
        }
        val fis = FileInputStream(fileToZip)
        val zipEntry = ZipEntry(fileName)
        zipOut.putNextEntry(zipEntry)
        val bytes = ByteArray(1024)
        var length: Int
        while (fis.read(bytes).also { length = it } >= 0) {
            zipOut.write(bytes, 0, length)
        }
        fis.close()
    }
}