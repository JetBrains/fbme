package org.fbme.ide.platform.adapters

import org.fbme.ide.platform.testing.PlatformTestBase
import org.junit.Assert
import org.junit.Test

// TODO implement real tests
class FBNetworkConverterTest : PlatformTestBase() {

    @Test
    fun parseTest1() {
        val fbType = rootConverterByPath("/ParserTestFbt1.fbt").convertFBType()
        Assert.assertNotNull(fbType)
    }
}
