#include "Case.h"
#ifdef FORTE_ENABLE_GENERATED_SOURCE_CPP
#include "Case_gen.cpp"
#endif


DEFINE_FIRMWARE_FB(FORTE_Case, g_nStringIdCase)

const CStringDictionary::TStringId FORTE_Case::scm_anDataInputNames[] = {g_nStringIdin};

const CStringDictionary::TStringId FORTE_Case::scm_anDataInputTypeIds[] = {g_nStringIdINT};

const CStringDictionary::TStringId FORTE_Case::scm_anDataOutputNames[] = {g_nStringIdout};

const CStringDictionary::TStringId FORTE_Case::scm_anDataOutputTypeIds[] = {g_nStringIdBOOL};


const TForteInt16 FORTE_Case::scm_anEOWithIndexes[] = {-1};
const CStringDictionary::TStringId FORTE_Case::scm_anEventOutputNames[] = {g_nStringIdEO1};


const SFBInterfaceSpec FORTE_Case::scm_stFBInterfaceSpec = {
  0, nullptr, nullptr, nullptr,
  1, scm_anEventOutputNames, nullptr, scm_anEOWithIndexes,
  1, scm_anDataInputNames, scm_anDataInputTypeIds,
  1, scm_anDataOutputNames, scm_anDataOutputTypeIds,
  0, nullptr
};

void FORTE_Case::setInitialValues() {
}

void FORTE_Case::alg_A1(void) {
  switch (st_in()) {
  	case 0:
  		st_out() = false;
  		break;
  	case 1:
  		st_out() = true;
  		break;
  	case 2:
  		st_out() = true;
  		break;
  	default:
  		st_out() = false;
  		break;
  }
}


void FORTE_Case::enterStateSTART(void) {
  m_nECCState = scm_nStateSTART;
}

void FORTE_Case::enterStateS2(void) {
  m_nECCState = scm_nStateS2;
  alg_A1();
  sendOutputEvent(scm_nEventEO1ID);
}


void FORTE_Case::executeEvent(int pa_nEIID){
  bool bTransitionCleared;
  do {
    bTransitionCleared = true;
    switch(m_nECCState) {
      case scm_nStateSTART:
        if(1)
          enterStateS2();
        else
          bTransitionCleared  = false; //no transition cleared
        break;
      case scm_nStateS2:
          bTransitionCleared  = false; //no transition cleared
        break;
      default:
        DEVLOG_ERROR("The state is not in the valid range! The state value is: %d. The max value can be: 2.", m_nECCState.operator TForteUInt16 ());
        m_nECCState = 0; // 0 is always the initial state
        break;
    }
    pa_nEIID = cg_nInvalidEventID; // we have to clear the event after the first check in order to ensure correct behavior
  } while(bTransitionCleared);
}


