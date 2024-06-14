#define reset(ch) d_step { do :: ch?_; :: empty(ch) -> break; od; skip }
#define reset3(ch) d_step { do :: ch?_,_,_; :: empty(ch) -> break; od; skip }

//todo multiple blocks send data to one block 
#define debug 1
//mtype:OSM = {s0_osm, s1_osm, s2_osm};
// test case
#define MaxTrips 1
byte tripsCnt = 0; 

typedef Event {bit v; int ts_born; int ts_last};
int systemclock = 0;
byte initialFloor = 1;
byte Model_id;

mtype:BasicControlTS_Selected = {BasicControlTS_s_INIT, BasicControlTS_s_REQ, BasicControlTS_s_POS_TIMEOUT_EXCEED, BasicControlTS_s_NONE};
mtype:BasicControlTS_ECC = {START_ecc, INIT_ecc, AtFloor_ecc, GoUp_ecc, Wait_ecc, DoorOpened_ecc, GoDown_ecc, CorrectDown_ecc, CorrectUp_ecc};
bit BasicControlTS_waits = 0; // for test case
proctype BasicControlTS(chan EI_INIT, EI_REQ, EI_POS_TIMEOUT_EXCEED, EO_CNF, EO_POS_TIMEOUT, 
	DI_AtFloor, DI_DoorOpened, DI_Button, DI_Req, DO_liftUp, DO_liftDown, DO_door,
	 alpha, beta) {
	bit AtFloor[3];
	bit DoorOpened[3];
	bit Button[3];
	bit Req[3];
	int MaxSafeDelay = 1;
	int EventDelay = 0;
	//EventDelay = systemclock - EI_REQ 
	bit liftUp;
	bit liftDown;
	bit door[3];


	bit ExistsInputEvent = 0;
	bit ExistsEnabledECTran = 0;
	//mtype:OSM osm = s0_osm; 
	mtype:BasicControlTS_ECC Q = START_ecc;
	mtype:BasicControlTS_Selected selectEI = BasicControlTS_s_NONE
	//int NA = 0;
	Event e_REQ;

	
  
  wait_events: 
  	end: // valid end state
	alpha?true;
	

	ExistsInputEvent = nempty(EI_INIT) || nempty(EI_REQ) || nempty(EI_POS_TIMEOUT_EXCEED);
	
	// preread timestamped Events
	if
	:: d_step { nempty(EI_REQ) -> 
		EI_REQ?e_REQ
		DI_AtFloor?AtFloor[0],AtFloor[1],AtFloor[2];
		DI_DoorOpened?DoorOpened[0],DoorOpened[1],DoorOpened[2];
		DI_Button?Button[0],Button[1],Button[2];
		DI_Req?Req[0],Req[1],Req[2];
		EventDelay = systemclock - e_REQ.ts_born;
	}
	:: else -> e_REQ.v = false;
	fi 

	
  s0_osm: 
  	printf("BasicControlTS:s0_osm, Q=%d (Starts from %d) \n", Q, START_ecc); 
  	bit trans_START_INIT, trans_CorrectDown_Wait, trans_CorrectUp_Wait;
  	bit select_INIT, select_REQ, select_POS_TIMEOUT_EXCEED;

  	trans_START_INIT = nempty(EI_INIT);
  	bit trans_INIT_Wait = 1;
  	bit trans_GoUp_AtFloor = (e_REQ.v && EventDelay <= MaxSafeDelay 
  		&& (	(AtFloor[1] && (Button[1] || Req[1])) 
  			|| 	(AtFloor[2] && (Button[2] || Req[2]))));
  	bit trans_GoUp_CorrectDown = (e_REQ.v && EventDelay > MaxSafeDelay 
  		&& (	(AtFloor[1] && (Button[1] || Req[1])) 
  			|| 	(AtFloor[2] && (Button[2] || Req[2]))));
  	bit trans_AtFloor_DoorOpened = e_REQ.v && (DoorOpened[0] || DoorOpened[1] || DoorOpened[2]);
  	bit trans_Wait_AtFloor = (
		(AtFloor[0] && (Button[0] || Req[0])) 
		|| (AtFloor[1] && (Button[1] || Req[1]))
		|| (AtFloor[2] && (Button[2] || Req[2])));
	bit trans_Wait_GoUp = ((AtFloor[0] && (Button[1] || Req[1] || Button[2] || Req[2])) 
	|| (AtFloor[1] && (Button[2] || Req[2])));
	bit trans_Wait_GoDown = ((AtFloor[2] && (Button[0] || Req[0] || Button[1] || Req[1])) 
	|| (AtFloor[1] && (Button[0] || Req[0])));
	bit trans_DoorOpened_Wait = e_REQ.v && ((AtFloor[0] && !DoorOpened[0]) || (AtFloor[1] && !DoorOpened[1]) || (AtFloor[2] && !DoorOpened[2]));
	bit trans_GoDown_AtFloor = (e_REQ.v && EventDelay <= MaxSafeDelay 
  		&& (	(AtFloor[1] && (Button[1] || Req[1])) 
  			|| 	(AtFloor[0] && (Button[0] || Req[0]))));
	bit trans_GoDown_CorrectUp =  (e_REQ.v && EventDelay > MaxSafeDelay 
  		&& (	(AtFloor[1] && (Button[1] || Req[1])) 
  			|| 	(AtFloor[0] && (Button[0] || Req[0]))));
  	trans_CorrectDown_Wait = nempty(EI_POS_TIMEOUT_EXCEED);
  	trans_CorrectUp_Wait = nempty(EI_POS_TIMEOUT_EXCEED);


  	select_INIT = nempty(EI_INIT) && Q == START_ecc  && (trans_START_INIT);
    select_REQ = !select_INIT && e_REQ.v && (
		(Q == GoUp_ecc && (trans_GoUp_AtFloor || trans_GoUp_CorrectDown))
		|| (Q == GoDown_ecc && (trans_GoDown_AtFloor || trans_GoDown_CorrectUp))
		|| (Q == AtFloor_ecc && (trans_AtFloor_DoorOpened))
		|| (Q == DoorOpened_ecc && (trans_DoorOpened_Wait))
		);
  	select_POS_TIMEOUT_EXCEED = !select_INIT && !select_REQ && nempty(EI_POS_TIMEOUT_EXCEED) && 
  		(  (Q == CorrectDown_ecc && trans_CorrectDown_Wait) 
  		|| (Q == CorrectUp_ecc && trans_CorrectUp_Wait)
  		);


	// s0_osm select 1 event. Reset all other RuleSet1
	if
	:: atomic { select_INIT -> 
		EI_INIT?true;
		selectEI = BasicControlTS_s_INIT;
		// Read data: RuleSet2
	}
	:: atomic { select_REQ -> 
		selectEI = BasicControlTS_s_REQ;
	}
	:: atomic { select_POS_TIMEOUT_EXCEED -> 
		selectEI = BasicControlTS_s_POS_TIMEOUT_EXCEED
	}	
	:: (!ExistsInputEvent) -> goto done;
	:: else -> printf("BasicControlTS: no enabled transitions\nQ=%d, AtFloor=%d,%d,%d , Button=%d,%d,%d, EI_REQ=%d\n",
	 Q, AtFloor[0],AtFloor[1],AtFloor[2], Button[0],Button[1],Button[2], e_REQ.v); // reset inputs;
	fi

	printf("BasicControlTS: selectEI = %d\n", selectEI);

	// RuleSet1 reset all other inputs
	do 
	:: atomic {nempty(EI_INIT) -> EI_INIT?true;} 
	:: atomic {nempty(EI_POS_TIMEOUT_EXCEED) -> EI_POS_TIMEOUT_EXCEED?true;} 
	:: atomic {e_REQ.v -> e_REQ.v = false;}
	:: else -> break; 
	od 


	
	s1_osm:
	ExistsEnabledECTran = (
	(Q == START_ecc && trans_START_INIT && selectEI == BasicControlTS_s_INIT) 
	|| (Q == INIT_ecc && trans_INIT_Wait)
	|| (Q == AtFloor_ecc && trans_AtFloor_DoorOpened && selectEI == BasicControlTS_s_REQ) 
	|| (Q == GoUp_ecc && trans_GoUp_CorrectDown && selectEI == BasicControlTS_s_REQ)
	|| (Q == GoUp_ecc && trans_GoUp_AtFloor && selectEI == BasicControlTS_s_REQ)
	|| (Q == Wait_ecc && trans_Wait_GoUp)
	|| (Q == Wait_ecc && trans_Wait_GoDown)
	|| (Q == Wait_ecc && trans_Wait_AtFloor)
	|| (Q == DoorOpened_ecc && trans_DoorOpened_Wait && selectEI == BasicControlTS_s_REQ) 
	|| (Q == GoDown_ecc && trans_GoDown_CorrectUp && selectEI == BasicControlTS_s_REQ)
	|| (Q == GoDown_ecc && trans_GoDown_AtFloor && selectEI == BasicControlTS_s_REQ)
	|| (Q == CorrectDown_ecc && trans_CorrectDown_Wait && selectEI == BasicControlTS_s_POS_TIMEOUT_EXCEED)
	|| (Q == CorrectUp_ecc && trans_CorrectUp_Wait && selectEI == BasicControlTS_s_POS_TIMEOUT_EXCEED)
	);
	printf("BasicControlTS:s1_osm ExistsEnabledECTran  %d \n", ExistsEnabledECTran); 
	atomic { 
		if // RuleSet4: ECC transition. Conditions ordered		//todo: negate prev, make choice deterministic
		:: (Q == START_ecc && trans_START_INIT && selectEI == BasicControlTS_s_INIT)  -> Q = INIT_ecc;
		:: (Q == INIT_ecc && trans_INIT_Wait) -> Q = Wait_ecc; 
		:: (Q == AtFloor_ecc && trans_AtFloor_DoorOpened && selectEI == BasicControlTS_s_REQ)  -> Q = DoorOpened_ecc;
		:: (Q == GoUp_ecc && trans_GoUp_CorrectDown && selectEI == BasicControlTS_s_REQ) -> Q = CorrectDown_ecc;
		:: (Q == GoUp_ecc && trans_GoUp_AtFloor && selectEI == BasicControlTS_s_REQ) -> Q = AtFloor_ecc;
		:: (Q == Wait_ecc && trans_Wait_GoUp) -> Q = GoUp_ecc;
		:: (Q == Wait_ecc && trans_Wait_GoDown) -> Q = GoDown_ecc;
		:: (Q == Wait_ecc && trans_Wait_AtFloor) -> Q = AtFloor_ecc;
		:: (Q == DoorOpened_ecc && trans_DoorOpened_Wait && selectEI == BasicControlTS_s_REQ)  -> Q = Wait_ecc;
		:: (Q == GoDown_ecc && trans_GoDown_CorrectUp && selectEI == BasicControlTS_s_REQ) -> Q = CorrectUp_ecc;
		:: (Q == GoDown_ecc && trans_GoDown_AtFloor && selectEI == BasicControlTS_s_REQ) -> Q = AtFloor_ecc;
		:: (Q == CorrectDown_ecc && trans_CorrectDown_Wait && selectEI == BasicControlTS_s_POS_TIMEOUT_EXCEED) -> Q = Wait_ecc;
		:: (Q == CorrectUp_ecc && trans_CorrectUp_Wait && selectEI == BasicControlTS_s_POS_TIMEOUT_EXCEED) -> Q = Wait_ecc;
		:: !ExistsEnabledECTran -> goto done;
		:: else -> printf("BasicControlTS: No input events to process\n"); 
		fi;
		selectEI = BasicControlTS_s_NONE;
	}

	// for test case 
	atomic {
		if
		:: (Q == Wait_ecc) -> BasicControlTS_waits = true;
		:: else -> BasicControlTS_waits = false; 
		fi
	}
	

	printf("BasicControlTS:s2_osm, Q=%d (Start from %d), waits = %d\n", Q, START_ecc, BasicControlTS_waits); 
	s2_osm: //RuleSet6 tracks NI, don't needed. 
	d_step {
		if 
		:: (Q == START_ecc) -> skip;
		:: (Q == INIT_ecc) -> 
			// action 1
			//algo INIT
			liftDown = false; // RuleSet7 tracks change conditions for output variables. Don't needed.
			liftUp = false;
			// NA := NA + 1; RuleSet5
			// action 2
			//emit event
			/*//atomic {
				EO_INITO!true;  // RuleSet8 Emit Event 
				DO_liftDown!liftDown; // RuleSet9 change output data buffer.
				DO_liftUp!liftUp;
				DO_door!false,false,false;
			//}*/
		:: (Q == AtFloor_ecc) ->
			// action 1 
			// algo STOP 
			liftDown = false;
			liftUp = false;

			// action 2 
			// algo OpenDoors
			door[0] = AtFloor[0];
			door[1] = AtFloor[1];
			door[2] = AtFloor[2];

			//atomic {
				// emit CNF
				reset(EO_CNF);
				reset(DO_liftDown);
				reset(DO_liftUp);
				reset3(DO_door);
				EO_CNF!true;  // RuleSet8 Emit Event 
				DO_liftDown!liftDown; // RuleSet9 change output data buffer.
				DO_liftUp!liftUp;
				DO_door!door[0],door[1],door[2];
			//}
			// RuleSet9 change output data buffer.
		:: (Q == GoUp_ecc) -> 
			// action 1 
			// algo GoUp 
			liftDown = false;
			liftUp = true;

			// emit CNF
			EO_CNF!true;  // RuleSet8 Emit Event 
			DO_liftDown!liftDown; // RuleSet9 change output data buffer.
			DO_liftUp!liftUp;
			DO_door!door[0],door[1],door[2];
		:: (Q == Wait_ecc) -> 
			liftUp = false;
			liftDown = false;

			// emit CNF
			EO_CNF!true;  // RuleSet8 Emit Event 
			DO_liftDown!liftDown; // RuleSet9 change output data buffer.
			DO_liftUp!liftUp;
			DO_door!door[0],door[1],door[2];

		:: (Q == DoorOpened_ecc) -> 
			// algo CloseDoors
			door[0] = false;
			door[1] = false;
			door[2] = false;

			// emit CNF
			EO_CNF!true;  // RuleSet8 Emit Event 
			DO_liftDown!liftDown; // RuleSet9 change output data buffer.
			DO_liftUp!liftUp;
			DO_door!door[0],door[1],door[2];
		:: (Q == GoDown_ecc) -> 
			// algo GoDown 
			liftDown = true;
			liftUp = false;
			
			// emit CNF
			EO_CNF!true;  // RuleSet8 Emit Event 
			DO_liftDown!liftDown; // RuleSet9 change output data buffer.
			DO_liftUp!liftUp;
			DO_door!door[0],door[1],door[2];
		:: (Q == CorrectUp_ecc) -> 
			// algo GoUp
			liftDown = false;
			liftUp = true;
			// emit CNF
			EO_CNF!true;  // RuleSet8 Emit Event 
			DO_liftDown!liftDown; // RuleSet9 change output data buffer.
			DO_liftUp!liftUp;
			DO_door!door[0],door[1],door[2];

			//action 2 
			EO_POS_TIMEOUT!true;

		:: (Q == CorrectDown_ecc) -> 
			// algo GoDown
			liftDown = true;
			liftUp = false;
			// emit CNF
			EO_CNF!true;  // RuleSet8 Emit Event 
			DO_liftDown!liftDown; // RuleSet9 change output data buffer.
			DO_liftUp!liftUp;
			DO_door!door[0],door[1],door[2];

			//action 2 
			EO_POS_TIMEOUT!true;
		fi
	}
	
	goto s1_osm;



	
  done: // RuleSet10 
	beta!true;
	goto wait_events;
}


