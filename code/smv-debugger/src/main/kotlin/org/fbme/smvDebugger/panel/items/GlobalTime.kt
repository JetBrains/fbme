package org.fbme.smvDebugger.panel.items

import org.fbme.smvDebugger.panel.mvc.DebugPanelMVCItem
import org.fbme.smvDebugger.panel.mvc.DebugPanelModel
import org.fbme.smvDebugger.panel.mvc.GlobalTimeModel
import java.beans.PropertyChangeEvent
import javax.swing.JLabel

class GlobalTime : JLabel(), DebugPanelMVCItem {
    private var model: DebugPanelModel? = null
    override fun setPanelModel(model: DebugPanelModel) {
        this.model = model
    }

    override fun initView() {}
    override fun initController() {
        model!!.globalTimeModel
            .addPropertyChangeListener(GlobalTimeModel.GLOBAL_TIME) { event: PropertyChangeEvent ->
                val time = event.newValue as String
                text = LEFT_PADDING + time
            }
    }

    companion object {
        private const val LEFT_PADDING = "     "
    }
}
