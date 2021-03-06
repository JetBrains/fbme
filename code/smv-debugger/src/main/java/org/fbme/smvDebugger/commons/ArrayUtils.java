package org.fbme.smvDebugger.commons;

import java.util.List;

public final class ArrayUtils {
  public static Object[] toArray(final Object object) {
    final Object[] array = new Object[1];
    array[0] = object;
    return array;
  }

  public static Object[][] to2dArray(final Object[] array) {
    final Object[][] twoDArray = new Object[array.length][1];
    for (int i = 0; i < twoDArray.length; i++) {
      twoDArray[i][0] = array[i];
    }
    return twoDArray;
  }

  public static Object[] concat(final Object object, final Object[] array) {
    final Object[] result = new Object[array.length + 1];
    result[0] = object;
    System.arraycopy(array, 0, result, 1, array.length);
    return result;
  }

  public static String[] concat(final String[] array, final String str) {
    final String[] result = new String[array.length + 1];
    System.arraycopy(array, 0, result, 0, array.length);
    result[result.length - 1] = str;
    return result;
  }

  public static Object[][] concat(final Object[] array, final Object[][] twoDArray) {
    final Object[][] result = new Object[twoDArray.length][twoDArray[0].length + 1];
    for (int i = 0; i < result.length; i++) {
      result[i][0] = array[i];
      if (result[i].length - 1 >= 0) System.arraycopy(twoDArray[i], 0, result[i], 1, result[i].length - 1);
    }
    return result;
  }

  public static String[][] to2dArray(final List<List<String>> listOfLists) {
    final String[][] array = new String[listOfLists.size()][];
    for (int i = 0; i < array.length; i++) {
      final List<String> list = listOfLists.get(i);
      array[i] = new String[list.size()];
      for (int j = 0; j < array[i].length; j++) {
        array[i][j] = list.get(j);
      }
    }
    return array;
  }

  public static String[] subarray(final String[] array, final int beginIndex, final int endIndex) {
    final String[] result = new String[endIndex - beginIndex];
    System.arraycopy(array, beginIndex, result, 0, result.length);
    return result;
  }
}
