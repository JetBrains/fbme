package org.fbme.ide.integration.fordiac.lua

import jetbrains.mps.smodel.tempmodel.TempModuleOptions
import jetbrains.mps.smodel.tempmodel.TemporaryModels
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.junit.Assert
import java.nio.file.Files
import java.nio.file.Paths
import kotlin.math.min

open class TranslatorTestBase : PlatformTestBase() {

    fun testTemplateBase(
        inputBlockPath: String,
        expectedOutputPath: String,
        fbType: FBType
    ) {
        val converter = rootConverterByPath(inputBlockPath)

        project.repository.modelAccess.runWriteAction {
            val model = TemporaryModels.getInstance().create(false, false, "tmp", TempModuleOptions.forDefaultModule())

            val actual = when (fbType) {
                FBType.BASIC -> {
                    val block = converter.convertFBType()
                    model.addRootNode((block as PlatformElement).node)
                    BasicFBTypeLuaTranslator.translate(block as BasicFBTypeDeclaration)
                }

                FBType.ADAPTER -> {
                    val block = converter.convertAdapterType()
                    model.addRootNode((block as PlatformElement).node)
                    AdapterFBTypeLuaTranslator.translate(block)
                }

                FBType.COMPOSITE -> throw IllegalArgumentException("test template for composite block not implemented yet")
            }.toComparableList()

            val expected = readFile("src/integration-test/resources$expectedOutputPath").toComparableList()
            val maxInd = min(actual.size, expected.size)

            actual.forEachIndexed { ind, el ->
                if (ind == maxInd) {
                    return@forEachIndexed
                }
                Assert.assertEquals(expected[ind], el)
            }

            require(actual.size == expected.size) {
                "expected not blank lines amount: ${expected.size}; actual: ${actual.size}"
            }
        }
    }

    private fun readFile(pathName: String): String {
        val filePath = Paths.get(pathName)
        return Files.readAllLines(filePath).joinToString("\n")
    }

    private fun String.toComparableList(): List<String> =
        this.split("\n").filter { it.isNotBlank() }.map { it.trimEnd() }
}

enum class FBType {
    BASIC, ADAPTER, COMPOSITE
}
