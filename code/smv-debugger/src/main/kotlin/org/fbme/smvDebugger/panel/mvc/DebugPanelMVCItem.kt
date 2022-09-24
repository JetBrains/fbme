package org.fbme.smvDebugger.panel.mvc

interface DebugPanelMVCItem {
    fun setPanelModel(model: DebugPanelModel)
    fun initView()
    fun initController()
}
