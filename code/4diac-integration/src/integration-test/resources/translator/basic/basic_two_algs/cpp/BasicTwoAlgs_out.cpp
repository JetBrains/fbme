#include "TwoAlgs.h"
#ifdef FORTE_ENABLE_GENERATED_SOURCE_CPP
#include "TwoAlgs_gen.cpp"
#endif

#include "forte_int.h"
#include "forte_bool.h"
#include "forte_string.h"
#include "forte_array_at.h"

DEFINE_FIRMWARE_FB(FORTE_TwoAlgs, g_nStringIdTwoAlgs)

const CStringDictionary::TStringId FORTE_TwoAlgs::scm_anDataInputNames[] = {g_nStringIdvariable_input_int};

const CStringDictionary::TStringId FORTE_TwoAlgs::scm_anDataInputTypeIds[] = {g_nStringIdINT};

const CStringDictionary::TStringId FORTE_TwoAlgs::scm_anDataOutputNames[] = {g_nStringIdvariable_output_bool, g_nStringIdvariable_output_int};

const CStringDictionary::TStringId FORTE_TwoAlgs::scm_anDataOutputTypeIds[] = {g_nStringIdBOOL, g_nStringIdINT};

const TDataIOID FORTE_TwoAlgs::scm_anEIWith[] = {0, 255};
const TForteInt16 FORTE_TwoAlgs::scm_anEIWithIndexes[] = {0, -1};
const CStringDictionary::TStringId FORTE_TwoAlgs::scm_anEventInputNames[] = {g_nStringIdevent_input1, g_nStringIdevent_input2};

const TDataIOID FORTE_TwoAlgs::scm_anEOWith[] = {0, 255};
const TForteInt16 FORTE_TwoAlgs::scm_anEOWithIndexes[] = {0};
const CStringDictionary::TStringId FORTE_TwoAlgs::scm_anEventOutputNames[] = {g_nStringIdevent_output1};


const SFBInterfaceSpec FORTE_TwoAlgs::scm_stFBInterfaceSpec = {
  2, scm_anEventInputNames, scm_anEIWith, scm_anEIWithIndexes,
  1, scm_anEventOutputNames, scm_anEOWith, scm_anEOWithIndexes,
  1, scm_anDataInputNames, scm_anDataInputTypeIds,
  2, scm_anDataOutputNames, scm_anDataOutputTypeIds,
  0, nullptr
};

const CStringDictionary::TStringId FORTE_TwoAlgs::scm_anInternalsNames[] = {g_nStringIdinternal_variable1};
const CStringDictionary::TStringId FORTE_TwoAlgs::scm_anInternalsTypeIds[] = {g_nStringIdSTRING};
const SInternalVarsInformation FORTE_TwoAlgs::scm_stInternalVars = {1, scm_anInternalsNames, scm_anInternalsTypeIds};

void FORTE_TwoAlgs::setInitialValues() {
}

void FORTE_TwoAlgs::alg_algorithm1(void) {
  CIEC_INT st_delta;
  st_delta = 4;
  st_variable_output_bool() = true;
  st_variable_output_int() = ADD(st_delta, 7);
}

void FORTE_TwoAlgs::alg_ALG_Var2(void) {
  CIEC_BOOL st_tmpVar;
  CIEC_STRING st_tmpVar2;
  st_tmpVar = true;
  st_tmpVar2 = "novalue";
  st_variable_output_bool() = false;
  st_variable_output_int() = 0;
}

void FORTE_TwoAlgs::enterStateSTART(void) {
  m_nECCState = scm_nStateSTART;
}

void FORTE_TwoAlgs::enterStateSTOP(void) {
  m_nECCState = scm_nStateSTOP;
}

void FORTE_TwoAlgs::enterStateEVAL(void) {
  m_nECCState = scm_nStateEVAL;
  alg_algorithm1();
  sendOutputEvent(scm_nEventevent_output1ID);
}

void FORTE_TwoAlgs::enterStateEVAL2(void) {
  m_nECCState = scm_nStateEVAL2;
  alg_ALG_Var2();
  sendOutputEvent(scm_nEventevent_output1ID);
}


void FORTE_TwoAlgs::executeEvent(int pa_nEIID){
  bool bTransitionCleared;
  do {
    bTransitionCleared = true;
    switch(m_nECCState) {
      case scm_nStateSTART:
        if(1)
          enterStateSTOP();
        else
        if(scm_nEventevent_input1ID == pa_nEIID)
          enterStateEVAL();
        else
        if(scm_nEventevent_input2ID == pa_nEIID)
          enterStateEVAL2();
        else
          bTransitionCleared  = false; //no transition cleared
        break;
      case scm_nStateSTOP:
          bTransitionCleared  = false; //no transition cleared
        break;
      case scm_nStateEVAL:
          bTransitionCleared  = false; //no transition cleared
        break;
      case scm_nStateEVAL2:
          bTransitionCleared  = false; //no transition cleared
        break;
      default:
        DEVLOG_ERROR("The state is not in the valid range! The state value is: %d. The max value can be: 4.", m_nECCState.operator TForteUInt16 ());
        m_nECCState = 0; // 0 is always the initial state
        break;
    }
    pa_nEIID = cg_nInvalidEventID; // we have to clear the event after the first check in order to ensure correct behavior
  } while(bTransitionCleared);
}


