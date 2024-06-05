package org.fbme.ide.integration.fordiac.translator.cpp.adapter

import org.fbme.ide.integration.fordiac.translator.TranslatorTestBase
import org.fbme.ide.platform.testing.FBType.ADAPTER
import org.fbme.ide.platform.testing.TypeInfo
import org.junit.Test

class AdapterFBTypeTranslatorTest : TranslatorTestBase() {

    @Test
    fun simple() = testTemplate(
        inputBlockPath = "/translator/adapter/simple/SimpleAdapterMPS.adp",
        expectedOutputHeaderPath = "/translator/adapter/simple/cpp/SimpleAdapter_out.h",
        expectedOutputImplPath = "/translator/adapter/simple/cpp/SimpleAdapter_out.cpp",
    )

    @Test
    fun `with associations`() = testTemplate(
        inputBlockPath = "/translator/adapter/with_associations/AssocAdapterMPS.adp",
        expectedOutputHeaderPath = "/translator/adapter/with_associations/cpp/Adapt_out.h",
        expectedOutputImplPath = "/translator/adapter/with_associations/cpp/Adapt_out.cpp",
    )

    private fun testTemplate(
        inputBlockPath: String,
        expectedOutputHeaderPath: String,
        expectedOutputImplPath: String
    ) = cppTestTemplateBase(
        mainFB = TypeInfo(filePath = inputBlockPath, type = ADAPTER),
        expectedOutputHeaderPath = expectedOutputHeaderPath,
        expectedOutputImplPath = expectedOutputImplPath,
    )
}
