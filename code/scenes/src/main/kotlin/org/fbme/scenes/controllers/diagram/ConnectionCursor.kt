package org.fbme.scenes.controllers.diagram

class ConnectionCursor<ConnT, CursorT>(val connection: ConnT, val cursor: CursorT) {
    override fun equals(other: Any?): Boolean {
        if (this === other) {
            return true
        }
        if (other !is ConnectionCursor<*, *>) {
            return false
        }
        return connection == other.connection && cursor == other.cursor
    }

    override fun hashCode(): Int {
        var result = 0
        result = 31 * result + connection.hashCode()
        result = 31 * result + cursor.hashCode()
        return result
    }
}