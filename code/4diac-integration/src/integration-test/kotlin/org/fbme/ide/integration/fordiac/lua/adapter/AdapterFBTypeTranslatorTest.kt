package org.fbme.ide.integration.fordiac.lua.adapter

import org.fbme.ide.integration.fordiac.lua.FBType.ADAPTER
import org.fbme.ide.integration.fordiac.lua.TranslatorTestBase
import org.fbme.ide.integration.fordiac.lua.TypeInfo
import org.fbme.ide.platform.testing.PlatformTestRunner
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(PlatformTestRunner::class)
class AdapterFBTypeTranslatorTest : TranslatorTestBase() {
    @Test
    fun simple() {
        testTemplate(
            inputBlockPath = "/lua/adapter/simple/SimpleAdapterMPS.adp",
            expectedOutputPath = "/lua/adapter/simple/SimpleAdapter_out.lua"
        )
    }

    @Test
    fun `with associations`() {
        testTemplate(
            inputBlockPath = "/lua/adapter/with_associations/AssocAdapterMPS.adp",
            expectedOutputPath = "/lua/adapter/with_associations/AssocAdapter_out.lua"
        )
    }

    private fun testTemplate(inputBlockPath: String, expectedOutputPath: String) = testTemplateBase(
        mainFB = TypeInfo(filePath = inputBlockPath, type = ADAPTER),
        expectedOutputPath = expectedOutputPath,
    )
}
