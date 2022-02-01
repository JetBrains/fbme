#define reset(ch) d_step { do :: ch?_; :: empty(ch) -> break; od; skip }
#define reset3(ch) d_step { do :: ch?_,_,_; :: empty(ch) -> break; od; skip }


mtype:Performance2_dispatch = {ALU_1_turn_Performance2, ALU_2_turn_Performance2, DONE_turn_Performance2};
proctype Performance2(chan
    EI_REQ, EO_CNF, VO_RES,
    alpha, beta
    ) {
    bit ExistsInputEvent = 0;
    mtype:Performance2_dispatch dispatch_state = ALU_1_turn_Performance2;
    bit omega;

    int RES = 0;

    chan ALU_1_EI_SUM = [1] of {bit};
    chan ALU_1_EI_DIFF = [1] of {bit};
    chan ALU_1_EO_CNF = [1] of {bit};
    chan ALU_1_VI_A = [1] of {int};
    chan ALU_1_VI_B = [1] of {int};
    chan ALU_1_VO_RES = [1] of {int};
    int buf_ALU_1_RES;
    chan ALU_1_alpha = [0] of {bit};
    chan ALU_1_beta = [0] of {bit};

    chan ALU_2_EI_SUM = [1] of {bit};
    chan ALU_2_EI_DIFF = [1] of {bit};
    chan ALU_2_EO_CNF = [1] of {bit};
    chan ALU_2_VI_A = [1] of {int};
    chan ALU_2_VI_B = [1] of {int};
    chan ALU_2_VO_RES = [1] of {int};
    int buf_ALU_2_RES;
    chan ALU_2_alpha = [0] of {bit};
    chan ALU_2_beta = [0] of {bit};


    atomic {
        run ALU(ALU_1_EI_SUM, ALU_1_EI_DIFF, ALU_1_EO_CNF, ALU_1_VI_A, ALU_1_VI_B, ALU_1_VO_RES, ALU_1_alpha, ALU_1_beta);
        run ALU(ALU_2_EI_SUM, ALU_2_EI_DIFF, ALU_2_EO_CNF, ALU_2_VI_A, ALU_2_VI_B, ALU_2_VO_RES, ALU_2_alpha, ALU_2_beta);
    }

  wait_events:
    end:
    alpha?true;
    dispatch_state = ALU_1_turn_Performance2;

  read_input_events:
    ExistsInputEvent = nempty(EI_REQ);

    if
    :: d_step { nempty(EI_REQ) ->
        reset(ALU_1_EI_SUM);
        ALU_1_EI_SUM!true;
        reset(ALU_1_VI_A);
        ALU_1_VI_A!0;
        reset(ALU_1_VI_B);
        ALU_1_VI_B!1;
        EI_REQ?true;
    }
    :: (!ExistsInputEvent) -> skip;
    fi

  dispatch:
    if
    :: atomic { dispatch_state == ALU_1_turn_Performance2 ->
        ALU_1_alpha!true;
        ALU_1_beta?true;
        dispatch_state = ALU_2_turn_Performance2;
    }
    :: atomic { dispatch_state == ALU_2_turn_Performance2 ->
        ALU_2_alpha!true;
        ALU_2_beta?true;
        dispatch_state = DONE_turn_Performance2;
    }
    :: dispatch_state == DONE_turn_Performance2 -> skip;
    fi

    goto read_component_event_outputs;

  read_component_event_outputs:
    atomic {
        omega = empty(ALU_1_EO_CNF) && empty(ALU_2_EO_CNF);

        if
        :: nempty(ALU_1_EO_CNF) ->
            ALU_1_EO_CNF?true;
            ALU_1_VO_RES?buf_ALU_1_RES;
            reset(ALU_2_EI_SUM);
            ALU_2_EI_SUM!true;
            reset(ALU_2_VI_B);
            ALU_2_VI_B!1;
            reset(ALU_2_VI_A);
            ALU_2_VI_A!buf_ALU_1_RES;

        :: nempty(ALU_2_EO_CNF) ->
            ALU_2_EO_CNF?true;
            ALU_2_VO_RES?buf_ALU_2_RES;
            reset(EO_CNF);
            EO_CNF!true;
            reset(VO_RES);
            VO_RES!buf_ALU_2_RES;

        :: (omega && dispatch_state == DONE_turn_Performance2) -> goto done;
        :: (omega && dispatch_state != DONE_turn_Performance2) -> goto dispatch;
        fi
    }
    goto read_component_event_outputs;

  done:
    atomic {
        beta!true;
        // phi var
    }
    goto wait_events;

}

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

init {
    chan root_EI_REQ = [1] of {bit};
    chan root_EO_CNF = [1] of {bit};
    chan root_VO_RES = [1] of {int};
    int buf_root_RES;
    chan root_alpha = [0] of {bit};
    chan root_beta = [0] of {bit};
    atomic {
        run Performance2(root_EI_REQ, root_EO_CNF, root_VO_RES, root_alpha, root_beta);
    }

  dispatch:
    alpha!true;
    beta?true;
}