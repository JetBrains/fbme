mtype:CarriageController_ECC = {CarriageController_START_ecc, CarriageController_WAIT_ecc, CarriageController_BRING_ecc, CarriageController_DRILLED_ecc, CarriageController_REMOVE_ecc};
proctype CarriageController(chan
    EI_BLOCK, EI_INIT, EI_CHGI, EO_CHGO, EO_READY, VI_LOAD_P, VI_WP, VI_BLK, VO_INSIDE, VO_OUTSIDE,
    alpha, beta
    ) {
    bool LOAD_P = false;
    bool WP = false;
    bool BLK = false;
    bool INSIDE = false;
    bool OUTSIDE = false;
    // No internal vars

    bit ExistsInputEvent = 0;
    bit ExistsEnabledECTran = 0;
    mtype:CarriageController_ECC Q = CarriageController_START_ecc;

  wait_events:
    end: // valid end state
    alpha?true;
    ExistsInputEvent = nempty(EI_BLOCK) || nempty(EI_INIT) || nempty(EI_CHGI);

    atomic {
        do
        :: nempty(VI_LOAD_P) -> VI_LOAD_P?LOAD_P;
        :: nempty(VI_WP) -> VI_WP?WP;
        :: nempty(VI_BLK) -> VI_BLK?BLK;
        :: empty(VI_LOAD_P) && empty(VI_WP) && empty(VI_BLK) -> break;
        od
    }

  s0_osm:
    printf("CarriageController:s0_osm, Q=%d \n", Q);
    bit selectEI_BLOCK, selectEI_INIT, selectEI_CHGI;
    selectEI_BLOCK = nempty(EI_BLOCK) && false;
    selectEI_INIT = !selectEI_BLOCK && nempty(EI_INIT) && Q == CarriageController_START_ecc;
    selectEI_CHGI = !selectEI_INIT && nempty(EI_CHGI) && false;

    bit trans_START_WAIT, trans_WAIT_BRING, trans_BRING_DRILLED, trans_DRILLED_REMOVE, trans_REMOVE_WAIT, trans_DRILLED_DRILLED;
    trans_START_WAIT = selectEI_INIT;
    trans_WAIT_BRING = !BLK;
    trans_BRING_DRILLED = WP;
    trans_DRILLED_REMOVE = !BLK;
    trans_REMOVE_WAIT = LOAD_P;
    trans_DRILLED_DRILLED = 1;


    // s0_osm select 1 event. Reset all other RuleSet1
    if
    :: atomic { selectEI_BLOCK ->
        EI_BLOCK?true;
    }
    :: atomic { selectEI_INIT ->
        EI_INIT?true;
    }
    :: atomic { selectEI_CHGI ->
        EI_CHGI?true;
    }
    :: (!ExistsInputEvent) -> goto done;
    :: else -> printf("CarriageController: no enabled transitions");
    fi

    // RuleSet1 reset all other inputs
    do
    :: atomic { nempty(EI_BLOCK) -> EI_BLOCK?true;}
    :: atomic { nempty(EI_INIT) -> EI_INIT?true;}
    :: atomic { nempty(EI_CHGI) -> EI_CHGI?true;}
    :: else -> break;
    od
    goto s1_osm; // RuleSet3


    s1_osm:
    ExistsEnabledECTran = (
        (Q == CarriageController_START_ecc && trans_START_WAIT)
        || (Q == CarriageController_WAIT_ecc && trans_WAIT_BRING)
        || (Q == CarriageController_BRING_ecc && trans_BRING_DRILLED)
        || (Q == CarriageController_DRILLED_ecc && trans_DRILLED_REMOVE)
        || (Q == CarriageController_REMOVE_ecc && trans_REMOVE_WAIT)
        || (Q == CarriageController_DRILLED_ecc && trans_DRILLED_DRILLED)
    );

    printf("CarriageController: s1_osm EEC  %d \n", ExistsEnabledECTran);

    atomic {
        if // RuleSet4: ECC transition. Conditions ordered by XML description
        :: (Q == CarriageController_START_ecc && trans_START_WAIT) -> Q = CarriageController_WAIT_ecc;
        :: (Q == CarriageController_WAIT_ecc && trans_WAIT_BRING) -> Q = CarriageController_BRING_ecc;
        :: (Q == CarriageController_BRING_ecc && trans_BRING_DRILLED) -> Q = CarriageController_DRILLED_ecc;
        :: (Q == CarriageController_DRILLED_ecc && trans_DRILLED_REMOVE) -> Q = CarriageController_REMOVE_ecc;
        :: (Q == CarriageController_REMOVE_ecc && trans_REMOVE_WAIT) -> Q = CarriageController_WAIT_ecc;
        :: (Q == CarriageController_DRILLED_ecc && trans_DRILLED_DRILLED) -> Q = CarriageController_DRILLED_ecc;
        :: !ExistsEnabledECTran -> goto done;
        :: else -> printf("CarriageController: No input events to process\n");
        fi;
        selectEI_BLOCK = 0;
        selectEI_INIT = 0;
        selectEI_CHGI = 0;
    }

    printf("CarriageController:s2_osm, Q=%d\n", Q);
    s2_osm:
    atomic {
        if
        :: (Q == CarriageController_START_ecc) ->
            skip;
        :: (Q == CarriageController_WAIT_ecc) ->
            // Algorithm OUT_0
            OUTSIDE = false;
            //emit event
            reset(VO_INSIDE);
            reset(VO_OUTSIDE);
            reset(EO_CHGO);
            VO_INSIDE!INSIDE;
            VO_OUTSIDE!OUTSIDE;
            EO_CHGO!true;
        :: (Q == CarriageController_BRING_ecc) ->
            // Algorithm IN_1
            INSIDE = true;
            //emit event
            reset(VO_INSIDE);
            reset(VO_OUTSIDE);
            reset(EO_CHGO);
            VO_INSIDE!INSIDE;
            VO_OUTSIDE!OUTSIDE;
            EO_CHGO!true;
        :: (Q == CarriageController_DRILLED_ecc) ->
            // Algorithm IN_0
            INSIDE = false;
            //emit event
            reset(VO_INSIDE);
            reset(VO_OUTSIDE);
            reset(EO_READY);
            VO_INSIDE!INSIDE;
            VO_OUTSIDE!OUTSIDE;
            EO_READY!true;
        :: (Q == CarriageController_REMOVE_ecc) ->
            // Algorithm OUT_1
            OUTSIDE = true;
            //emit event
            reset(VO_INSIDE);
            reset(VO_OUTSIDE);
            reset(EO_CHGO);
            VO_INSIDE!INSIDE;
            VO_OUTSIDE!OUTSIDE;
            EO_CHGO!true;
        fi
    }

    goto s1_osm;


  done: // RuleSet10
    beta!true;
    goto wait_events;
}