package org.fbme.ide.integration.fordiac.lua.composite

import org.fbme.ide.integration.fordiac.lua.TranslatorTestBase
import org.fbme.ide.platform.testing.FBType.*
import org.fbme.ide.platform.testing.TypeInfo
import org.junit.Test

class CompositeFBTypeTranslatorTest : TranslatorTestBase() {

    @Test
    fun `two basic and adapter`() {
        testTemplate(
            inputBlockPath = "/lua/composite/CompositeMPS.fbt",
            expectedOutputPath = "/lua/composite/composite_out.lua",
            additionalFBs = listOf(
                TypeInfo(filePath = "/lua/basic/adapter/AdaptMPS.adp", type = ADAPTER),
                TypeInfo(filePath = "/lua/composite/BBMPS.fbt", type = BASIC),
                TypeInfo(filePath = "/lua/composite/BasicBlockMPS.fbt", type = BASIC),
            )
        )
    }

    private fun testTemplate(
        inputBlockPath: String,
        expectedOutputPath: String,
        additionalFBs: List<TypeInfo> = listOf()
    ) = testTemplateBase(
        mainFB = TypeInfo(filePath = inputBlockPath, type = COMPOSITE),
        expectedOutputPath = expectedOutputPath,
        additionalFBs = additionalFBs
    )
}
