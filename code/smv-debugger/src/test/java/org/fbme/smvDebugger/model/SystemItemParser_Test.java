package org.fbme.smvDebugger.model;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class SystemItemParser_Test {
  SystemItemParser itemParser;

  @Test
  public void test_eventPort() {
    final SystemItem item = itemParser.parse("rootFb.fb.event_eventPort");
    Assert.assertEquals(SystemItemType.EVENT_PORT, item.getType());
    Assert.assertArrayEquals(new String[]{"fb"}, item.getFbNames());
    Assert.assertEquals("eventPort", item.getItemName());
  }

  @Test
  public void test_dataPort() {
    final SystemItem item = itemParser.parse("rootFb.fb.varPort");
    Assert.assertEquals(SystemItemType.DATA_PORT, item.getType());
    Assert.assertArrayEquals(new String[]{"fb"}, item.getFbNames());
    Assert.assertEquals("varPort", item.getItemName());
  }

  @Test
  public void test_ecc() {
    final SystemItem item = itemParser.parse("rootFb.fb.Q_smv");
    Assert.assertEquals(SystemItemType.ECC, item.getType());
    Assert.assertArrayEquals(new String[]{"fb"}, item.getFbNames());
    Assert.assertEquals("ECC", item.getItemName());
  }

  @Before
  public void setUp() {
    itemParser = new SystemItemParser();
  }
}
