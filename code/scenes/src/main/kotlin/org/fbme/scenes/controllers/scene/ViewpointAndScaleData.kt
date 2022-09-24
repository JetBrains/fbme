package org.fbme.scenes.controllers.scene

class ViewpointAndScaleData(val shiftX: Int, val shiftY: Int, val fontSize: Int) {
    companion object {
        val KEY = SceneStateKey<ViewpointAndScaleData>("viewpoint")
    }
}
