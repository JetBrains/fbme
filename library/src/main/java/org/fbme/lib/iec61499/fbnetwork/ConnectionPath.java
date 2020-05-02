package org.fbme.lib.iec61499.fbnetwork;

public class ConnectionPath {

    private final Kind myKind;
    private final int myDX1;
    private final int myDY;
    private final int myDX2;

    public ConnectionPath(Kind kind, int dx1, int dy, int dx2) {
        myKind = kind;
        myDX1 = dx1;
        myDY = dy;
        myDX2 = dx2;
    }

    public ConnectionPath(int dx1, int dy, int dx2) {
        this(Kind.FourAngles, dx1, dy, dx2);
    }

    public ConnectionPath(int dx) {
        this(Kind.TwoAngles, dx, 0, 0);
    }

    public ConnectionPath() {
        this(Kind.Straight, 0, 0, 0);
    }

    public Kind getKind() {
        return myKind;
    }

    public int getDX1() {
        return myDX1;
    }

    public int getDY() {
        return myDY;
    }

    public int getDX2() {
        return myDX2;
    }

    public ConnectionPath copyDX1(int dx1) {
        return new ConnectionPath(myKind, dx1, myDY, myDX2);
    }

    public ConnectionPath copyDY(int dy) {
        return new ConnectionPath(myKind, myDX1, dy, myDX2);
    }

    public ConnectionPath copyDX2(int dx2) {
        return new ConnectionPath(myKind, myDX1, myDY, dx2);
    }

    public enum Kind {
        Straight(),
        TwoAngles(),
        FourAngles()
    }
}
