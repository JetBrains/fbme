#include "Assignment.h"
#ifdef FORTE_ENABLE_GENERATED_SOURCE_CPP
#include "Assignment_gen.cpp"
#endif

#include "forte_int.h"
#include "forte_array_at.h"

DEFINE_FIRMWARE_FB(FORTE_Assignment, g_nStringIdAssignment)


const CStringDictionary::TStringId FORTE_Assignment::scm_anDataOutputNames[] = {g_nStringIdout};

const CStringDictionary::TStringId FORTE_Assignment::scm_anDataOutputTypeIds[] = {g_nStringIdINT};


const TDataIOID FORTE_Assignment::scm_anEOWith[] = {0, 255};
const TForteInt16 FORTE_Assignment::scm_anEOWithIndexes[] = {0};
const CStringDictionary::TStringId FORTE_Assignment::scm_anEventOutputNames[] = {g_nStringIdEO1};


const SFBInterfaceSpec FORTE_Assignment::scm_stFBInterfaceSpec = {
  0, nullptr, nullptr, nullptr,
  1, scm_anEventOutputNames, scm_anEOWith, scm_anEOWithIndexes,
  0, nullptr, nullptr,
  1, scm_anDataOutputNames, scm_anDataOutputTypeIds,
  0, nullptr
};

void FORTE_Assignment::setInitialValues() {
}

void FORTE_Assignment::alg_A1(void) {
  CIEC_INT st_t;
  st_t = 6;
  st_out() = 4;
}


void FORTE_Assignment::enterStateSTART(void) {
  m_nECCState = scm_nStateSTART;
}

void FORTE_Assignment::enterStateSTATE2(void) {
  m_nECCState = scm_nStateSTATE2;
  alg_A1();
  sendOutputEvent(scm_nEventEO1ID);
}


void FORTE_Assignment::executeEvent(int pa_nEIID){
  bool bTransitionCleared;
  do {
    bTransitionCleared = true;
    switch(m_nECCState) {
      case scm_nStateSTART:
        if(1)
          enterStateSTATE2();
        else
          bTransitionCleared  = false; //no transition cleared
        break;
      case scm_nStateSTATE2:
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