int E_DELAY_Di = -1; // todo: multiple E_DELAY instances issue
proctype E_DELAY(chan EI_START, EI_STOP, EO_TIMEOUT, DI_Dt, alpha, beta) {
	//printf("E_DELAY\n");
  bit ExistsInputEvent = 0;
  wait_events:
	end:
	alpha?true;
  
	if
	:: E_DELAY_Di == 0 -> 
		EO_TIMEOUT!true;
		E_DELAY_Di = -1; 
	:: else -> skip;
	fi 

	ExistsInputEvent = nempty(EI_START) || nempty(EI_STOP);
	atomic {
		if
		:: nempty(EI_START) -> 
			EI_START?true; 
			DI_Dt?E_DELAY_Di;
		:: nempty(EI_STOP) -> 
			EI_STOP?true;
			E_DELAY_Di = -1;
		:: !ExistsInputEvent -> skip;
		fi 
	}
	

  done:
	beta!true;
	goto wait_events; 
}


int Model_Di = -1;

mtype:Elevator_position = {f3_, f3, f2_3, f2, f1_2, f1, f_1}
bit Model_doorState[3];
bit Model_buttonFloor[3];
mtype:Elevator_position Model_position;
proctype Model(chan EI_INIT, EI_REQ, EO_INITO, EO_CNF, EO_UPD,
 DI_motorUp, DI_motorDown, DI_door, 
 DO_buttonFloor, DO_requestFloor, DO_CarPos, DO_doorPos,
 alpha, beta
 ) {
	bit ExistsInputEvent = 0;
	
	
	int direction = 0;
	bit UPD_set = 0;

	bit buf_motorUp;
	bit buf_motorDown;
	bit buf_door[3];

	byte Dt = 2;
	

	Model_doorState[0] = 0; // 0 - closed, 1 - Open
	Model_doorState[1] = 0;
	Model_doorState[2] = 0;
	Model_buttonFloor[0] = 0;
	Model_buttonFloor[1] = 0;
	Model_buttonFloor[2] = 0;
	Model_position = initialFloor;

	
	//printf("Model inititalized\n");
	wait_events: 
  	end: // valid end state
	alpha?true;
	UPD_set = 0;

  read_events: 
	ExistsInputEvent = nempty(EI_INIT) || nempty(EI_REQ);

	if
	:: d_step { nempty(EI_INIT) ->
		EI_INIT?true;
		EO_INITO!true;
		DO_CarPos!Model_position;
		DO_doorPos!Model_doorState[0],Model_doorState[1],Model_doorState[2];
	}
	:: d_step { nempty(EI_REQ) -> 
		EI_REQ?true;
		DI_motorUp?buf_motorUp;
		DI_motorDown?buf_motorDown;
		DI_door?buf_door[0],buf_door[1],buf_door[2];
	}
	:: (!ExistsInputEvent) -> goto updateModel;
	fi

  updateModel: 
  atomic {
  	if 
  	:: Model_Di == 0 -> 
  		if 
	  	:: (Model_position + direction > f3_) -> Model_position = f3_; 
	  	:: (Model_position + direction < f_1) -> Model_position = f_1;
	  	:: else -> Model_position = Model_position + direction;
	  	fi 
  	:: else -> skip;
  	fi
  	
  	UPD_set = (Model_Di == 0 
  		|| Model_doorState[0] != buf_door[0] 
  		|| Model_doorState[1] != buf_door[1] 
  		|| Model_doorState[2] != buf_door[2]
  		 || Model_buttonFloor[0] != Model_buttonFloor[0] && !Model_doorState[0]
  		 || Model_buttonFloor[1] != Model_buttonFloor[1] && !Model_doorState[1]
  		 || Model_buttonFloor[2] != Model_buttonFloor[2] && !Model_doorState[2]);

  	Model_doorState[0] = buf_door[0];
  	Model_doorState[1] = buf_door[1];
  	Model_doorState[2] = buf_door[2];
  	Model_buttonFloor[0] = Model_buttonFloor[0] && !Model_doorState[0];
  	Model_buttonFloor[1] = Model_buttonFloor[1] && !Model_doorState[1];
  	Model_buttonFloor[2] = Model_buttonFloor[2] && !Model_doorState[2];
  	if
  	::  UPD_set -> 
  		EO_UPD!true;
  		DO_buttonFloor!Model_buttonFloor[0],Model_buttonFloor[1],Model_buttonFloor[2];
  		DO_doorPos!Model_doorState[0],Model_doorState[1],Model_doorState[2];
  		DO_CarPos!Model_position;
  	:: else -> skip;
  	fi


  	// for test case
  	printf("State: Model_Di=%d, Model_position=%d, UPD_set=%d, BasicControlTS_waits=%d, tripsCnt=%d\n", Model_Di, Model_position, UPD_set, BasicControlTS_waits, tripsCnt);
  	if
  	::  (!UPD_set && (Model_position == f1 || Model_position == f2 || Model_position == f3) && (tripsCnt < MaxTrips) && BasicControlTS_waits) -> 
  		EO_CNF!true;
  		if
  		:: true -> Model_buttonFloor[0] = 1;
  		:: true -> Model_buttonFloor[1] = 1;
  		:: true -> Model_buttonFloor[2] = 1;
  		fi
  		DO_buttonFloor!Model_buttonFloor[0],Model_buttonFloor[1],Model_buttonFloor[2];
  		DO_requestFloor!0,0,0;
  		tripsCnt = tripsCnt + 1;
  		printf("Model Request floor %d%d%d\n",Model_buttonFloor[0],Model_buttonFloor[1],Model_buttonFloor[2])
  	:: else -> skip;
  	fi

  	if
  	:: !buf_motorUp && !buf_motorDown -> Model_Di = -1;
  	:: direction == -1 && buf_motorUp -> Model_Di = Dt;
  	:: direction == 1 && buf_motorDown -> Model_Di = Dt;
  	:: direction == 0 && (buf_motorUp || buf_motorDown) -> Model_Di = Dt;
  	:: Model_Di == 0 -> Model_Di = Dt;
  	:: else -> skip;
  	fi
  	if 
  	:: buf_motorUp -> direction = 1;
  	:: buf_motorDown -> direction = -1;
  	:: else -> direction = 0;
  	fi 
  	printf("Model_Di=%d\n", Model_Di);

  }
  	



  done:
	beta!true;
	goto wait_events;
}


