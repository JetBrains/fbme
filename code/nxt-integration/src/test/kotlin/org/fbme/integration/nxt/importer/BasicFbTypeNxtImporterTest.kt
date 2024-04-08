package org.fbme.integration.nxt.importer

import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.st.types.ElementaryType
import org.junit.Assert
import org.junit.Test

class BasicFbTypeNxtImporterTest : PlatformTestBase() {
    @Test
    fun parseTest1() {
        val fbType = rootConverterByPath("/boolMerge.fbt", NxtImporterConfiguration.FACTORY).convertFBType()
        Assert.assertNotNull(fbType)
    }

    @Test
    fun testParseAlgorithmWithTemporaryVariables() {
        val fbType = rootConverterByPath("/AlgorithmWithTemporaryVariables.fbt", NxtImporterConfiguration.FACTORY).convertFBType()
        fbType as BasicFBTypeDeclaration
        val algorithm = fbType.algorithms[0]
        Assert.assertNotNull(algorithm)
        val temporaryVariable = algorithm.temporaryVariables[0]
        Assert.assertNotNull(temporaryVariable)
        Assert.assertEquals("temp", temporaryVariable.name)
        Assert.assertEquals(ElementaryType.INT, temporaryVariable.type)
    }
}
