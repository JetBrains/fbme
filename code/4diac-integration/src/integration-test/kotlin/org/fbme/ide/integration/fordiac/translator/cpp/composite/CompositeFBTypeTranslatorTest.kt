package org.fbme.ide.integration.fordiac.translator.cpp.composite

import org.fbme.ide.integration.fordiac.translator.TranslatorTestBase
import org.fbme.ide.platform.testing.FBType.*
import org.fbme.ide.platform.testing.TypeInfo
import org.junit.Test

class CompositeFBTypeTranslatorTest: TranslatorTestBase() {

    @Test
    fun `two basic and adapter`() = testTemplate(
        inputBlockPath = "/translator/composite/CompositeMPS.fbt",
        expectedOutputHeaderPath = "/translator/composite/cpp/Composite_out.h",
        expectedOutputImplPath = "/translator/composite/cpp/Composite_out.cpp",
        additionalFBs = listOf(
            TypeInfo(filePath = "/translator/basic/adapter/AdaptMPS.adp", type = ADAPTER),
            TypeInfo(filePath = "/translator/composite/BBMPS.fbt", type = BASIC),
            TypeInfo(filePath = "/translator/composite/BasicBlockMPS.fbt", type = BASIC),
        )
    )

    private fun testTemplate(
        inputBlockPath: String,
        expectedOutputHeaderPath: String,
        expectedOutputImplPath: String,
        additionalFBs: List<TypeInfo> = listOf()
    ) =
        cppTestTemplateBase(
            mainFB = TypeInfo(filePath = inputBlockPath, type = COMPOSITE),
            expectedOutputHeaderPath = expectedOutputHeaderPath,
            expectedOutputImplPath = expectedOutputImplPath,
            additionalFBs = additionalFBs
        )
}
