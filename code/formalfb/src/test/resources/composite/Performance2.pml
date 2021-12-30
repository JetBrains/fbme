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
        ALU_1_VI_A!1;
        ALU_1_VI_B!0;
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
            reset(ALU_2_VI_A);
            reset(ALU_2_VI_B);
            ALU_2_EI_SUM!true;
            ALU_2_VI_A!buf_ALU_1_RES;
            ALU_2_VI_B!1;

        :: nempty(ALU_2_EO_CNF) ->
            ALU_2_EO_CNF?true;
            ALU_2_VO_RES?buf_ALU_2_RES;

            reset(EO_CNF);
            reset(VO_RES);
            EO_CNF!true;
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