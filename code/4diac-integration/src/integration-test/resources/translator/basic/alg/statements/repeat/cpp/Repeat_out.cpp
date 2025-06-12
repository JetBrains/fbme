#include "Repeat.h"
#ifdef FORTE_ENABLE_GENERATED_SOURCE_CPP
#include "Repeat_gen.cpp"
#endif

#include "forte_int.h"
#include "forte_array_at.h"

DEFINE_FIRMWARE_FB(FORTE_Repeat, g_nStringIdRepeat)




const TForteInt16 FORTE_Repeat::scm_anEOWithIndexes[] = {-1};
const CStringDictionary::TStringId FORTE_Repeat::scm_anEventOutputNames[] = {g_nStringIdEO1};


const SFBInterfaceSpec FORTE_Repeat::scm_stFBInterfaceSpec = {
  0, nullptr, nullptr, nullptr,
  1, scm_anEventOutputNames, nullptr, scm_anEOWithIndexes,
  0, nullptr, nullptr,
  0, nullptr, nullptr,
  0, nullptr
};

void FORTE_Repeat::alg_A1(void) {
  CIEC_INT st_Index;
  CIEC_INT st_Sum;
  st_Index = 0;
  st_Sum = 0;
  do {
    st_Sum = ADD(st_Sum, st_Index);
    st_Index = ADD(st_Index, 1);
  } while(!(((st_Index >= 10))));
}


void FORTE_Repeat::enterStateSTART(void) {
  m_nECCState = scm_nStateSTART;
}

void FORTE_Repeat::enterStateS2(void) {
  m_nECCState = scm_nStateS2;
  alg_A1();
  sendOutputEvent(scm_nEventEO1ID);
}


void FORTE_Repeat::executeEvent(int pa_nEIID){
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


