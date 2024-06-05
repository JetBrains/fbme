package org.fbme.ide.integration.fordiac.translator.cpp.basic

import org.fbme.ide.integration.fordiac.translator.TranslatorTestBase
import org.fbme.ide.platform.testing.FBType.ADAPTER
import org.fbme.ide.platform.testing.FBType.BASIC
import org.fbme.ide.platform.testing.TypeInfo
import org.junit.Test

class BasicFBTypeTranslatorTest : TranslatorTestBase() {

    @Test
    fun `basic block with adapter impl`() = testTemplate(
        inputBlockPath = "/translator/basic/adapter/BasicWithAdapterMPS.fbt",
        expectedOutputHeaderPath = "/translator/basic/adapter/cpp/BasicWithAdapter_out.h",
        expectedOutputImplPath = "/translator/basic/adapter/cpp/BasicWithAdapter_out.cpp",
        additionalFBs = listOf(TypeInfo(filePath = "/translator/basic/adapter/AdaptMPS.adp", type = ADAPTER)),
    )

    @Test
    fun `basic two algs`() = testTemplate(
        inputBlockPath = "/translator/basic/basic_two_algs/BasicTwoAlgsMPS.fbt",
        expectedOutputHeaderPath = "/translator/basic/basic_two_algs/cpp/BasicTwoAlgs_out.h",
        expectedOutputImplPath = "/translator/basic/basic_two_algs/cpp/BasicTwoAlgs_out.cpp",
    )

    @Test
    fun `assignment statement`() = testTemplate(
        inputBlockPath = "/translator/basic/alg/statements/assignment/AssignmentMPS.fbt",
        expectedOutputHeaderPath = "/translator/basic/alg/statements/assignment/cpp/Assignment_out.h",
        expectedOutputImplPath = "/translator/basic/alg/statements/assignment/cpp/Assignment_out.cpp",
    )

    // todo: https://github.com/JetBrains/fbme/issues/16
    @Test
    fun `case statement`() = testTemplate(
        inputBlockPath = "/translator/basic/alg/statements/case/CaseMPS.fbt",
        expectedOutputHeaderPath = "/translator/basic/alg/statements/case/cpp/Case_out.h",
        expectedOutputImplPath = "/translator/basic/alg/statements/case/cpp/Case_out.cpp",
    )

    @Test
    fun `empty statement`() = testTemplate(
        inputBlockPath = "/translator/basic/alg/statements/empty/EmptyMPS.fbt",
        expectedOutputHeaderPath = "/translator/basic/alg/statements/empty/cpp/Empty_out.h",
        expectedOutputImplPath = "/translator/basic/alg/statements/empty/cpp/Empty_out.cpp",
    )

    @Test
    fun `exit statement`() = testTemplate(
        inputBlockPath = "/translator/basic/alg/statements/exit/ExitMPS.fbt",
        expectedOutputHeaderPath = "/translator/basic/alg/statements/exit/cpp/Exit_out.h",
        expectedOutputImplPath = "/translator/basic/alg/statements/exit/cpp/Exit_out.cpp",
    )

    // todo: https://github.com/JetBrains/fbme/issues/16
    @Test
    fun `for statement`() = testTemplate(
        inputBlockPath = "/translator/basic/alg/statements/for/ForMPS.fbt",
        expectedOutputHeaderPath = "/translator/basic/alg/statements/for/cpp/For_out.h",
        expectedOutputImplPath = "/translator/basic/alg/statements/for/cpp/For_out.cpp",
    )

    // todo: https://github.com/JetBrains/fbme/issues/14
    @Test
    fun `repeat statement`() = testTemplate(
        inputBlockPath = "/translator/basic/alg/statements/repeat/RepeatMPS.fbt",
        expectedOutputHeaderPath = "/translator/basic/alg/statements/repeat/cpp/Repeat_out.h",
        expectedOutputImplPath = "/translator/basic/alg/statements/repeat/cpp/Repeat_out.cpp",
    )

    @Test
    fun `return statement`() = testTemplate(
        inputBlockPath = "/translator/basic/alg/statements/return/ReturnMPS.fbt",
        expectedOutputHeaderPath = "/translator/basic/alg/statements/return/cpp/Return_out.h",
        expectedOutputImplPath = "/translator/basic/alg/statements/return/cpp/Return_out.cpp",
    )

    // todo: https://github.com/JetBrains/fbme/issues/16
    @Test
    fun `while statement`() = testTemplate(
        inputBlockPath = "/translator/basic/alg/statements/while/WhileMPS.fbt",
        expectedOutputHeaderPath = "/translator/basic/alg/statements/while/cpp/While_out.h",
        expectedOutputImplPath = "/translator/basic/alg/statements/while/cpp/While_out.cpp",
    )

    private fun testTemplate(
        inputBlockPath: String,
        expectedOutputHeaderPath: String,
        expectedOutputImplPath: String,
        additionalFBs: List<TypeInfo> = listOf()
    ) =
        cppTestTemplateBase(
            mainFB = TypeInfo(filePath = inputBlockPath, type = BASIC),
            expectedOutputHeaderPath = expectedOutputHeaderPath,
            expectedOutputImplPath = expectedOutputImplPath,
            additionalFBs = additionalFBs
        )
}
