package org.fbme.ide.integration.fordiac.translator.lua.composite

import org.fbme.ide.integration.fordiac.translator.lua.TranslatorTestBase
import org.fbme.ide.platform.testing.FBType.*
import org.fbme.ide.platform.testing.TypeInfo
import org.junit.Test

class CompositeFBTypeTranslatorTest : TranslatorTestBase() {

    @Test
    fun `two basic and adapter`() {
        testTemplate(
            inputBlockPath = "/translator/composite/CompositeMPS.fbt",
            expectedOutputPath = "/translator/composite/composite_out.lua",
            additionalFBs = listOf(
                TypeInfo(filePath = "/translator/basic/adapter/AdaptMPS.adp", type = ADAPTER),
                TypeInfo(filePath = "/translator/composite/BBMPS.fbt", type = BASIC),
                TypeInfo(filePath = "/translator/composite/BasicBlockMPS.fbt", type = BASIC),
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
