package org.fbme.ide.richediting.adapters.fbnetwork

import java.awt.Rectangle

val Rectangle.left: Int
    get() = x

val Rectangle.right: Int
    get() = x + width

val Rectangle.top: Int
    get() = y

val Rectangle.bottom: Int
    get() = y + height

val tripleIntComparator = Comparator<Triple<Int, Int, Int>> { o1, o2 ->
    run {
        val firstResult = o1.first - o2.first
        if (firstResult != 0) {
            firstResult
        } else {
            val secondResult = o1.second - o2.second
            if (secondResult != 0) {
                secondResult
            } else {
                val thirdResult = o1.third - o2.third
                thirdResult
            }
        }
    }
}