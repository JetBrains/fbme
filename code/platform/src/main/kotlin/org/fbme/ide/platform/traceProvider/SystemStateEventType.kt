package org.fbme.ide.platform.traceProvider

enum class SystemStateEventType {
    Q_UPDATE,  // state Q of ECC of the specified FB was changed
    VV_UPDATE,  // new value of a internal FB variable
    VI_UPDATE,  // new value of a input FB variable
    VO_UPDATE,  // new value of a output FB variable
    ALPHA_UPDATE,  //  FB started its turn
    BETA_UPDATE,  // FB finished its turn
    SELECT_TRANSITION_EVENT,  //input event Eik was chosen by a FB

    ECC_TRANSITION_ENABLED,  // - transition_id of ECC was enabled
    NA_UPDATE,  //
    NI_UPDATE //
    , EI_UPDATE, EO_UPDATE   // FB have emitted  event
}