mtype:LiftSensor_Selected = {LiftSensor_s_INIT, LiftSensor_s_REQ, LiftSensor_s_NONE};
mtype:LiftSensor_ECC = {LiftSensor_START_ecc, LiftSensor_Update_ecc, LiftSensor_Wait_ecc};

proctype LiftSensor(chan EI_INIT, EI_REQ, EO_CNF,
	DI_CarPos, DO_ElevatorAtFloor,
	alpha, beta
  ) {
	bit ElevatorAtFloor[3];
	int CarPos = 0;
	int prevPos = -1;

	bit ExistsInputEvent = 0;
	bit ExistsEnabledECTran = 0;
	//mtype:OSM osm = s0_osm; 
	mtype:LiftSensor_ECC Q = LiftSensor_START_ecc;
	mtype:LiftSensor_Selected selectEI = LiftSensor_s_NONE;
	//int NA = 0;

  
  wait_events: 
  	end: // valid end state
	alpha?true;
	ExistsInputEvent = nempty(EI_REQ) || nempty(EI_INIT);
	//preread data
	if
	:: d_step { nempty(EI_INIT) -> 
		DI_CarPos?CarPos;
	}
	:: d_step { nempty(EI_REQ) -> 
		DI_CarPos?CarPos; 
	}
	:: else -> skip;
	fi

	
  s0_osm: 
  	printf("LiftSensor:s0_osm\n"); 
  	bit trans_START_Update, trans_Update_Wait, trans_Wait_Update, 
  	select_REQ;

	
	trans_START_Update = 1;
  	trans_Update_Wait = 1;
  	trans_Wait_Update = nempty(EI_REQ) && prevPos != CarPos;

  	select_REQ = nempty(EI_REQ);
  	
	// s0_osm select 1 event. Reset all other RuleSet1
	if
	:: d_step { nempty(EI_INIT) -> 
		EI_INIT?true;
		selectEI = LiftSensor_s_INIT;
	}
	:: d_step { select_REQ -> 
		EI_REQ?true;
		selectEI = LiftSensor_s_REQ;
	}
	:: (!ExistsInputEvent) -> goto done;
	:: else -> printf("LiftSensor: no enabled transitions\n"); // reset inputs;
	fi
  	
  	

	printf("LiftSensor: selectEI = %d\n", selectEI);

	// RuleSet1 reset all other inputs
	do 
	:: d_step { nempty(EI_REQ) -> EI_REQ?true; } 
	:: else -> break; 
	od 

	s1_osm:
	ExistsEnabledECTran = (
	(Q == LiftSensor_START_ecc && trans_START_Update) 
	|| (Q == LiftSensor_Update_ecc && trans_Update_Wait)
	|| (Q == LiftSensor_Wait_ecc && trans_Wait_Update && selectEI == LiftSensor_s_REQ) 
	);
	printf("LiftSensor:s1_osm EEC  %d \n", ExistsEnabledECTran); 
	atomic { 
		if // RuleSet4: ECC transition. Conditions ordered		//todo: negate prev, make choice deterministic
		:: (Q == LiftSensor_START_ecc && trans_START_Update)  -> Q = LiftSensor_Update_ecc;
		:: (Q == LiftSensor_Update_ecc && trans_Update_Wait) -> Q = LiftSensor_Wait_ecc;
		:: (Q == LiftSensor_Wait_ecc && trans_Wait_Update && selectEI == LiftSensor_s_REQ)   -> Q = LiftSensor_Update_ecc;
		:: !ExistsEnabledECTran -> goto done;
		:: else -> printf("LiftSensor: No input events to process\n"); 
		fi;
		selectEI = LiftSensor_s_NONE;
	}
	
	printf("LiftSensor:s2_osm, Q=%d\n", Q); 
	s2_osm: //RuleSet6 tracks NI, don't needed. 
	d_step {
		if 
		:: (Q == LiftSensor_START_ecc) -> skip;
		:: (Q == LiftSensor_Update_ecc) -> 
			// action 1
			//algo INIT
			ElevatorAtFloor[0] = CarPos == f1;  // RuleSet7 tracks change conditions for output variables. Don't needed.
			ElevatorAtFloor[1] = CarPos == f2;
			ElevatorAtFloor[2] = CarPos == f3;
			prevPos = CarPos;
			// NA := NA + 1; RuleSet5
			//emit event
			EO_CNF!true;  // RuleSet8 Emit Event 
			DO_ElevatorAtFloor!ElevatorAtFloor[0], ElevatorAtFloor[1], ElevatorAtFloor[2]; // RuleSet9 change output data buffer.
		:: (Q == LiftSensor_Wait_ecc) -> skip;
		fi
	}
	
	goto s1_osm;

	
  done: // RuleSet10 
	beta!true;
	goto wait_events;
}


