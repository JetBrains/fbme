package org.fbme.ide.integration.fordiac.translator

import jetbrains.mps.smodel.tempmodel.TempModuleOptions
import jetbrains.mps.smodel.tempmodel.TemporaryModels
import org.fbme.ide.integration.fordiac.translator.cpp.basic.BasicFBTypeHeaderTranslator
import org.fbme.ide.integration.fordiac.translator.cpp.basic.BasicFBTypeImplTranslator
import org.fbme.ide.integration.fordiac.translator.lua.AdapterFBTypeTranslator.translate
import org.fbme.ide.integration.fordiac.translator.lua.BasicFBTypeTranslator.translate
import org.fbme.ide.integration.fordiac.translator.lua.CompositeFBTypeTranslator.translate
import org.fbme.ide.platform.testing.FBType.*
import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.ide.platform.testing.TypeInfo
import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.junit.Assert.assertEquals
import java.nio.file.Files
import java.nio.file.Paths
import kotlin.math.min

open class TranslatorTestBase : PlatformTestBase() {
    private val resourceFolder = "src/integration-test/resources"

    internal fun luaTestTemplateBase(
        mainFB: TypeInfo,
        expectedOutputPath: String,
        additionalFBs: List<TypeInfo> = listOf()
    ) {
        project.repository.modelAccess.runWriteAction {
            val model = TemporaryModels.getInstance().create(false, false, "tmp", TempModuleOptions.forDefaultModule())
            val block = model.addType(mainFB)
            model.addTypes(additionalFBs)

            val actual = when (mainFB.type) {
                BASIC -> translate(block as BasicFBTypeDeclaration)
                ADAPTER -> translate(block as AdapterTypeDeclaration)
                COMPOSITE -> translate(block as CompositeFBTypeDeclaration)
                else -> throw UnsupportedOperationException("Translator of ${mainFB.type} is not supported.")
            }.toComparableList()

            val expected = readFile("$resourceFolder$expectedOutputPath").toComparableList()
            expected.compareLineByLine(actual)
        }
    }

    internal fun cppTestTemplateBase(
        mainFB: TypeInfo,
        expectedOutputHeaderPath: String,
        expectedOutputImplPath: String,
        additionalFBs: List<TypeInfo> = listOf()
    ) {
        project.repository.modelAccess.runWriteAction {
            val model = TemporaryModels.getInstance().create(false, false, "tmp", TempModuleOptions.forDefaultModule())
            val block = model.addType(mainFB)
            model.addTypes(additionalFBs)

            // todo: add header translation and check

            val actualHeader = when (mainFB.type) {
                BASIC -> BasicFBTypeHeaderTranslator(block as BasicFBTypeDeclaration).translate()
                else -> throw UnsupportedOperationException("Translator of ${mainFB.type} is not supported.")
            }.toComparableList()

            val expectedHeader = readFile("$resourceFolder$expectedOutputHeaderPath").toComparableList()
            expectedHeader.compareLineByLine(actualHeader)

            val actualImpl = when (mainFB.type) {
                BASIC -> BasicFBTypeImplTranslator(block as BasicFBTypeDeclaration).translate()
//                ADAPTER -> AdapterFBTypeTranslator.translate(block as AdapterTypeDeclaration)
//                COMPOSITE -> CompositeFBTypeTranslator.translate(block as CompositeFBTypeDeclaration)
                else -> throw UnsupportedOperationException("Translator of ${mainFB.type} is not supported.")
            }.toComparableList()

            val expectedImpl = readFile("$resourceFolder$expectedOutputImplPath").toComparableList()
            expectedImpl.compareLineByLine(actualImpl)
        }
    }

    private fun List<String>.compareLineByLine(actual: List<String>) {
        val expected = this
        val maxInd = min(actual.size, expected.size)

        // todo: remove me actual.joinToString("\n")

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

    private fun readFile(pathName: String): String {
        val filePath = Paths.get(pathName)
        return Files.readAllLines(filePath).joinToString("\n")
    }

    private fun String.toComparableList(): List<String> =
        this.split("\n").filter { it.isNotBlank() }.map { it.trimEnd() }
}
