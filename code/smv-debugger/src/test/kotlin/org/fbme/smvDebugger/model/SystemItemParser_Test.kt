package org.fbme.smvDebugger.model

import org.junit.Assert
import org.junit.Before
import org.junit.Test

class SystemItemParser_Test {
    var itemParser: SystemItemParser? = null

    @Test
    fun test_eventPort() {
        val item = itemParser!!.parse("rootFb.fb.event_eventPort")
        Assert.assertEquals(SystemItemType.EVENT_PORT, item!!.type)
        Assert.assertArrayEquals(arrayOf("fb"), item.fbNames)
        Assert.assertEquals("eventPort", item.itemName)
    }

    @Test
    fun test_dataPort() {
        val item = itemParser!!.parse("rootFb.fb.varPort")
        Assert.assertEquals(SystemItemType.DATA_PORT, item!!.type)
        Assert.assertArrayEquals(arrayOf("fb"), item.fbNames)
        Assert.assertEquals("varPort", item.itemName)
    }

    @Test
    fun test_ecc() {
        val item = itemParser!!.parse("rootFb.fb.Q_smv")
        Assert.assertEquals(SystemItemType.ECC, item!!.type)
        Assert.assertArrayEquals(arrayOf("fb"), item.fbNames)
        Assert.assertEquals("ECC", item.itemName)
    }

    @Before
    fun setUp() {
        itemParser = SystemItemParser()
    }
}
