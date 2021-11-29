mtype:Plant_ECC = {Plant_START_ecc, Plant_INIT_ecc, Plant_TICK_ecc, Plant_PICK_ecc};
proctype Plant(chan
    EI_INIT, EI_PICK, EI_TICK, EO_CHG, EO_PICKED, VO_NUM,
    alpha, beta
    ) {
    int NUM = 0;
    int current = 0;

    bit ExistsInputEvent = 0;
    bit ExistsEnabledECTran = 0;
    mtype:Plant_ECC Q = Plant_START_ecc;

  wait_events:
    end: // valid end state
    alpha?true;
    ExistsInputEvent = nempty(EI_INIT) || nempty(EI_PICK) || nempty(EI_TICK);

    // No input vars to read

  s0_osm:
    printf("Plant:s0_osm, Q=%d \n", Q);
    bit selectEI_INIT, selectEI_PICK, selectEI_TICK;
    selectEI_INIT = nempty(EI_INIT) && Q == Plant_START_ecc;
    selectEI_PICK = !selectEI_INIT && nempty(EI_PICK) && Q == Plant_START_ecc;
    selectEI_TICK = !selectEI_PICK && nempty(EI_TICK) && Q == Plant_START_ecc;

    bit trans_START_INIT, trans_INIT_START, trans_START_TICK, trans_TICK_START, trans_START_PICK, trans_PICK_START;
    trans_START_INIT = selectEI_INIT;
    trans_INIT_START = 1;
    trans_START_TICK = selectEI_TICK;
    trans_TICK_START = 1;
    trans_START_PICK = selectEI_PICK;
    trans_PICK_START = 1;


    // s0_osm select 1 event. Reset all other RuleSet1
    if
    :: atomic { selectEI_INIT ->
        EI_INIT?true;
    }
    :: atomic { selectEI_PICK ->
        EI_PICK?true;
    }
    :: atomic { selectEI_TICK ->
        EI_TICK?true;
    }
    :: (!ExistsInputEvent) -> goto done;
    :: else -> printf("Plant: no enabled transitions");
    fi

    // RuleSet1 reset all other inputs
    do
    :: atomic { nempty(EI_INIT) -> EI_INIT?true;}
    :: atomic { nempty(EI_PICK) -> EI_PICK?true;}
    :: atomic { nempty(EI_TICK) -> EI_TICK?true;}
    :: else -> break;
    od
    goto s1_osm; // RuleSet3


    s1_osm:
    ExistsEnabledECTran = (
        (Q == Plant_START_ecc && trans_START_INIT)
        || (Q == Plant_INIT_ecc && trans_INIT_START)
        || (Q == Plant_START_ecc && trans_START_TICK)
        || (Q == Plant_TICK_ecc && trans_TICK_START)
        || (Q == Plant_START_ecc && trans_START_PICK)
        || (Q == Plant_PICK_ecc && trans_PICK_START)
    );

    printf("Plant: s1_osm EEC  %d \n", ExistsEnabledECTran);

    atomic {
        if // RuleSet4: ECC transition. Conditions ordered by XML description
        :: (Q == Plant_START_ecc && trans_START_INIT) -> Q = Plant_INIT_ecc;
        :: (Q == Plant_INIT_ecc && trans_INIT_START) -> Q = Plant_START_ecc;
        :: (Q == Plant_START_ecc && trans_START_TICK) -> Q = Plant_TICK_ecc;
        :: (Q == Plant_TICK_ecc && trans_TICK_START) -> Q = Plant_START_ecc;
        :: (Q == Plant_START_ecc && trans_START_PICK) -> Q = Plant_PICK_ecc;
        :: (Q == Plant_PICK_ecc && trans_PICK_START) -> Q = Plant_START_ecc;
        :: !ExistsEnabledECTran -> goto done;
        :: else -> printf("Plant: No input events to process\n");
        fi;
        selectEI_INIT = 0;
        selectEI_PICK = 0;
        selectEI_TICK = 0;
    }

    printf("Plant:s2_osm, Q=%d\n", Q);
    s2_osm:
    atomic {
        if
        :: (Q == Plant_START_ecc) ->
            skip;
        :: (Q == Plant_INIT_ecc) ->
            // Algorithm INIT
            current = 0;
        :: (Q == Plant_TICK_ecc) ->
            // Algorithm TICK
            current = (current + 1) % 10;
            NUM = current;
            //emit event
            reset(VO_NUM);
            reset(EO_CHG);
            VO_NUM!NUM;
            EO_CHG!true;
        :: (Q == Plant_PICK_ecc) ->
            // Algorithm PICK
            NUM = current;
            //emit event
            reset(VO_NUM);
            reset(EO_PICKED);
            VO_NUM!NUM;
            EO_PICKED!true;
        fi
    }

    goto s1_osm;


  done: // RuleSet10
    beta!true;
    goto wait_events;
}