mtype:DoorSensor_Selected = {DoorSensor_s_INIT, DoorSensor_s_REQ, DoorSensor_s_NONE};
mtype:DoorSensor_ECC = {DoorSensor_START_ecc, DoorSensor_Update_ecc, DoorSensor_Wait_ecc};

proctype DoorSensor(chan EI_INIT, EI_REQ, EO_CNF,
	DI_DoorPos, DO_doorOpen,
	alpha, beta
  ) {
	bit DoorPos[3];
	bit prevPos[3];
	bit doorOpen[3];

	DoorPos[0]=0;
	DoorPos[1]=0;
	DoorPos[2]=0;
	prevPos[0]=0;
	prevPos[1]=0;
	prevPos[2]=0;
	
	bit ExistsInputEvent = 0;
	bit ExistsEnabledECTran = 0;
	//mtype:OSM osm = s0_osm; 
	mtype:DoorSensor_ECC Q = DoorSensor_START_ecc;
	mtype:DoorSensor_Selected selectEI = DoorSensor_s_NONE;
	//int NA = 0;

  
  wait_events: 
  	end: // valid end state
	alpha?true;
	ExistsInputEvent = nempty(EI_REQ) || nempty(EI_INIT);
	if // todo: intersections of data 
	:: d_step { nempty(EI_INIT) -> 
		DI_DoorPos?DoorPos[0],DoorPos[1],DoorPos[2];
	}
	:: d_step { nempty(EI_REQ) -> 
		DI_DoorPos?DoorPos[0],DoorPos[1],DoorPos[2]; 
	}
	:: else -> skip;
	fi
	
  s0_osm: 
  	printf("DoorSensor:s0_osm\n"); 
  	bit trans_START_Wait, trans_Update_Wait, trans_Wait_Update, 
  	select_REQ;

  	trans_START_Wait = 1;
  	trans_Update_Wait = 1;
  	trans_Wait_Update = nempty(EI_REQ) && (prevPos[0] != DoorPos[0] || prevPos[1] != DoorPos[1] || prevPos[2] != DoorPos[2]);

  	select_REQ = nempty(EI_REQ);
  	
	// s0_osm select 1 event. Reset all other RuleSet1
	if
	:: d_step { nempty(EI_INIT) -> 
		EI_INIT?true;
		selectEI = DoorSensor_s_INIT
	}
	:: d_step { select_REQ -> 
		EI_REQ?true;
		selectEI = DoorSensor_s_REQ;
	}
	:: (!ExistsInputEvent) -> goto done;
	:: else -> printf("DoorSensor: no enabled transitions\n"); // reset inputs;
	fi

	printf("DoorSensor: selectEI = %d\n", selectEI);

	// RuleSet1 reset all other inputs
	do 
	:: d_step { nempty(EI_REQ) -> EI_REQ?true; } 
	:: else -> break; 
	od 

	s1_osm:
	ExistsEnabledECTran = (
	(Q == DoorSensor_START_ecc && trans_START_Wait) 
	|| (Q == DoorSensor_Update_ecc && trans_Update_Wait)
	|| (Q == DoorSensor_Wait_ecc && trans_Wait_Update && selectEI == DoorSensor_s_REQ) 
	);
	printf("DoorSensor:s1_osm EEC  %d \n", ExistsEnabledECTran); 
	atomic { 
		if // RuleSet4: ECC transition. Conditions ordered		//todo: negate prev, make choice deterministic
		:: (Q == DoorSensor_START_ecc && trans_START_Wait)  -> Q = DoorSensor_Wait_ecc;
		:: (Q == DoorSensor_Update_ecc && trans_Update_Wait) -> Q = DoorSensor_Wait_ecc;
		:: (Q == DoorSensor_Wait_ecc && trans_Wait_Update && selectEI == DoorSensor_s_REQ)   -> Q = DoorSensor_Update_ecc;
		:: !ExistsEnabledECTran -> goto done;
		:: else -> printf("DoorSensor: No input events to process\n"); 
		fi;
		selectEI = DoorSensor_s_NONE;
	}
	
	printf("DoorSensor:s2_osm, Q=%d\n", Q); 
	s2_osm: //RuleSet6 tracks NI, don't needed. 
	d_step {
		if 
		:: (Q == DoorSensor_START_ecc) -> skip;
		:: (Q == DoorSensor_Update_ecc) -> 
			// action 1
			//algo INIT
			doorOpen[0] = DoorPos[0] == 1;  // RuleSet7 tracks change conditions for output variables. Don't needed.
			doorOpen[1] = DoorPos[1] == 1; 
			doorOpen[2] = DoorPos[2] == 1;
			prevPos[0] = DoorPos[0];
			prevPos[1] = DoorPos[1];
			prevPos[2] = DoorPos[2];
			// NA := NA + 1; RuleSet5
			//emit event
			EO_CNF!true;  // RuleSet8 Emit Event 
			DO_doorOpen!doorOpen[0], doorOpen[1], doorOpen[2]; // RuleSet9 change output data buffer.
		:: (Q == DoorSensor_Wait_ecc) -> skip;
		fi
	}
	
	goto s1_osm;

	
  done: // RuleSet10 
	beta!true;
	goto wait_events;
}



