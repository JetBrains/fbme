mtype:ALU_ECC = {ALU_START_ecc, ALU_SumOp_ecc, ALU_DiffOp_ecc};
proctype ALU(chan
    EI_SUM, EI_DIFF, EO_CNF, VI_A, VI_B, VO_RES,
    alpha, beta
    ) {
    int A = 0;
    int B = 0;
    int RES = 0;
    // No internal vars

    bit ExistsInputEvent = 0;
    bit ExistsEnabledECTran = 0;
    mtype:ALU_ECC Q = ALU_START_ecc;

  wait_events:
    end: // valid end state
    alpha?true;
    ExistsInputEvent = nempty(EI_SUM) || nempty(EI_DIFF);

    atomic {
        do
        :: nempty(VI_A) -> VI_A?A;
        :: nempty(VI_B) -> VI_B?B;
        :: empty(VI_A) && empty(VI_B) -> break;
        od
    }

  s0_osm:
    printf("ALU:s0_osm, Q=%d \n", Q);
    bit selectEI_SUM, selectEI_DIFF;
    selectEI_SUM = nempty(EI_SUM) && Q == ALU_START_ecc;
    selectEI_DIFF = !selectEI_SUM && nempty(EI_DIFF) && Q == ALU_START_ecc;

    bit trans_START_SumOp, trans_SumOp_START, trans_START_DiffOp, trans_DiffOp_START;
    trans_START_SumOp = selectEI_SUM;
    trans_SumOp_START = 1;
    trans_START_DiffOp = selectEI_DIFF;
    trans_DiffOp_START = 1;


    // s0_osm select 1 event. Reset all other RuleSet1
    if
    :: atomic { selectEI_SUM ->
        EI_SUM?true;
    }
    :: atomic { selectEI_DIFF ->
        EI_DIFF?true;
    }
    :: (!ExistsInputEvent) -> goto done;
    :: else -> printf("ALU: no enabled transitions");
    fi

    // RuleSet1 reset all other inputs
    do
    :: atomic { nempty(EI_SUM) -> EI_SUM?true;}
    :: atomic { nempty(EI_DIFF) -> EI_DIFF?true;}
    :: else -> break;
    od
    goto s1_osm; // RuleSet3


    s1_osm:
    ExistsEnabledECTran = (
        (Q == ALU_START_ecc && trans_START_SumOp)
        || (Q == ALU_SumOp_ecc && trans_SumOp_START)
        || (Q == ALU_START_ecc && trans_START_DiffOp)
        || (Q == ALU_DiffOp_ecc && trans_DiffOp_START)
    );

    printf("ALU: s1_osm EEC  %d \n", ExistsEnabledECTran);

    atomic {
        if // RuleSet4: ECC transition. Conditions ordered by XML description
        :: (Q == ALU_START_ecc && trans_START_SumOp) -> Q = ALU_SumOp_ecc;
        :: (Q == ALU_SumOp_ecc && trans_SumOp_START) -> Q = ALU_START_ecc;
        :: (Q == ALU_START_ecc && trans_START_DiffOp) -> Q = ALU_DiffOp_ecc;
        :: (Q == ALU_DiffOp_ecc && trans_DiffOp_START) -> Q = ALU_START_ecc;
        :: !ExistsEnabledECTran -> goto done;
        :: else -> printf("ALU: No input events to process\n");
        fi;
        selectEI_SUM = 0;
        selectEI_DIFF = 0;
    }

    printf("ALU:s2_osm, Q=%d\n", Q);
    s2_osm:
    atomic {
        if
        :: (Q == ALU_START_ecc) ->
            skip;
        :: (Q == ALU_SumOp_ecc) ->
            // Algorithm sumOperation
            RES = A + B;
            //emit event
            reset(VO_RES);
            reset(EO_CNF);
            VO_RES!RES;
            EO_CNF!true;
        :: (Q == ALU_DiffOp_ecc) ->
            // Algorithm diffOperation
            RES = A - B;
            //emit event
            reset(VO_RES);
            reset(EO_CNF);
            VO_RES!RES;
            EO_CNF!true;
        fi
    }

    goto s1_osm;


  done: // RuleSet10
    beta!true;
    goto wait_events;
}