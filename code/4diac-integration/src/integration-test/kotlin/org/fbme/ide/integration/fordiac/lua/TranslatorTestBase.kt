package org.fbme.ide.integration.fordiac.lua

import jetbrains.mps.smodel.tempmodel.TempModuleOptions
import jetbrains.mps.smodel.tempmodel.TemporaryModels
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclaration
import org.jetbrains.mps.openapi.model.SModel
import org.junit.Assert.assertEquals
import java.nio.file.Files
import java.nio.file.Paths
import kotlin.math.min

open class TranslatorTestBase : PlatformTestBase() {

    internal fun testTemplateBase(
        mainFB: TypeInfo,
        expectedOutputPath: String,
        additionalFBs: List<TypeInfo> = listOf()
    ) {
        project.repository.modelAccess.runWriteAction {
            val model = TemporaryModels.getInstance().create(false, false, "tmp", TempModuleOptions.forDefaultModule())
            val block = model.addType(mainFB)
            model.addTypes(additionalFBs)

            val actual = when (mainFB.type) {
                FBType.BASIC -> BasicFBTypeTranslator.translate(block as BasicFBTypeDeclaration)
                FBType.ADAPTER -> AdapterFBTypeTranslator.translate(block as AdapterTypeDeclaration)
                FBType.COMPOSITE -> CompositeFBTypeTranslator.translate(block as CompositeFBTypeDeclaration)
            }.toComparableList()

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

    private fun SModel.addTypes(fbs: List<TypeInfo>) {
        fbs.forEach { addType(it) }
    }

    private fun SModel.addType(fb: TypeInfo): FBInterfaceDeclaration {
        val parsedBlock = when (fb.type) {
            FBType.ADAPTER -> rootConverterByPath(fb.filePath).convertAdapterType()
            else -> rootConverterByPath(fb.filePath).convertFBType()
        }
        addRootNode((parsedBlock as PlatformElement).node)

        return parsedBlock
    }

    private fun readFile(pathName: String): String {
        val filePath = Paths.get(pathName)
        return Files.readAllLines(filePath).joinToString("\n")
    }

    private fun String.toComparableList(): List<String> =
        this.split("\n").filter { it.isNotBlank() }.map { it.trimEnd() }
}

internal enum class FBType {
    BASIC, ADAPTER, COMPOSITE
}

internal data class TypeInfo(val filePath: String, val type: FBType)