mtype:Sensors_dispatch = {liftSensor_turn, doorSensor_turn, DONE_turn_Sensors};
proctype Sensors(chan EI_INIT, EI_REQ, EO_INITO, EO_CNF,
 	DI_CarPos, DI_DoorPos, DO_ElevatorAtFloor, DO_doorOpen,
 	alpha, beta, phi
 ) {
	bit ExistsInputEvent = 0;
	bit phi_var;
	mtype:Sensors_dispatch dispatch_state = liftSensor_turn;
	bit omega;
	//Event invokedBy;
	Event CNF;

	int CarPos;
	bit DoorPos[3];
	bit ElevatorAtFloor[3];
	bit doorOpen[3];


	chan liftSensor_EI_INIT = [1] of {bit};
	chan liftSensor_EI_REQ = [1] of {bit};
	chan liftSensor_EO_CNF = [1] of {bit};
	chan liftSensor_DI_CarPos = [1] of {int};
	chan liftSensor_DO_ElevatorAtFloor = [1] of {bit, bit, bit};
	chan liftSensor_alpha = [0] of {bit};
	chan liftSensor_beta = [0] of {bit};

	chan doorSensor_EI_INIT = [1] of {bit};
	chan doorSensor_EI_REQ = [1] of {bit};
	chan doorSensor_EO_CNF = [1] of {bit};
	chan doorSensor_DI_DoorPos = [1] of {bit, bit, bit};
	chan doorSensor_DO_DoorOpen = [1] of {bit, bit, bit};
	chan doorSensor_alpha = [0] of {bit};
	chan doorSensor_beta = [0] of {bit};

	
	atomic {
		run LiftSensor(liftSensor_EI_INIT, liftSensor_EI_REQ, liftSensor_EO_CNF, liftSensor_DI_CarPos, liftSensor_DO_ElevatorAtFloor, liftSensor_alpha, liftSensor_beta);
	  	run DoorSensor(doorSensor_EI_INIT, doorSensor_EI_REQ, doorSensor_EO_CNF, doorSensor_DI_DoorPos, doorSensor_DO_DoorOpen, doorSensor_alpha, doorSensor_beta);
	}

	printf("Sensors inititalized\n");


	wait_events: 
  	end: // valid end state
	alpha?true;
	dispatch_state = liftSensor_turn;

read_input_events: 
	ExistsInputEvent = nempty(EI_INIT) || nempty(EI_REQ);
	

	if
	:: d_step { nempty(EI_INIT) ->
		EI_INIT?true
		DI_CarPos?CarPos;
		DI_DoorPos?DoorPos[0],DoorPos[1],DoorPos[2];
		
		printf("Sensors: received EI_INIT\n"); 
		liftSensor_EI_INIT!true;
		liftSensor_DI_CarPos!CarPos
		doorSensor_EI_INIT!true;
		doorSensor_DI_DoorPos!DoorPos[0],DoorPos[1],DoorPos[2];
	}
	:: d_step { nempty(EI_REQ) ->
		EI_REQ?true
		DI_CarPos?CarPos;
		DI_DoorPos?DoorPos[0],DoorPos[1],DoorPos[2];
		printf("Sensors: received EI_REQ\n"); 
		
		liftSensor_EI_REQ!true;
		liftSensor_DI_CarPos!CarPos
		doorSensor_EI_REQ!true;
		doorSensor_DI_DoorPos!DoorPos[0],DoorPos[1],DoorPos[2];
	}
	:: (!ExistsInputEvent) -> skip;
	fi


	// start dispatch
	

  dispatch: 

	if
  	:: atomic { dispatch_state == liftSensor_turn -> 
  			liftSensor_alpha!true;
  			liftSensor_beta?true;
  			dispatch_state = doorSensor_turn;
  	}	
  	:: atomic {  dispatch_state == doorSensor_turn -> 
  		doorSensor_alpha!true;
  		doorSensor_beta?true;
  		dispatch_state=DONE_turn_Sensors;
  	}
  	:: dispatch_state == DONE_turn_Sensors -> skip;
  	fi

  	goto read_component_event_outputs;


  read_component_event_outputs: 
  	omega = empty(liftSensor_EO_CNF) && empty(doorSensor_EO_CNF);
  	
	if
	:: atomic { nempty(liftSensor_EO_CNF) -> 
			liftSensor_EO_CNF?true;
			liftSensor_DO_ElevatorAtFloor?ElevatorAtFloor[0],ElevatorAtFloor[1],ElevatorAtFloor[2];


			CNF.v = true;
			CNF.ts_born = systemclock;
			CNF.ts_last = systemclock;
			if
			:: empty(EO_CNF) -> 
				EO_CNF!CNF;	 
				DO_doorOpen!doorOpen[0],doorOpen[1],doorOpen[2];
			:: nempty(EO_CNF) -> skip;
			fi
			
			DO_ElevatorAtFloor!ElevatorAtFloor[0],ElevatorAtFloor[1],ElevatorAtFloor[2];
			
		}
	:: atomic { nempty(doorSensor_EO_CNF) -> 
			doorSensor_EO_CNF?true;
			doorSensor_DO_DoorOpen?doorOpen[0],doorOpen[1],doorOpen[2];

			CNF.v = true;
			CNF.ts_born = systemclock;
			CNF.ts_last = systemclock;
			if 
			:: empty(EO_CNF) -> 
				EO_CNF!CNF;
				DO_ElevatorAtFloor!ElevatorAtFloor[0],ElevatorAtFloor[1],ElevatorAtFloor[2];
			:: nempty(EO_CNF) -> skip;
			fi 
			DO_doorOpen!doorOpen[0],doorOpen[1],doorOpen[2];
		
	} 
	:: (omega & dispatch_state == DONE_turn_Sensors) -> goto done;
	:: (omega & dispatch_state != DONE_turn_Sensors) -> goto dispatch;
	fi
	goto dispatch;



  done:
	beta!true;
	phi_var = empty(liftSensor_EI_INIT) && empty(liftSensor_EI_REQ) && empty(liftSensor_EO_CNF) && empty(doorSensor_EI_INIT) && empty(doorSensor_EI_REQ) && empty(doorSensor_EO_CNF);
	phi!phi_var;
	goto wait_events;
}

mtype:ControlTS_dispatch = {BasicControl_turn, correctionWait_turn, DONE_turn_ControlTS};
proctype ControlTS(chan 
	EI_INIT, EI_REQ, EI_UPD, EO_CNF,
	DI_ButtonAt, DI_ButtonFor, DI_AtFloor, DI_DoorOpened,
	DO_MoveUp, DO_MoveDown, DO_Open,
	alpha, beta, phi
 ) {
	bit ExistsInputEvent = 0;
	bit phi_var;
	mtype:ControlTS_dispatch dispatch_state = correctionWait_turn;
	bit omega;
	Event invokedBy;

	bit ButtonAt[3];
	bit ButtonFor[3];
	bit AtFloor[3];
	bit DoorOpened[3];
	bit MoveUp;
	bit MoveDown;
	bit Open[3];
	
	
	chan BasicControl_EI_INIT = [1] of {bit};
	chan BasicControl_EI_REQ = [1] of {Event};
	chan BasicControl_EI_POS_TIMEOUT_EXCEED = [1] of {bit};
	chan BasicControl_EO_CNF = [1] of {bit};
	chan BasicControl_EO_POS_TIMEOUT = [1] of {bit};
	chan BasicControl_DI_AtFloor = [1] of {bit, bit, bit};
	chan BasicControl_DI_DoorOpened = [1] of {bit, bit, bit};
	chan BasicControl_DI_Button = [1] of {bit, bit, bit};
	chan BasicControl_DI_Req = [1] of {bit, bit, bit};
	chan BasicControl_DO_liftUp = [1] of {bit};
	chan BasicControl_DO_liftDown = [1] of {bit};
	chan BasicControl_DO_door = [1] of {bit, bit, bit};
	chan BasicControl_alpha = [0] of {bit};
	chan BasicControl_beta = [0] of {bit};

	chan correctionWait_EI_START = [1] of {bit}
	chan correctionWait_EI_STOP = [1] of {bit};
	chan correctionWait_EO_TIMEOUT = [1] of {bit};
	chan correctionWait_DI_Dt = [1] of {int};
	chan correctionWait_alpha = [0] of {bit};
	chan correctionWait_beta = [0] of {bit};

	
	

	atomic {
		run BasicControlTS(
			BasicControl_EI_INIT, BasicControl_EI_REQ, BasicControl_EI_POS_TIMEOUT_EXCEED,
			BasicControl_EO_CNF, BasicControl_EO_POS_TIMEOUT,
	  		BasicControl_DI_AtFloor, BasicControl_DI_DoorOpened, BasicControl_DI_Button, BasicControl_DI_Req,
	   		BasicControl_DO_liftUp, BasicControl_DO_liftDown, BasicControl_DO_door,
	    	BasicControl_alpha, BasicControl_beta
	    );
	  	run E_DELAY(
	  		correctionWait_EI_START, correctionWait_EI_STOP,
	  		correctionWait_EO_TIMEOUT,
	  		correctionWait_DI_Dt,
	  	 	correctionWait_alpha, correctionWait_beta
	  	);
	}

	printf("ControlTS inititalized\n");

  wait_events: 
  	end: // valid end state
	alpha?true;
	dispatch_state = correctionWait_turn;

read_input_events: 
	ExistsInputEvent = nempty(EI_INIT) || nempty(EI_REQ) || nempty(EI_UPD);
	
	// multicast 
	do
	:: d_step { nempty(EI_INIT) ->
		EI_INIT?true
		printf("ControlTS: received EI_INIT\n"); 
		reset(BasicControl_EI_INIT);
		BasicControl_EI_INIT!true;		
	}
	:: d_step { nempty(EI_REQ) ->
		EI_REQ?true
		invokedBy.ts_born = systemclock;
		invokedBy.ts_last = systemclock;
		printf("ControlTS: received EI_REQ\n"); 
		reset3(BasicControl_EI_REQ);
		BasicControl_EI_REQ!invokedBy;
		//
		reset3(BasicControl_DI_AtFloor);
		reset3(BasicControl_DI_DoorOpened);
		BasicControl_DI_AtFloor!AtFloor[0],AtFloor[1],AtFloor[2];
		BasicControl_DI_DoorOpened!DoorOpened[0],DoorOpened[1],DoorOpened[2];
	}
	:: d_step { nempty(EI_UPD) ->
		EI_UPD?invokedBy
		printf("ControlTS: received EI_UPD\n"); 
		reset3(BasicControl_EI_REQ);
		BasicControl_EI_REQ!invokedBy;
	}
	:: d_step { nempty(DI_ButtonAt) -> 
		DI_ButtonAt?ButtonAt[0],ButtonAt[1],ButtonAt[2];
		reset3(BasicControl_DI_Button);
		BasicControl_DI_Button!ButtonAt[0],ButtonAt[1],ButtonAt[2];
	}
	:: d_step { nempty(DI_ButtonFor) -> 
		DI_ButtonFor?ButtonFor[0],ButtonFor[1],ButtonFor[2];
		reset3(BasicControl_DI_Req);
		BasicControl_DI_Req!ButtonFor[0],ButtonFor[1],ButtonFor[2];
	}
	:: d_step { nempty(DI_AtFloor) -> 
		DI_AtFloor?AtFloor[0],AtFloor[1],AtFloor[2];
		reset3(BasicControl_DI_AtFloor);
		BasicControl_DI_AtFloor!AtFloor[0],AtFloor[1],AtFloor[2];
	}
	:: d_step { nempty(DI_DoorOpened) -> 
		DI_DoorOpened?DoorOpened[0],DoorOpened[1],DoorOpened[2];
		reset3(BasicControl_DI_DoorOpened);
		BasicControl_DI_DoorOpened!DoorOpened[0],DoorOpened[1],DoorOpened[2];
	}
	:: else -> break;
	od


	// start dispatch
	

  dispatch: 

	if
  	:: atomic { dispatch_state == correctionWait_turn -> 
  			correctionWait_alpha!true;
  			correctionWait_beta?true;
  			dispatch_state = BasicControl_turn;
  	}	
  	:: atomic {  dispatch_state == BasicControl_turn -> 
  		BasicControl_alpha!true;
  		BasicControl_beta?true;
  		dispatch_state=DONE_turn_ControlTS;
  	}
  	:: dispatch_state == DONE_turn_ControlTS -> skip;
  	fi

  	goto read_component_event_outputs;


  read_component_event_outputs: 
  	omega = empty(correctionWait_EO_TIMEOUT) && empty(BasicControl_EO_CNF) && empty(BasicControl_EO_POS_TIMEOUT);
  	
	if
	:: d_step { nempty(correctionWait_EO_TIMEOUT) -> 
			correctionWait_EO_TIMEOUT?true;
			BasicControl_EI_POS_TIMEOUT_EXCEED!true;
		}
	:: d_step { nempty(BasicControl_EO_CNF) -> 
		BasicControl_EO_CNF?true
		BasicControl_DO_liftUp?MoveUp;
		BasicControl_DO_liftDown?MoveDown;
		BasicControl_DO_door?Open[0],Open[1],Open[2];

		EO_CNF!true;
		DO_MoveUp!MoveUp
		DO_MoveDown!MoveDown
		DO_Open!Open[0],Open[1],Open[2];
	} 
	:: d_step { nempty(BasicControl_EO_POS_TIMEOUT) -> 
		BasicControl_EO_POS_TIMEOUT?true;
		correctionWait_EI_START!true;
		correctionWait_DI_Dt!(systemclock - invokedBy.ts_born);
	}
	:: (omega & dispatch_state == DONE_turn_ControlTS) -> goto done;
	:: (omega & dispatch_state != DONE_turn_ControlTS) -> goto dispatch;
	fi
	goto read_component_event_outputs;



  done:
	beta!true;
	phi_var = empty(BasicControl_EI_INIT) && empty(BasicControl_EI_REQ) && empty(BasicControl_EI_POS_TIMEOUT_EXCEED) && empty(BasicControl_EO_POS_TIMEOUT) && empty(BasicControl_EO_CNF) && empty(correctionWait_EI_START) && empty(correctionWait_EI_STOP) && empty(correctionWait_EO_TIMEOUT);
	phi!phi_var;
	//phi!(Controller_phi_var && Sensors_phi_var && empty(Controller_EI_INIT) && empty(Controller_EO_CNF) && empty(Sensors_EI_INIT) && empty(Sensors_EO_INITO) && empty(Model_EI_INIT) && empty(Model_EO_INITO));
	goto wait_events;


}

