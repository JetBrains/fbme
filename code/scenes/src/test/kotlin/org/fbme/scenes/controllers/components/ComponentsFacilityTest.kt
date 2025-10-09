package org.fbme.scenes.controllers.components

import org.junit.jupiter.api.Assertions.assertNotNull
import org.junit.jupiter.api.Test

class ComponentsFacilityTest {
    @Test
    fun `can load class under test`() {
        // Basic smoke test to ensure test infrastructure works and class is resolvable
        val clazz = ComponentsFacility::class
        assertNotNull(clazz)
    }
}



