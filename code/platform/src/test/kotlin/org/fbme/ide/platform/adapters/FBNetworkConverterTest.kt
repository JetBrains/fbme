package org.fbme.ide.platform.adapters

import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.ide.platform.testing.PlatformTestRunner
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith

// TODO implement real tests
@RunWith(PlatformTestRunner::class)
class FBNetworkConverterTest : PlatformTestBase() {

    @Test
    fun parseTest1() {
        val fbType = rootConverterByPath("/ParserTestFbt1.fbt").convertFBType()
        Assert.assertNotNull(fbType)
    }
}
