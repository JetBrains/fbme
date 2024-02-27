package org.fbme.ide.integration.fordiac.lua

import jetbrains.mps.smodel.tempmodel.TempModuleOptions
import jetbrains.mps.smodel.tempmodel.TemporaryModels
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.ide.platform.testing.PlatformTestRunner
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.junit.Assert.assertEquals
import org.junit.Test
import org.junit.runner.RunWith
import java.nio.file.Files
import java.nio.file.Paths
import kotlin.math.min

@RunWith(PlatformTestRunner::class)
class BasicFBTypeLuaTranslatorTest : PlatformTestBase() {

    @Test
    fun `two algorithms with simple transitions`() {
        testTemplate(
            inputBlockPath = "/basic_two_algs/BasicTwoAlgsMPS.fbt",
            expectedOutputPath = "/basic_two_algs/BasicTwoAlgs_out.lua"
        )
    }

    @Test
    fun `assignment statement`() {
        testTemplate(
            inputBlockPath = "/alg/statements/assignment/AssignmentMPS.fbt",
            expectedOutputPath = "/alg/statements/assignment/Assignment_out.lua"
        )
    }

    // todo: https://github.com/JetBrains/fbme/issues/16
    @Test
    fun `case statement`() {
        testTemplate(
            inputBlockPath = "/alg/statements/case/CaseMPS.fbt",
            expectedOutputPath = "/alg/statements/case/Case_out.lua"
        )
    }


    @Test
    fun `empty statement`() {
        testTemplate(
            inputBlockPath = "/alg/statements/empty/EmptyMPS.fbt",
            expectedOutputPath = "/alg/statements/empty/Empty_out.lua"
        )
    }

    @Test
    fun `exit statement`() {
        testTemplate(
            inputBlockPath = "/alg/statements/exit/ExitMPS.fbt",
            expectedOutputPath = "/alg/statements/exit/Exit_out.lua"
        )
    }

    // todo: https://github.com/JetBrains/fbme/issues/16
    @Test
    fun `for statement`() {
        testTemplate(
            inputBlockPath = "/alg/statements/for/ForMPS.fbt",
            expectedOutputPath = "/alg/statements/for/For_out.lua"
        )
    }

    // todo: https://github.com/JetBrains/fbme/issues/14
    @Test
    fun `repeat statement`() {
        testTemplate(
            inputBlockPath = "/alg/statements/repeat/RepeatMPS.fbt",
            expectedOutputPath = "/alg/statements/repeat/Repeat_out.lua"
        )
    }

    // todo: https://github.com/JetBrains/fbme/issues/16
    @Test
    fun `while statement`() {
        testTemplate(
            inputBlockPath = "/alg/statements/while/WhileMPS.fbt",
            expectedOutputPath = "/alg/statements/while/While_out.lua"
        )
    }

    @Test
    fun `return statement`() {
        testTemplate(
            inputBlockPath = "/alg/statements/return/ReturnMPS.fbt",
            expectedOutputPath = "/alg/statements/return/Return_out.lua"
        )
    }


    private fun readFile(pathName: String): String {
        val filePath = Paths.get(pathName)
        return Files.readAllLines(filePath).joinToString("\n")
    }

    private fun String.toComparableList(): List<String> =
        this.split("\n").filter { it.isNotBlank() }.map { it.trimEnd() }

    private fun testTemplate(inputBlockPath: String, expectedOutputPath: String) {
        val fbType = rootConverterByPath(inputBlockPath).convertFBType()

        project.repository.modelAccess.runWriteAction {
            val model = TemporaryModels.getInstance().create(false, false, "tmp", TempModuleOptions.forDefaultModule())
            model.addRootNode((fbType as PlatformElement).node)

            val actual = BasicFBTypeLuaTranslator.translate(fbType as BasicFBTypeDeclaration).toComparableList()
            val expected = readFile("src/integration-test/resources$expectedOutputPath").toComparableList()
            val maxInd = min(actual.size, expected.size)

            actual.forEachIndexed { ind, el ->
                if (ind == maxInd) {
                    return@forEachIndexed
                }
                assertEquals(expected[ind], el)
            }

            require(actual.size == expected.size) {
                "expected not blank lines amount: ${expected.size}; actual: ${actual.size}"
            }
        }
    }
}
