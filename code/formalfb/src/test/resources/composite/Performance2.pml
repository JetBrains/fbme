mtype:Performance2_dispatch = {ALU1_turn, ALU2_turn, DONE_turn_Performance2};
proctype Performance2(chan EI_REQ, EO_CNF, VO_RES, alpha, beta) {
	bit ExistsInputEvent = 0;
	mtype:Performance2_dispatch dispatch_state = ALU1_turn;
	bit omega;

	int RES;

	chan ALU1_EI_SUM = [1] of {bit};
	chan ALU1_EI_DIFF = [1] of {bit};
	chan ALU1_EO_CNF = [1] of {bit};
	chan ALU1_VI_A = [1] of {int};
	chan ALU1_VI_B = [1] of {int};
	chan ALU1_VO_RES = [1] of {int};
	chan ALU1_alpha = [0] of {bit};
	chan ALU1_beta = [0] of {bit};
	int buf_ALU1_RES;


	chan ALU2_EI_SUM = [1] of {bit};
	chan ALU2_EI_DIFF = [1] of {bit};
	chan ALU2_EO_CNF = [1] of {bit};
	chan ALU2_VI_A = [1] of {int};
	chan ALU2_VI_B = [1] of {int};
	chan ALU2_VO_RES = [1] of {int};
	chan ALU2_alpha = [0] of {bit};
	chan ALU2_beta = [0] of {bit};
	int buf_ALU2_RES;


	atomic {
	 run ALU(ALU1_EI_SUM, ALU1_EI_DIFF, ALU1_EO_CNF, ALU1_VI_A, ALU1_VI_B, ALU1_VO_RES, ALU1_alpha, ALU1_beta);
	 run ALU(ALU2_EI_SUM, ALU2_EI_DIFF, ALU2_EO_CNF, ALU2_VI_A, ALU2_VI_B, ALU2_VO_RES, ALU2_alpha, ALU2_beta);
	}

   wait_events:
	end:
	alpha?true;
	dispatch_state = ALU1_turn;

   read_input_events:
   	ExistsInputEvent = nempty(EI_REQ);

   	if
   	:: d_step { nempty(EI_REQ) ->
   		reset(ALU1_EI_SUM);
   		ALU1_EI_SUM!true;
   		ALU1_VI_A!1;
   		ALU1_VI_B!0;
   	}
   	:: (!ExistsInputEvent) -> skip;
   	fi

   dispatch:
   	if
   	:: atomic { dispatch_state == ALU1_turn ->
   		ALU1_alpha!true;
   		ALU1_beta?true;
   		dispatch_state = ALU2_turn;
   	}
   	:: atomic { dispatch_state == ALU2_turn ->
   		ALU2_alpha!true;
   		ALU2_beta?true;
   		dispatch_state = DONE_turn_Performance2;
   	}
   	:: dispatch_state == DONE_turn_Performance2 -> skip;
   	fi

   	goto read_component_event_outputs;

   read_component_event_outputs:
   	atomic {
   		omega = empty(ALU1_EO_CNF) && empty(ALU2_EO_CNF);

   		if
   		:: nempty(ALU1_EO_CNF) ->
   			ALU1_EO_CNF?true;
   			ALU1_VO_RES?buf_ALU1_RES;

   			reset(ALU2_EI_SUM);
   			reset(ALU2_VI_A);
   			reset(ALU2_VI_B);
   			ALU2_EI_SUM!true;
   			ALU2_VI_A!buf_ALU1_RES;
   			ALU2_VI_B!1;

   		:: nempty(ALU2_EO_CNF) ->
   			ALU2_EO_CNF?true;
   			ALU2_VO_RES?buf_ALU2_RES;

   			reset(EO_CNF);
   			reset(VO_RES);
   			EO_CNF!true;
   			VO_RES!buf_ALU2_RES;

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