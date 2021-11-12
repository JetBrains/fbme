package org.fbme.formalfb.execution

import com.intellij.util.io.write
import jetbrains.mps.project.MPSProject
import org.fbme.formalfb.generation.spin.SpinGenerator
import org.fbme.formalfb.ui.FormalPanel
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import java.nio.file.Files
import java.nio.file.Path
import javax.swing.JComponent

class FormalFB(private val mpsProject: MPSProject) {

    var currentFB: CompositeFBTypeDeclaration? = null
    var currentFBPath: Path? = null

    fun run(compositeFb: CompositeFBTypeDeclaration?, fbPath: Path?): JComponent {
        currentFB = compositeFb
        currentFBPath = fbPath
        return FormalPanel(this)
    }

    fun generate(): String? {
        if (currentFBPath != null && currentFB != null) {
            val generator = SpinGenerator()

            var spinModel: String? = null
            mpsProject.modelAccess.runReadAction {
                 spinModel = generator.generate(currentFB!!)
            }
            if (spinModel == null) {
                println("Error")
                return null
            }
            val name: String = currentFBPath!!.fileName.toString() + ".pml"
            val filePath = currentFBPath!!.resolveSibling(name)
            saveToFile(spinModel!!, filePath)
            return filePath.toString()
        }
        return null
    }

    private fun saveToFile(spinModel: String, path: Path) {
        val file = Files.createFile(path)
        file.write(spinModel)
    }
}