package org.fbme.ide.integration.fordiac.lua.basic

import org.fbme.ide.integration.fordiac.lua.FBType.BASIC
import org.fbme.ide.integration.fordiac.lua.FBType.BASIC_WITH_ADAPTER
import org.fbme.ide.integration.fordiac.lua.TranslatorTestBase
import org.fbme.ide.platform.testing.PlatformTestRunner
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(PlatformTestRunner::class)
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
        inputBlockPath = "/basic/adapter/BasicWithAdapterMPS.fbt",
        expectedOutputPath = "/basic/adapter/BasicWithAdapter_out.lua",
        fbType = BASIC_WITH_ADAPTER,
        additionalAdapterInputBlockPath = "/basic/adapter/AdaptMPS.adp"
    )

    private fun testTemplate(inputBlockPath: String, expectedOutputPath: String) = testTemplateBase(
        inputBlockPath = inputBlockPath,
        expectedOutputPath = expectedOutputPath,
        fbType = BASIC
    )
}
