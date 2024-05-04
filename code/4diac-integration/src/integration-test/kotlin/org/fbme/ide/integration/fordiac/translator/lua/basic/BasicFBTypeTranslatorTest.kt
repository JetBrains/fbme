package org.fbme.ide.integration.fordiac.translator.lua.basic


import org.fbme.ide.integration.fordiac.translator.lua.TranslatorTestBase
import org.fbme.ide.platform.testing.FBType.ADAPTER
import org.fbme.ide.platform.testing.FBType.BASIC
import org.fbme.ide.platform.testing.TypeInfo
import org.junit.Test

class BasicFBTypeTranslatorTest : TranslatorTestBase() {

    @Test
    fun `two algorithms with simple transitions`() {
        testTemplate(
            inputBlockPath = "/translator/basic/basic_two_algs/BasicTwoAlgsMPS.fbt",
            expectedOutputPath = "/translator/basic/basic_two_algs/BasicTwoAlgs_out.lua"
        )
    }

    @Test
    fun `assignment statement`() {
        testTemplate(
            inputBlockPath = "/translator/basic/alg/statements/assignment/AssignmentMPS.fbt",
            expectedOutputPath = "/translator/basic/alg/statements/assignment/Assignment_out.lua"
        )
    }

    // todo: https://github.com/JetBrains/fbme/issues/16
    @Test
    fun `case statement`() {
        testTemplate(
            inputBlockPath = "/translator/basic/alg/statements/case/CaseMPS.fbt",
            expectedOutputPath = "/translator/basic/alg/statements/case/Case_out.lua"
        )
    }

    @Test
    fun `empty statement`() {
        testTemplate(
            inputBlockPath = "/translator/basic/alg/statements/empty/EmptyMPS.fbt",
            expectedOutputPath = "/translator/basic/alg/statements/empty/Empty_out.lua"
        )
    }

    @Test
    fun `exit statement`() {
        testTemplate(
            inputBlockPath = "/translator/basic/alg/statements/exit/ExitMPS.fbt",
            expectedOutputPath = "/translator/basic/alg/statements/exit/Exit_out.lua"
        )
    }

    // todo: https://github.com/JetBrains/fbme/issues/16
    @Test
    fun `for statement`() {
        testTemplate(
            inputBlockPath = "/translator/basic/alg/statements/for/ForMPS.fbt",
            expectedOutputPath = "/translator/basic/alg/statements/for/For_out.lua"
        )
    }

    // todo: https://github.com/JetBrains/fbme/issues/14
    @Test
    fun `repeat statement`() {
        testTemplate(
            inputBlockPath = "/translator/basic/alg/statements/repeat/RepeatMPS.fbt",
            expectedOutputPath = "/translator/basic/alg/statements/repeat/Repeat_out.lua"
        )
    }

    // todo: https://github.com/JetBrains/fbme/issues/16
    @Test
    fun `while statement`() {
        testTemplate(
            inputBlockPath = "/translator/basic/alg/statements/while/WhileMPS.fbt",
            expectedOutputPath = "/translator/basic/alg/statements/while/While_out.lua"
        )
    }

    @Test
    fun `return statement`() {
        testTemplate(
            inputBlockPath = "/translator/basic/alg/statements/return/ReturnMPS.fbt",
            expectedOutputPath = "/translator/basic/alg/statements/return/Return_out.lua"
        )
    }

    @Test
    fun `basic block with adapter`() = testTemplateBase(
        mainFB = TypeInfo(filePath = "/translator/basic/adapter/BasicWithAdapterMPS.fbt", type = BASIC),
        expectedOutputPath = "/translator/basic/adapter/BasicWithAdapter_out.lua",
        additionalFBs = listOf(TypeInfo(filePath = "/translator/basic/adapter/AdaptMPS.adp", type = ADAPTER)),
    )

    private fun testTemplate(inputBlockPath: String, expectedOutputPath: String) = testTemplateBase(
        mainFB = TypeInfo(filePath = inputBlockPath, type = BASIC),
        expectedOutputPath = expectedOutputPath,
    )
}
