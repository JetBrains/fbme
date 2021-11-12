#define reset(ch) d_step { do :: ch?_; :: empty(ch) -> break; od; skip }
#define reset3(ch) d_step { do :: ch?_,_,_; :: empty(ch) -> break; od; skip }
#define nondeterminism 1



mtype:ALU_ECC = {ALU_START_ecc, ALU_PositiveOp_ecc, ALU_NegativeOp_ecc};
proctype ALU(chan
	EI_SUM, EI_DIFF, EO_CNF,
	VI_A, VI_B, VO_RES,
	alpha, beta
	) {
	int A = 0;
	int B = 0;
	int RES = 0;
	bit ExistsInputEvent = 0;
	bit ExistsEnabledECTran = 0;
	//mtype:OSM osm = s0_osm;
	mtype:ALU_ECC Q = ALU_START_ecc;
	//int NA = 0;




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
  	selectEI_SUM = nempty(EI_SUM);
  	selectEI_DIFF = !selectEI_SUM && nempty(EI_DIFF);

  	bit trans_START_PositiveOp, trans_START_NegativeOp, trans_NegativeOp_START, trans_PositiveOp_START;
    trans_START_PositiveOp = nempty(EI_SUM);
    trans_START_NegativeOp = nempty(EI_DIFF);
    trans_NegativeOp_START = 1;
    trans_PositiveOp_START = 1;


	// s0_osm select 1 event. Reset all other RuleSet1
	if
	:: atomic {selectEI_SUM ->
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
		(Q == ALU_START_ecc && trans_START_PositiveOp && selectEI_SUM)
		|| (Q == ALU_START_ecc && trans_START_NegativeOp && selectEI_DIFF)
		|| (Q == ALU_PositiveOp_ecc && trans_NegativeOp_START)
		|| (Q == ALU_NegativeOp_ecc && trans_PositiveOp_START));

	printf("ALU:s1_osm EEC  %d \n", ExistsEnabledECTran);


	atomic {
		if // RuleSet4: ECC transition. Conditions ordered
		:: (Q == ALU_START_ecc && trans_START_PositiveOp && selectEI_SUM) -> Q = ALU_PositiveOp_ecc;
		:: (Q == ALU_START_ecc && trans_START_NegativeOp && selectEI_DIFF) -> Q = ALU_NegativeOp_ecc;
		:: (Q == ALU_PositiveOp_ecc && trans_NegativeOp_START) -> Q = ALU_START_ecc;
		:: (Q == ALU_NegativeOp_ecc && trans_PositiveOp_START) -> Q = ALU_START_ecc;
		:: !ExistsEnabledECTran -> goto done;
		:: else -> printf("ALU: No input events to process\n");
		fi;
		selectEI_SUM = 0;
		selectEI_DIFF = 0;
	}

	printf("ALU:s2_osm, Q=%d\n", Q);
	s2_osm: //RuleSet6 tracks NI, don't needed.
	atomic {
		if
		:: (Q == ALU_START_ecc) -> skip;
		:: (Q == ALU_PositiveOp_ecc) ->
			// action 1
			//algo
			RES = A + B; // RuleSet7 tracks change conditions for output variables. Don't needed.
			// NA := NA + 1; RuleSet5
			// action 2
			//emit event
			reset(VO_RES);
			reset(EO_CNF);
			VO_RES!RES; // RuleSet9 change output data buffer.
			EO_CNF!true;  // RuleSet8 Emit Event
		:: (Q == ALU_NegativeOp_ecc) ->
			// action 1
			//algo
			RES = A - B; // RuleSet7 tracks change conditions for output variables. Don't needed.
			// NA := NA + 1; RuleSet5
			// action 2
			//emit event
			reset(VO_RES);
			reset(EO_CNF);
			VO_RES!RES; // RuleSet9 change output data buffer.
			EO_CNF!true;  // RuleSet8 Emit Event
		fi
	}

	goto s1_osm;




  done: // RuleSet10
	beta!true;
	goto wait_events;
}

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

int res;
bit complete = 0;

init {
	int lastpid;

	chan EI_REQ = [1] of {bit};
	chan EO_CNF = [1] of {bit};
	chan VO_RES = [1] of {int};
	chan alpha = [0] of {bit};
	chan beta = [0] of {bit};

	atomic {
		run Performance2(EI_REQ, EO_CNF, VO_RES, alpha, beta);
		EI_REQ!true;
	}

   dispatch:
	alpha!true;
	beta?true;

	EO_CNF?true;
	VO_RES?res;


	printf("Result: %d\n", res);
	complete = 1;
}