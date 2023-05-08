package org.fbme.smvDebugger.commons

import org.fbme.smvDebugger.commons.ArrayUtils.concat
import org.fbme.smvDebugger.commons.ArrayUtils.subarray
import org.fbme.smvDebugger.commons.ArrayUtils.to2dArray
import org.fbme.smvDebugger.commons.ArrayUtils.toArray
import org.junit.Assert
import org.junit.Test

class ArrayUtils_Test {
    @Test
    fun test_toArray() {
        Assert.assertArrayEquals(arrayOf<Any>(1), toArray(1))
    }

    @Test
    fun test_to2dArray() {
        val result = to2dArray(arrayOf(1, 2))
        Assert.assertArrayEquals(arrayOf<Any>(1), result[0])
        Assert.assertArrayEquals(arrayOf<Any>(2), result[1])
    }

    @Test
    fun test_concatObjects() {
        Assert.assertArrayEquals(arrayOf<Any>(1, 2, 3), concat(1, arrayOf(2, 3)))
    }

    @Test
    fun test_concatStrings() {
        Assert.assertArrayEquals(arrayOf("1", "2", "3"), concat(arrayOf("1", "2"), "3"))
    }

    @Test
    fun test_subarray() {
        Assert.assertArrayEquals(arrayOf("2", "3"), subarray(arrayOf("1", "2", "3", "4"), 1, 3))
    }
}
