package org.fbme.spinDebugger

import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.tempmodel.TempModuleOptions
import jetbrains.mps.smodel.tempmodel.TemporaryModels
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.converter.PlatformConverter
import org.fbme.ide.platform.converter.PlatformConverter.STANDARD_CONFIG_FACTORY
import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.descriptors.FBType
import org.fbme.lib.st.expressions.BinaryOperation
import org.fbme.lib.st.types.ElementaryType
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData
import org.fbme.spinDebugger.fb2spin.AbstractSPINFBConverter
import org.fbme.spinDebugger.fb2spin.FB2SPIN
import org.fbme.spinDebugger.fb2spin.SPINCompositeFBConverter
import org.fbme.spinDebugger.fb2spin.SPINFunctionBlockConverter
import org.junit.Test
import java.io.File
import kotlin.io.*
import kotlin.io.path.Path
import kotlin.test.assertEquals
import kotlin.test.assertTrue


class TestTest : PlatformTestBase() {

    @Test
    fun test() {
        //val t = rootConverterByPath("/IEC/BasicControlTS.fbt").convertFBType()

        val types = Path("src/test/resources/IEC").toFile().walk().toList().mapNotNull {
            if(it.name.endsWith(".fbt")) return@mapNotNull rootConverterByPath("/IEC/${it.name}").convertFBType() else null
        }.groupBy {
            it.name
        }

        val fb2spin = FB2SPIN()


        assert(true)

        project.repository.modelAccess.runWriteAction {
            val model = TemporaryModels.getInstance().create(false, false, "tmp", TempModuleOptions.forDefaultModule())

            types.entries.forEach { (name, fbTypes) ->
                model.addRootNode((fbTypes.first() as PlatformElement).node)
            }

            fb2spin.convertFB(Path("src/test/resources/Elevator.pml"),
                types["Elevator"]!!.first() as CompositeFBTypeDeclaration, project as MPSProject
            )
        }
    }
}