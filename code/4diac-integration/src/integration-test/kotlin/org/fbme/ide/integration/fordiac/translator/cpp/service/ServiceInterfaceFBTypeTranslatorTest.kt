package org.fbme.ide.integration.fordiac.translator.cpp.service

import org.fbme.ide.integration.fordiac.translator.TranslatorTestBase
import org.fbme.ide.platform.testing.FBType.SERVICE_INTERFACE
import org.fbme.ide.platform.testing.TypeInfo
import org.junit.Test

class ServiceInterfaceFBTypeTranslatorTest : TranslatorTestBase() {
    @Test
    fun default() = testTemplate(
        inputBlockPath = "/translator/service/ServiceMPS.fbt",
        expectedOutputHeaderPath = "/translator/service/cpp/Service.h",
        expectedOutputImplPath = "/translator/service/cpp/Service.cpp",
    )

    private fun testTemplate(
        inputBlockPath: String,
        expectedOutputHeaderPath: String,
        expectedOutputImplPath: String
    ) = cppTestTemplateBase(
        mainFB = TypeInfo(filePath = inputBlockPath, type = SERVICE_INTERFACE),
        expectedOutputHeaderPath = expectedOutputHeaderPath,
        expectedOutputImplPath = expectedOutputImplPath,
    )
}
