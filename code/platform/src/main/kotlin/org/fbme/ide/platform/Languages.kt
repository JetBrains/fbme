package org.fbme.ide.platform

import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory

object MpsLanguages {

    val ST = MetaAdapterFactory.getLanguage(0x2046780a246e4cb0L, -0x6f01a95d4826d3acL, "mps.lang.ST")
    val IEC_61499 = MetaAdapterFactory.getLanguage(0x6594f3404d734027L, -0x482c3935d18f5ac5L, "mps.lang.iec61499")
    val RICH_EDITING = MetaAdapterFactory.getLanguage(0x111cc10bfa1e4e11L, -0x7163c816a83bfbc1L, "richediting.lang")
}