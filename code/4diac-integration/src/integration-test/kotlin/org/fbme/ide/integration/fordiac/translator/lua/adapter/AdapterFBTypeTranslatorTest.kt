package org.fbme.ide.integration.fordiac.translator.lua.adapter

import org.fbme.ide.integration.fordiac.translator.lua.TranslatorTestBase
import org.fbme.ide.platform.testing.FBType.ADAPTER
import org.fbme.ide.platform.testing.TypeInfo
import org.junit.Test

class AdapterFBTypeTranslatorTest : TranslatorTestBase() {
    @Test
    fun simple() {
        testTemplate(
            inputBlockPath = "/translator/adapter/simple/SimpleAdapterMPS.adp",
            expectedOutputPath = "/translator/adapter/simple/lua/SimpleAdapter_out.lua"
        )
    }

    @Test
    fun `with associations`() {
        testTemplate(
            inputBlockPath = "/translator/adapter/with_associations/AssocAdapterMPS.adp",
            expectedOutputPath = "/translator/adapter/with_associations/lua/AssocAdapter_out.lua"
        )
    }

    private fun testTemplate(inputBlockPath: String, expectedOutputPath: String) = testTemplateBase(
        mainFB = TypeInfo(filePath = inputBlockPath, type = ADAPTER),
        expectedOutputPath = expectedOutputPath,
    )
}
