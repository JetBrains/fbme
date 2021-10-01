package org.fbme.scenes.controllers.scene

class ViewpointAndScaleData(val shiftX: Int, val shiftY: Int, val lineSize: Int) {
    companion object {
        val KEY = SceneStateKey<ViewpointAndScaleData>("viewpoint")
    }
}