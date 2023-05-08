package org.fbme.smvDebugger.commons

object ArrayUtils {
    fun toArray(item: Any?): Array<Any?> {
        val array = arrayOfNulls<Any>(1)
        array[0] = item
        return array
    }

    fun to2dArray(array: Array<Any?>): Array<Array<Any?>> {
        val twoDArray = Array(array.size) { arrayOfNulls<Any>(1) }
        for (i in twoDArray.indices) {
            twoDArray[i][0] = array[i]
        }
        return twoDArray
    }

    fun concat(item: Any?, array: Array<Any?>): Array<Any?> {
        val result = arrayOfNulls<Any>(array.size + 1)
        result[0] = item
        System.arraycopy(array, 0, result, 1, array.size)
        return result
    }

    fun concat(array: Array<String?>?, str: String?): Array<String?> {
        val result = arrayOfNulls<String>(array!!.size + 1)
        System.arraycopy(array, 0, result, 0, array.size)
        result[result.size - 1] = str
        return result
    }

    fun concat(array: Array<Any?>, twoDArray: Array<Array<Any?>>): Array<Array<Any?>> {
        val result = Array(twoDArray.size) { arrayOfNulls<Any>(twoDArray[0].size + 1) }
        for (i in result.indices) {
            result[i][0] = array[i]
            if (result[i].size - 1 >= 0) System.arraycopy(twoDArray[i], 0, result[i], 1, result[i].size - 1)
        }
        return result
    }

    fun to2dArray(listOfLists: List<List<String?>>): Array<Array<String?>> {
        return arrayOf(listOfLists.flatten().toTypedArray())
    }

    fun subarray(array: Array<String>, beginIndex: Int, endIndex: Int): Array<String> {
        return array.copyOfRange(beginIndex, endIndex)
    }
}
