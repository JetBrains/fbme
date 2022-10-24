package org.fbme.ide.platform.adapters

import jetbrains.mps.smodel.tempmodel.TempModuleOptions
import jetbrains.mps.smodel.tempmodel.TemporaryModels
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.ide.platform.testing.PlatformTestRunner
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.junit.Test
import org.junit.runner.RunWith
import kotlin.test.assertEquals
import kotlin.test.assertTrue

@RunWith(PlatformTestRunner::class)
class FBResolveTest : PlatformTestBase() {

    @Test
    fun `resolve fb type in fb network`() {
        val basicFbType = rootConverterByPath("/ResolveTestBasicFbt.fbt").convertFBType()
        val compositeFbType = rootConverterByPath("/ResolveTestCompFbt.fbt").convertFBType()

        project.repository.modelAccess.runWriteAction {
            val model = TemporaryModels.getInstance().create(false, false, "tmp", TempModuleOptions.forDefaultModule())
            model.addRootNode((basicFbType as PlatformElement).node)
            model.addRootNode((compositeFbType as PlatformElement).node)

            assertTrue(basicFbType is BasicFBTypeDeclaration)
            assertTrue(compositeFbType is CompositeFBTypeDeclaration)
            val functionBlock = compositeFbType.network.functionBlocks[0]
            assertEquals(basicFbType, functionBlock.typeReference.getTarget())
        }
    }
}
