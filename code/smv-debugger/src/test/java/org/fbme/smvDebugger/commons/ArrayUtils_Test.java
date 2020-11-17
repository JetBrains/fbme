package org.fbme.smvDebugger.commons;

import org.junit.Assert;
import org.junit.Test;

public class ArrayUtils_Test {
  @Test
  public void test_toArray() {
    Assert.assertArrayEquals(new Object[]{1}, ArrayUtils.toArray(1));
  }

  @Test
  public void test_to2dArray() {
    final Object[][] result = ArrayUtils.to2dArray(new Object[]{1, 2});
    Assert.assertArrayEquals(new Object[]{1}, result[0]);
    Assert.assertArrayEquals(new Object[]{2}, result[1]);
  }

  @Test
  public void test_concatObjects() {
    Assert.assertArrayEquals(new Object[]{1, 2, 3}, ArrayUtils.concat(1, new Object[]{2, 3}));
  }

  @Test
  public void test_concatStrings() {
    Assert.assertArrayEquals(new String[]{"1", "2", "3"}, ArrayUtils.concat(new String[]{"1", "2"}, "3"));
  }

  @Test
  public void test_subarray() {
    Assert.assertArrayEquals(new String[]{"2", "3"}, ArrayUtils.subarray(new String[]{"1", "2", "3", "4"}, 1, 3));
  }
}
