package org.fbme.scenes.cells.button

import com.intellij.util.ui.UIUtil

class PlusButton : IconButton({ if (UIUtil.isUnderDarcula()) MyIcons.AddIcon_Dark else MyIcons.AddIcon })
