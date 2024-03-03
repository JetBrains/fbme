package org.fbme.ide.integration.fordiac.lua.adapter

import org.fbme.ide.integration.fordiac.lua.FBType.ADAPTER
import org.fbme.ide.integration.fordiac.lua.TranslatorTestBase
import org.fbme.ide.platform.testing.PlatformTestRunner
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(PlatformTestRunner::class)
class AdapterFBTypeTranslatorTest : TranslatorTestBase() {
    @Test
    fun simple() {
        testTemplate(
            inputBlockPath = "/adapter/simple/SimpleAdapterMPS.adp",
            expectedOutputPath = "/adapter/simple/SimpleAdapter_out.lua"
        )
    }

    @Test
    fun `with associations`() {
        testTemplate(
            inputBlockPath = "/adapter/with_associations/AssocAdapterMPS.adp",
            expectedOutputPath = "/adapter/with_associations/AssocAdapter_out.lua"
        )
    }

    private fun testTemplate(inputBlockPath: String, expectedOutputPath: String) = testTemplateBase(
        inputBlockPath = inputBlockPath,
        expectedOutputPath = expectedOutputPath,
        fbType = ADAPTER
    )
}
