package org.fbme.scenes.controllers;

public interface LayoutMovememntHandle {

    void cancel();

    void complete();

    void moveTo(int dx, int dy);
}
