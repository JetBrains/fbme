package org.fbme.integration.nxt.exporter


class FBNameSpaceFinder {

    fun getNamespace(fbType: String): String {
        return when (fbType) {
            in this.runtimeNetconnectivityBlocks -> "Runtime.NetConnectivity"
            in this.iec61499StandardBlocks -> "IEC61499.Standard"
            in this.runtimeStandardBlocks -> "Runtime.Standard"
            in this.runtimeCryptographyBlocks -> "Runtime.Cryptography"
            in this.runtimeFieldbusBlocks -> "Runtime.Fieldbus"
            in this.runtimeIoCommonBlocks -> "Runtime.IoCommon"
            in this.runtimeSystemBlocks -> "Runtime.System"
            in this.runtimeManagementBlocks -> "Runtime.Management"
            else -> "unknown"
        }
    }

    // All FBs in the Runtime.Base, Runtime.NetConnectivity set
    private val runtimeNetconnectivityBlocks = setOf(
        "WEBSOCKET_SERVER"
    )

    // All FBs in the Runtime.Base, IEC61499.Standard set
    private val iec61499StandardBlocks = setOf(
        "E_CTU",
        "E_CYCLE",
        "E_DELAY",
        "E_DEMUX",
        "E_D_FF",
        "E_F_TRIG",
        "E_MERGE",
        "E_N_TABLE",
        "E_PERMIT",
        "E_REND",
        "E_RESTART",
        "E_RS",
        "E_R_TRIG",
        "E_SELECT",
        "E_SPLIT",
        "E_SR",
        "E_SWITCH",
        "E_TABLE",
        "E_TRAIN"
    )

    // All FBs in the Runtime.Base, Runtime.Standard set
    private val runtimeStandardBlocks = setOf(
        "ALARM_BIT",
        "ADD",
        "ANAMATH",
        "AND",
        "ANY2ANY",
        "BITMAN",
        "BUFFER",
        "CALC_FORMULAR",
        "COMPARE",
        "DIV",
        "EVENTCHAIN",
        "EVENTCHAINHEAD",
        "E_DELAYR",
        "E_HRCYCLE",
        "E_REND_X",
        "MUL",
        "NOT",
        "OR",
        "PERSISTENCE",
        "ROL",
        "ROR",
        "SELECT",
        "SHL",
        "SHR",
        "SMOOTH",
        "SPLIT",
        "SUB",
        "VALFORMAT",
        "VALSCAN",
        "VTQ_DECODE",
        "VTQ_ENCODE",
        "XOR",
        "DS_SELECTX",
        "PRIOSCHEDULER",
        "FORCE_IND"
    )

    // All FBs in the Runtime.Base, Runtime.Cryptography set
    private val runtimeCryptographyBlocks = setOf(
        "DATA_CRYPTO",
        "RNBR"
    )

    // All FBs in the Runtime.Base, Runtime.Fieldbus set
    private val runtimeFieldbusBlocks = setOf(
        "BC_MODBUS",
        "BM_FILE",
        "BM_MODBUS",
        "BM_RIO",
        "BM_SIMBUS",
        "BUSCOUPLER",
        "BUSDEVICE",
        "BUSDEVICECONFIG",
        "CFG_ANY_GET",
        "CFG_ANY_SET",
        "CFG_DIRECT_GET",
        "CFG_DIRECT_SET"
    )

    // All FBs in the Runtime.Base, Runtime.IoCommon set
    private val runtimeIoCommonBlocks = setOf(
        "PD_ANY_IN",
        "PD_ANY_OUT",
        "PD_COPY",
        "PD_DIRECT_IN",
        "PD_DIRECT_OUT",
        "SERIALIO",
        "NETIO"
    )

    // All FBs in the Runtime.Base, Runtime.System set
    private val runtimeSystemBlocks = setOf(
        "GPUTICK",
        "LOGGER",
        "MIBGET",
        "QUERY_CONNECTION",
        "SYMLINKMULTIVARDST",
        "SYMLINKMULTIVARSRC"
    )

    // All FBs in the Runtime.Base, Runtime.Management set
    private val runtimeManagementBlocks = setOf(
        "REPERT_APP_STATE"
    )
}