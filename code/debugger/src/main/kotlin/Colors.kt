package org.fbme.debugger

import androidx.compose.material.Colors
import androidx.compose.ui.graphics.Color
import javax.swing.UIManager

val Colors.panelBackground: Color
    get() = UIManager.getColor("Panel.background").compose

val Colors.panelForeground: Color
    get() = UIManager.getColor("Panel.foreground").compose

val Colors.tableBackground: Color
    get() = UIManager.getColor("Table.background").compose

val Colors.tableForeground: Color
    get() = UIManager.getColor("Table.foreground").compose

val Colors.tableHeaderBackground: Color
    get() = UIManager.getColor("TableHeader.background").compose

val Colors.tableHeaderForeground: Color
    get() = UIManager.getColor("TableHeader.foreground").compose

val Colors.tableHeaderSeparatorColor: Color
    get() = UIManager.getColor("TableHeader.separatorColor").compose

val Colors.textFieldBackground: Color
    get() = UIManager.getColor("TextField.background").compose

val Colors.textFieldForeground: Color
    get() = UIManager.getColor("TextField.foreground").compose

val Colors.textFieldInactiveForeground: Color
    get() = UIManager.getColor("TextField.inactiveForeground").compose

val Colors.textFieldCaretForeground: Color
    get() = UIManager.getColor("TextField.caretForeground").compose

val Colors.listBackground: Color
    get() = UIManager.getColor("List.background").compose

val Colors.listForeground: Color
    get() = UIManager.getColor("List.foreground").compose

val Colors.listSelectionBackground: Color
    get() = UIManager.getColor("List.selectionBackground").compose

val Colors.listSelectionForeground: Color
    get() = UIManager.getColor("List.selectionForeground").compose

val Colors.comboBoxBackground: Color
    get() = UIManager.getColor("ComboBox.background").compose

val Colors.comboBoxForeground: Color
    get() = UIManager.getColor("ComboBox.foreground").compose

val Colors.comboBoxSelectionBackground: Color
    get() = UIManager.getColor("ComboBox.selectionBackground").compose

val Colors.comboBoxSelectionForeground: Color
    get() = UIManager.getColor("ComboBox.selectionForeground").compose