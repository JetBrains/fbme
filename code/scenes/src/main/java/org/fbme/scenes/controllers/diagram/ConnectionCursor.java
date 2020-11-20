package org.fbme.scenes.controllers.diagram;

import org.jetbrains.annotations.NotNull;

public class ConnectionCursor<ConnT, CursorT> {

    @NotNull
    private final ConnT myConnection;

    @NotNull
    private final CursorT myCursor;

    public ConnectionCursor(@NotNull ConnT connection, @NotNull CursorT cursor) {
        myConnection = connection;
        myCursor = cursor;
    }

    public ConnT getConnection() {
        return myConnection;
    }

    public CursorT getCursor() {
        return myCursor;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof ConnectionCursor)) {
            return false;
        }

        ConnectionCursor<?, ?> that = (ConnectionCursor<?, ?>) o;
        return myConnection.equals(that.myConnection) && myCursor.equals(that.myCursor);
    }

    @Override
    public int hashCode() {
        int result = 0;
        result = 31 * result + myConnection.hashCode();
        result = 31 * result + myCursor.hashCode();
        return result;
    }
}
