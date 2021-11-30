mtype:DrillModel_ECC = {DrillModel_START_ecc, DrillModel_DRILL_ecc, DrillModel_WAITING_ecc};
proctype DrillModel(chan
    EI_CHGI, EO_CHANGE, VI_LIFT, VI_LOWER, VO_COORD, VO_UP, VO_DOWN,
    alpha, beta
    ) {
    bool LIFT = false;
    bool LOWER = false;
    int COORD = 0;
    bool UP = false;
    bool DOWN = false;
    // No internal vars

    bit ExistsInputEvent = 0;
    bit ExistsEnabledECTran = 0;
    mtype:DrillModel_ECC Q = DrillModel_START_ecc;

  wait_events:
    end: // valid end state
    alpha?true;
    ExistsInputEvent = nempty(EI_CHGI);

    atomic {
        do
        :: nempty(VI_LIFT) -> VI_LIFT?LIFT;
        :: nempty(VI_LOWER) -> VI_LOWER?LOWER;
        :: empty(VI_LIFT) && empty(VI_LOWER) -> break;
        od
    }

  s0_osm:
    printf("DrillModel:s0_osm, Q=%d \n", Q);
    bit selectEI_CHGI;
    selectEI_CHGI = nempty(EI_CHGI) && Q == DrillModel_START_ecc && Q == DrillModel_DRILL_ecc && Q == DrillModel_WAITING_ecc;

    bit trans_START_DRILL, trans_DRILL_WAITING, trans_WAITING_DRILL, trans_START_START;
    trans_START_DRILL = selectEI_CHGI && LOWER;
    trans_DRILL_WAITING = selectEI_CHGI && LIFT;
    trans_WAITING_DRILL = selectEI_CHGI && LOWER;
    trans_START_START = 1;


    // s0_osm select 1 event. Reset all other RuleSet1
    if
    :: atomic { selectEI_CHGI ->
        EI_CHGI?true;
    }
    :: (!ExistsInputEvent) -> goto done;
    :: else -> printf("DrillModel: no enabled transitions");
    fi

    // RuleSet1 reset all other inputs
    do
    :: atomic { nempty(EI_CHGI) -> EI_CHGI?true;}
    :: else -> break;
    od
    goto s1_osm; // RuleSet3


    s1_osm:
    ExistsEnabledECTran = (
        (Q == DrillModel_START_ecc && trans_START_DRILL)
        || (Q == DrillModel_DRILL_ecc && trans_DRILL_WAITING)
        || (Q == DrillModel_WAITING_ecc && trans_WAITING_DRILL)
        || (Q == DrillModel_START_ecc && trans_START_START)
    );

    printf("DrillModel: s1_osm EEC  %d \n", ExistsEnabledECTran);

    atomic {
        if // RuleSet4: ECC transition. Conditions ordered by XML description
        :: (Q == DrillModel_START_ecc && trans_START_DRILL) -> Q = DrillModel_DRILL_ecc;
        :: (Q == DrillModel_DRILL_ecc && trans_DRILL_WAITING) -> Q = DrillModel_WAITING_ecc;
        :: (Q == DrillModel_WAITING_ecc && trans_WAITING_DRILL) -> Q = DrillModel_DRILL_ecc;
        :: (Q == DrillModel_START_ecc && trans_START_START) -> Q = DrillModel_START_ecc;
        :: !ExistsEnabledECTran -> goto done;
        :: else -> printf("DrillModel: No input events to process\n");
        fi;
        selectEI_CHGI = 0;
    }

    printf("DrillModel:s2_osm, Q=%d\n", Q);
    s2_osm:
    atomic {
        if
        :: (Q == DrillModel_START_ecc) ->
            // Algorithm UP_1
            UP = true;
            // Algorithm DOWN_0
            DOWN = false;
        :: (Q == DrillModel_DRILL_ecc) ->
            // Algorithm UP_0
            UP = false;
            // Algorithm DOWN_1
            DOWN = true;
            //emit event
            reset(VO_UP);
            reset(VO_DOWN);
            reset(VO_COORD);
            reset(EO_CHANGE);
            VO_UP!UP;
            VO_DOWN!DOWN;
            VO_COORD!COORD;
            EO_CHANGE!true;
        :: (Q == DrillModel_WAITING_ecc) ->
            // Algorithm UP_1
            UP = true;
            // Algorithm DOWN_0
            DOWN = false;
            //emit event
            reset(VO_UP);
            reset(VO_DOWN);
            reset(VO_COORD);
            reset(EO_CHANGE);
            VO_UP!UP;
            VO_DOWN!DOWN;
            VO_COORD!COORD;
            EO_CHANGE!true;
        fi
    }

    goto s1_osm;


  done: // RuleSet10
    beta!true;
    goto wait_events;
}