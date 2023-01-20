package org.fbme.smvDebugger

import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.ide.platform.testing.PlatformTestRunner
import org.fbme.smvDebugger.executionTraceGeneration.SMVCountereExampleParser
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(PlatformTestRunner::class)
class TestTest: PlatformTestBase() {
    @Test
    fun `open file`(){
        val basicFbType = rootConverterByPath("/")
    }


}