typedef Cell {
	Event e;
	bit doorOpen[3];
	bit ElevatorAtFloor[3];

}

int DataDelayQueue_Di = -1;
proctype DataDelayQueue(chan
	EI_CNF, DI_ElevatorAtFloor, DI_doorOpen,
	EO_CNF, DO_ElevatorAtFloor, DO_doorOpen
	) {

	Cell cells[3];
	byte cnt = 0;
	byte head = 0;
	byte tail = 0;
	byte maxCnt = 3;

	wait_events: 
	end: 
	atomic{
		if
		:: nempty(EI_CNF) && (cnt < maxCnt) -> 
			EI_CNF?cells[tail].e;
			DI_ElevatorAtFloor?cells[tail].ElevatorAtFloor[0],cells[tail].ElevatorAtFloor[1],cells[tail].ElevatorAtFloor[2];
			DI_doorOpen?cells[tail].doorOpen[0],cells[tail].doorOpen[1],cells[tail].doorOpen[2];
			tail = (tail + 1) % maxCnt;
			if
			:: cnt > 0 -> skip;
			:: cnt == 0 -> DataDelayQueue_Di = 0; // Dt 
			:: cnt == 0 -> DataDelayQueue_Di = 1; // Dt 
			:: cnt == 0 -> DataDelayQueue_Di = 2; // Dt 
			fi 
			cnt = cnt + 1;
			printf("DataDelayQueue: cnt=%d, head=%d, tail=%d\n", cnt, head, tail);
		:: nempty(EI_CNF) && (cnt >= maxCnt) -> 
			reset(EI_CNF);
			reset3(DI_ElevatorAtFloor); 
			reset3(DI_doorOpen);
			printf("Warning: Message dropped in DataDelayQueue\n");
		:: DataDelayQueue_Di == 0 -> 
			EO_CNF!cells[head].e;
			DO_ElevatorAtFloor!cells[head].ElevatorAtFloor[0],cells[head].ElevatorAtFloor[1],cells[head].ElevatorAtFloor[2];
			DO_doorOpen!cells[head].doorOpen[0],cells[head].doorOpen[1],cells[head].doorOpen[2];
			printf("1:head=%d\n", head);
			head = (head + 1) % maxCnt;
			printf("2:head=%d\n", head);
			cnt = cnt - 1;
			if 
			:: cnt > 0 -> DataDelayQueue_Di = 0; // Dt
			:: cnt > 0 -> DataDelayQueue_Di = 1; // Dt
			:: cnt > 0 -> DataDelayQueue_Di = 2; // Dt
			:: cnt == 0 -> DataDelayQueue_Di = -1; 
			fi  
		fi	
	}
	goto wait_events;
	

}


