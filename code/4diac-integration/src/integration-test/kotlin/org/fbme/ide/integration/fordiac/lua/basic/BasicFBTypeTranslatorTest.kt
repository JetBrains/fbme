package org.fbme.ide.integration.fordiac.lua.basic

import org.fbme.ide.integration.fordiac.lua.FBType.ADAPTER
import org.fbme.ide.integration.fordiac.lua.FBType.BASIC
import org.fbme.ide.integration.fordiac.lua.TranslatorTestBase
import org.fbme.ide.integration.fordiac.lua.TypeInfo
import org.junit.Test

class BasicFBTypeTranslatorTest : TranslatorTestBase() {

    @Test
    fun `two algorithms with simple transitions`() {
        testTemplate(
            inputBlockPath = "/lua/basic/basic_two_algs/BasicTwoAlgsMPS.fbt",
            expectedOutputPath = "/lua/basic/basic_two_algs/BasicTwoAlgs_out.lua"
        )
    }

    @Test
    fun `assignment statement`() {
        testTemplate(
            inputBlockPath = "/lua/basic/alg/statements/assignment/AssignmentMPS.fbt",
            expectedOutputPath = "/lua/basic/alg/statements/assignment/Assignment_out.lua"
        )
    }

    // todo: https://github.com/JetBrains/fbme/issues/16
    @Test
    fun `case statement`() {
        testTemplate(
            inputBlockPath = "/lua/basic/alg/statements/case/CaseMPS.fbt",
            expectedOutputPath = "/lua/basic/alg/statements/case/Case_out.lua"
        )
    }

    @Test
    fun `empty statement`() {
        testTemplate(
            inputBlockPath = "/lua/basic/alg/statements/empty/EmptyMPS.fbt",
            expectedOutputPath = "/lua/basic/alg/statements/empty/Empty_out.lua"
        )
    }

    @Test
    fun `exit statement`() {
        testTemplate(
            inputBlockPath = "/lua/basic/alg/statements/exit/ExitMPS.fbt",
            expectedOutputPath = "/lua/basic/alg/statements/exit/Exit_out.lua"
        )
    }

    // todo: https://github.com/JetBrains/fbme/issues/16
    @Test
    fun `for statement`() {
        testTemplate(
            inputBlockPath = "/lua/basic/alg/statements/for/ForMPS.fbt",
            expectedOutputPath = "/lua/basic/alg/statements/for/For_out.lua"
        )
    }

    // todo: https://github.com/JetBrains/fbme/issues/14
    @Test
    fun `repeat statement`() {
        testTemplate(
            inputBlockPath = "/lua/basic/alg/statements/repeat/RepeatMPS.fbt",
            expectedOutputPath = "/lua/basic/alg/statements/repeat/Repeat_out.lua"
        )
    }

    // todo: https://github.com/JetBrains/fbme/issues/16
    @Test
    fun `while statement`() {
        testTemplate(
            inputBlockPath = "/lua/basic/alg/statements/while/WhileMPS.fbt",
            expectedOutputPath = "/lua/basic/alg/statements/while/While_out.lua"
        )
    }

    @Test
    fun `return statement`() {
        testTemplate(
            inputBlockPath = "/lua/basic/alg/statements/return/ReturnMPS.fbt",
            expectedOutputPath = "/lua/basic/alg/statements/return/Return_out.lua"
        )
    }

    @Test
    fun `basic block with adapter`() = testTemplateBase(
        mainFB = TypeInfo(filePath = "/lua/basic/adapter/BasicWithAdapterMPS.fbt", type = BASIC),
        expectedOutputPath = "/lua/basic/adapter/BasicWithAdapter_out.lua",
        additionalFBs = listOf(TypeInfo(filePath = "/lua/basic/adapter/AdaptMPS.adp", type = ADAPTER)),
    )

    private fun testTemplate(inputBlockPath: String, expectedOutputPath: String) = testTemplateBase(
        mainFB = TypeInfo(filePath = inputBlockPath, type = BASIC),
        expectedOutputPath = expectedOutputPath,
    )
}