mtype:Elevator_dispatch = {Controller_turn, Sensors_turn, Model_turn, DONE_turn_Elevator};
proctype Elevator(chan EI_INIT, EO_INITO, alpha, beta, phi) {

	bit ExistsInputEvent = 0;
	bit omega = 0;
	bit phi_var = 0;

	mtype:Elevator_dispatch dispatch_state = Model_turn; // don't conforms to formal model

	chan Controller_EI_INIT = [1] of {bit};
	chan Controller_EI_REQ = [1] of {bit};
	chan Controller_EI_UPD = [1] of {Event};
	chan Controller_EO_CNF = [1] of {bit};
	chan Controller_DI_ButtonAt = [1] of {bit, bit, bit};
	chan Controller_DI_ButtonFor = [1] of {bit, bit, bit};
	chan Controller_DI_AtFloor = [1] of {bit, bit, bit};
	chan Controller_DI_DoorOpened = [1] of {bit, bit, bit};
	chan Controller_DO_MoveUp = [1] of {bit};
	chan Controller_DO_MoveDown = [1] of {bit};
	chan Controller_DO_Open = [1] of {bit, bit, bit};
	chan Controller_alpha = [0] of {bit};
	chan Controller_beta = [0] of {bit};
	chan Controller_phi = [0] of {bit};
	bit Controller_phi_var = 0;

	bit buf_Controller_ButtonAt[3];
	bit buf_Controller_ButtonFor[3];
	bit buf_Controller_AtFloor[3];
	bit buf_Controller_DoorOpened[3];
	bit buf_Controller_MoveUp;
	bit buf_Controller_MoveDown;
	bit buf_Controller_Open[3];

	chan Sensors_EI_INIT = [1] of {bit};
	chan Sensors_EI_REQ = [1] of {bit};
	chan Sensors_EO_INITO = [1] of {bit};
	chan Sensors_EO_CNF = [1] of {Event};
	chan Sensors_DI_CarPos = [1] of {int};
	chan Sensors_DI_DoorPos = [1] of {bit, bit, bit};
	chan Sensors_DO_ElevatorAtFloor = [1] of {bit, bit, bit};
	chan Sensors_DO_doorOpen = [1] of {bit, bit, bit};
	chan Sensors_alpha = [0] of {bit};
	chan Sensors_beta = [0] of {bit};
	chan Sensors_phi = [0] of {bit};
	bit Sensors_phi_var = 0;
	bit buf_Sensors_ElevatorAtFloor[3];
	bit buf_Sensors_doorOpen[3];
	Event buf_Sensors_CNF;

	chan Model_EI_INIT = [1] of {bit};
	chan Model_EI_REQ = [1] of {bit};
	chan Model_EO_INITO = [1] of {bit};
	chan Model_EO_CNF = [1] of {bit};
	chan Model_EO_UPD = [1] of {bit};
 	chan Model_DI_motorUp = [1] of {bit};
 	chan Model_DI_motorDown = [1] of {bit};
 	chan Model_DI_door = [1] of {bit, bit, bit};
 	chan Model_DO_buttonFloor = [1] of {bit, bit, bit};
 	chan Model_DO_requestFloor = [1] of {bit, bit, bit};
 	chan Model_DO_CarPos = [1] of {int};
 	chan Model_DO_doorPos = [1] of {bit, bit, bit};
	chan Model_alpha = [0] of {bit};
	chan Model_beta = [0] of {bit};

	bit buf_Model_buttonFloor[3];
	bit buf_Model_requestFloor[3];
	int buf_Model_CarPos;
	bit buf_Model_doorPos[3];

	chan DataDelayQueue_EO_CNF = [1] of {Event};
	chan DataDelayQueue_DO_ElevatorAtFloor = [1] of {bit, bit, bit};
	chan DataDelayQueue_DO_doorOpen = [1] of {bit, bit, bit};

	buf_Controller_AtFloor[0] = initialFloor == f1;
	buf_Controller_AtFloor[1] = initialFloor == f2;
	buf_Controller_AtFloor[2] = initialFloor == f3;

	atomic {
		run ControlTS(Controller_EI_INIT, Controller_EI_REQ, Controller_EI_UPD, Controller_EO_CNF,
			Controller_DI_ButtonAt, Controller_DI_ButtonFor, Controller_DI_AtFloor, Controller_DI_DoorOpened, 
			Controller_DO_MoveUp, Controller_DO_MoveDown, Controller_DO_Open,
		 	Controller_alpha, Controller_beta, Controller_phi
		 );
		Model_id = run Model(Model_EI_INIT, Model_EI_REQ, Model_EO_INITO, Model_EO_CNF, Model_EO_UPD, Model_DI_motorUp, Model_DI_motorDown, Model_DI_door, Model_DO_buttonFloor, Model_DO_requestFloor, Model_DO_CarPos, Model_DO_doorPos, Model_alpha, Model_beta);
		run DataDelayQueue(Sensors_EO_CNF, Sensors_DO_ElevatorAtFloor, Sensors_DO_doorOpen, DataDelayQueue_EO_CNF, DataDelayQueue_DO_ElevatorAtFloor, DataDelayQueue_DO_doorOpen);
		run Sensors(Sensors_EI_INIT, Sensors_EI_REQ, Sensors_EO_INITO, Sensors_EO_CNF, Sensors_DI_CarPos, Sensors_DI_DoorPos, Sensors_DO_ElevatorAtFloor, Sensors_DO_doorOpen, Sensors_alpha, Sensors_beta, Sensors_phi);
	}
	printf("Elevator inititalized\n");

  wait_events: 
  	end: // valid end state
	alpha?true;
	dispatch_state = Model_turn;
	printf("Elevator active\n");
  read_input_events: 
	ExistsInputEvent = nempty(EI_INIT);

	if
	:: d_step {nempty(EI_INIT) ->
		EI_INIT?true
		printf("Elevator: received EI_INIT\n"); 
		reset(Controller_EI_INIT);
		reset3(Controller_DI_ButtonAt);
		reset3(Controller_DI_ButtonFor);
		reset3(Controller_DI_AtFloor);
		reset3(Controller_DI_DoorOpened);
		Controller_EI_INIT!true;
		Controller_DI_ButtonAt!buf_Controller_ButtonAt[0],buf_Controller_ButtonAt[1],buf_Controller_ButtonAt[2];
		Controller_DI_ButtonFor!buf_Controller_ButtonFor[0],buf_Controller_ButtonFor[1],buf_Controller_ButtonFor[2];
		Controller_DI_AtFloor!buf_Controller_AtFloor[0],buf_Controller_AtFloor[1],buf_Controller_AtFloor[2];
		Controller_DI_DoorOpened!buf_Controller_DoorOpened[0],buf_Controller_DoorOpened[1],buf_Controller_DoorOpened[2];

		reset(Model_EI_INIT);
		Model_EI_INIT!true;

	}
	:: (!ExistsInputEvent) -> skip;
	fi


	// start dispatch
  dispatch: 
   
	if 		
  	:: atomic { dispatch_state == Model_turn -> 
  			Model_alpha!true;
  			Model_beta?true;
  			dispatch_state = Sensors_turn;
  		}
  	:: atomic { dispatch_state == Sensors_turn  -> 
  		Sensors_alpha!true;
  		Sensors_beta?true;
  		Sensors_phi?Sensors_phi_var;
  		dispatch_state = Controller_turn;
  		
  	}	
  	:: atomic { dispatch_state == Controller_turn -> 
  		Controller_alpha!true;
  		Controller_beta?true;
  		Controller_phi?Controller_phi_var;
  		dispatch_state = DONE_turn_Elevator;
  	 }
  	:: dispatch_state == DONE_turn_Elevator -> skip;
  	fi
  	
  	goto read_component_event_outputs;


  read_component_event_outputs: 
  	atomic {
	  	omega = empty(Model_EO_INITO) && empty(Model_EO_UPD) && empty(Model_EO_CNF) && empty(Sensors_EO_INITO) && (empty(DataDelayQueue_EO_CNF) || nempty(Controller_EI_UPD) ) && empty(Controller_EO_CNF);

	  	// todo multicast
		if
		:: nempty(Model_EO_INITO) -> 
				Model_EO_INITO?true;
				Model_DO_CarPos?buf_Model_CarPos;
				Model_DO_doorPos?buf_Model_doorPos[0],buf_Model_doorPos[1],buf_Model_doorPos[2];
				
				reset(Sensors_EI_INIT);
				reset(Sensors_DI_CarPos);
				reset3(Sensors_DI_DoorPos);
				Sensors_EI_INIT!true;
				Sensors_DI_CarPos!buf_Model_CarPos;
				Sensors_DI_DoorPos!buf_Model_doorPos[0],buf_Model_doorPos[1],buf_Model_doorPos[2];
			
		:: nempty(Model_EO_UPD) -> 
			Model_EO_UPD?true;
			Model_DO_CarPos?buf_Model_CarPos;
			Model_DO_doorPos?buf_Model_doorPos[0],buf_Model_doorPos[1],buf_Model_doorPos[2];
			Model_DO_buttonFloor?buf_Model_buttonFloor[0],buf_Model_buttonFloor[1],buf_Model_buttonFloor[2];

			reset(Sensors_EI_REQ);
			reset(Sensors_DI_CarPos);
			reset3(Sensors_DI_DoorPos);
			reset3(Controller_DI_ButtonAt);
			Sensors_EI_REQ!true;
			Sensors_DI_CarPos!buf_Model_CarPos;
			Sensors_DI_DoorPos!buf_Model_doorPos[0],buf_Model_doorPos[1],buf_Model_doorPos[2];
			Controller_DI_ButtonAt!buf_Model_buttonFloor[0],buf_Model_buttonFloor[1],buf_Model_buttonFloor[2];
		
		:: nempty(Model_EO_CNF)  -> 
				Model_EO_CNF?true;
				Model_DO_requestFloor?buf_Model_requestFloor[0],buf_Model_requestFloor[1],buf_Model_requestFloor[2];
				Model_DO_buttonFloor?buf_Model_buttonFloor[0],buf_Model_buttonFloor[1],buf_Model_buttonFloor[2];
				
				reset(Controller_EI_REQ);
				reset3(Controller_DI_ButtonFor);
				reset3(Controller_DI_ButtonAt);
				Controller_EI_REQ!true;
				Controller_DI_ButtonFor!buf_Model_requestFloor[0],buf_Model_requestFloor[1],buf_Model_requestFloor[2];
				Controller_DI_ButtonAt!buf_Model_buttonFloor[0],buf_Model_buttonFloor[1],buf_Model_buttonFloor[2];

		
		:: nempty(Sensors_EO_INITO) -> 
			Sensors_EO_INITO?true;
		
		:: nempty(DataDelayQueue_EO_CNF) && empty(Controller_EI_UPD) -> // && empty(Controller_EI_REQ) –– no overwrite, data loss
			DataDelayQueue_EO_CNF?buf_Sensors_CNF;
			DataDelayQueue_DO_doorOpen?buf_Sensors_doorOpen[0],buf_Sensors_doorOpen[1],buf_Sensors_doorOpen[2];
			DataDelayQueue_DO_ElevatorAtFloor?buf_Sensors_ElevatorAtFloor[0],buf_Sensors_ElevatorAtFloor[1],buf_Sensors_ElevatorAtFloor[2];


			reset3(Controller_EI_UPD);
			reset3(Controller_DI_DoorOpened);
			reset3(Controller_DI_AtFloor);
			reset3(Controller_DI_ButtonFor);
			reset3(Controller_DI_ButtonAt);
			Controller_EI_UPD!buf_Sensors_CNF; 
			Controller_DI_DoorOpened!buf_Sensors_doorOpen[0],buf_Sensors_doorOpen[1],buf_Sensors_doorOpen[2];
			Controller_DI_AtFloor!buf_Sensors_ElevatorAtFloor[0],buf_Sensors_ElevatorAtFloor[1],buf_Sensors_ElevatorAtFloor[2];
			Controller_DI_ButtonFor!buf_Model_requestFloor[0],buf_Model_requestFloor[1],buf_Model_requestFloor[2];
			Controller_DI_ButtonAt!buf_Model_buttonFloor[0],buf_Model_buttonFloor[1],buf_Model_buttonFloor[2];
		
		:: nempty(Controller_EO_CNF) -> 
			Controller_EO_CNF?true;
			Controller_DO_Open?buf_Controller_Open[0],buf_Controller_Open[1],buf_Controller_Open[2];
			Controller_DO_MoveDown?buf_Controller_MoveDown;
			Controller_DO_MoveUp?buf_Controller_MoveUp;

			reset(Model_EI_REQ);
			reset3(Model_DI_door);
			reset(Model_DI_motorDown);
			reset(Model_DI_motorUp);
			Model_EI_REQ!true;
			Model_DI_door!buf_Controller_Open[0],buf_Controller_Open[1],buf_Controller_Open[2];
			Model_DI_motorDown!buf_Controller_MoveDown;
			Model_DI_motorUp!buf_Controller_MoveUp;
		:: (omega && dispatch_state == DONE_turn_Elevator) -> goto done;
		:: (omega && dispatch_state != DONE_turn_Elevator) -> 
			printf("omega && dispatch_state != DONE \n");
			goto dispatch;
		fi
  	}
	goto read_component_event_outputs;



  done:
  	atomic {
		beta!true;
		phi_var = !(BasicControlTS_waits && tripsCnt < MaxTrips) && Controller_phi_var && Sensors_phi_var && empty(DataDelayQueue_EO_CNF) && empty(Controller_EI_INIT) && empty(Controller_EI_REQ) && empty(Controller_EI_UPD) && empty(Controller_EO_CNF) && empty(Sensors_EI_REQ) && empty(Sensors_EI_INIT) && empty(Sensors_EO_INITO) && empty(Sensors_EO_CNF) && empty(Model_EI_INIT) && empty(Model_EI_REQ) && empty(Model_EO_CNF) && empty(Model_EO_UPD) && empty(Model_EO_INITO);
		phi!phi_var;
	}
	goto wait_events;

}


bit complete = 0;

/*active proctype monitor() {
	atomic {
		//complete -> assert(res == 3);
	}
}*/
int Tmax = 40;

init {
	int lastpid;
	bit phi = 0;
	bit gamma = 0;
	int minDi;
	chan Elevator_EI_INIT = [1] of {bit};
	chan Elevator_EO_INITO = [1] of {bit};
	chan Elevator_alpha = [0] of {bit};
	chan Elevator_beta = [0] of {bit};
	chan Elevator_phi = [0] of {bit};

	if 
	:: true -> initialFloor = f1;
	:: true -> initialFloor = f2;
	:: true -> initialFloor = f3;
	fi

	printf("initialFloor = %d\n", initialFloor);
	atomic {
	 run Elevator(Elevator_EI_INIT, Elevator_EO_INITO, Elevator_alpha, Elevator_beta, Elevator_phi);
	 Elevator_EI_INIT!true;
	}


	printf("Init: send alpha\n");
	dispatch: 
	Elevator_alpha!true;
	//do 
	//:: Elevator_beta?true -> Elevator_alpha!true
	//:: timeout -> break;
	//od 
	Elevator_beta?true;

	atomic { 
		Elevator_phi?phi;
		gamma = empty(Elevator_EI_INIT) && phi;

		if
		:: gamma -> goto timeScheduler;
		:: else -> goto dispatch;
		fi

		
		timeScheduler:

		printf("systemclock=%d, minDi=%d, Model_Di=%d, E_DELAY_Di=%d, DataDelayQueue_Di=%d\n", systemclock, minDi, Model_Di, E_DELAY_Di, DataDelayQueue_Di);
		if 
		:: Model_Di == 0 || E_DELAY_Di == 0 || DataDelayQueue_Di == 0 -> goto dispatch;
		:: else -> skip;
		fi 
		if 
		:: Model_Di >= 0 && (systemclock < Tmax) -> minDi = Model_Di;
		:: E_DELAY_Di >= 0 && (systemclock < Tmax) -> minDi = E_DELAY_Di;
		:: DataDelayQueue_Di >= 0 && (systemclock < Tmax) -> minDi = DataDelayQueue_Di;
		:: else -> minDi = -1; goto done;
		fi 

		if 
		:: Model_Di < minDi && Model_Di > 0 -> minDi = Model_Di;
		:: else -> skip;
		fi 
		if 
		:: E_DELAY_Di < minDi && E_DELAY_Di > 0 -> minDi = E_DELAY_Di;
		:: else -> skip;
		fi 
		if 
		:: DataDelayQueue_Di < minDi && DataDelayQueue_Di > 0 -> minDi = DataDelayQueue_Di;
		:: else -> skip;
		fi

		if 
		:: Model_Di > 0 -> Model_Di = Model_Di - minDi;
		:: else -> skip; 
		fi 
		if 
		:: E_DELAY_Di > 0 -> E_DELAY_Di = E_DELAY_Di - minDi;
		:: else -> skip; 
		fi 
		if 
		:: DataDelayQueue_Di > 0 -> DataDelayQueue_Di = DataDelayQueue_Di - minDi;
		:: else -> skip; 
		fi 
		

		systemclock = systemclock + minDi;
		printf("systemclock=%d, minDi=%d, Model_Di=%d, E_DELAY_Di=%d, DataDelayQueue_Di=%d\n", systemclock, minDi, Model_Di, E_DELAY_Di, DataDelayQueue_Di);
	}
	goto dispatch;

	done: 
	printf("Finished\n");
	complete = 1;
}

//ltl response2 { [](!Model_buttonFloor[1])}
//ltl response3 { <>(Model_buttonFloor[2])}

ltl safety1 { [] (Model_doorState[0] -> (Model_position == f1))}
//ltl safety2 { [] (Model_doorState[1] -> (Model_position == f2))}
//ltl safety3 { [] (Model_doorState[2] -> (Model_position == f3))}
//ltl response1 { [] (Model_buttonFloor[0] -> <> (Model_doorState[0] && Model_position == f1))}
//ltl response2 { [] (Model_buttonFloor[1] -> <> (Model_doorState[1] && Model_position == f2))}
//ltl response3 { [] (Model_buttonFloor[2] -> <> (Model_doorState[2] && Model_position == f3))}
//ltl liveness1 {<>(Model_buttonFloor[0] || Model_buttonFloor[1] || Model_buttonFloor[2])}

//ltl response2 { [] (Model_buttonFloor[1] -> <> (Model_position == f2))}