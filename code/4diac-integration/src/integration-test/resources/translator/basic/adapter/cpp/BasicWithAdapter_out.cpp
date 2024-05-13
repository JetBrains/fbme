#include "BasicWithAdapter.h"
#ifdef FORTE_ENABLE_GENERATED_SOURCE_CPP
#include "BasicWithAdapter_gen.cpp"
#endif

#include "forte_array_at.h"

DEFINE_FIRMWARE_FB(FORTE_BasicWithAdapter, g_nStringIdBasicWithAdapter)

const CStringDictionary::TStringId FORTE_BasicWithAdapter::scm_anDataInputNames[] = {g_nStringIdQI};

const CStringDictionary::TStringId FORTE_BasicWithAdapter::scm_anDataInputTypeIds[] = {g_nStringIdBOOL};

const CStringDictionary::TStringId FORTE_BasicWithAdapter::scm_anDataOutputNames[] = {g_nStringIdQO};

const CStringDictionary::TStringId FORTE_BasicWithAdapter::scm_anDataOutputTypeIds[] = {g_nStringIdBOOL};

const TForteInt16 FORTE_BasicWithAdapter::scm_anEIWithIndexes[] = {-1};
const CStringDictionary::TStringId FORTE_BasicWithAdapter::scm_anEventInputNames[] = {g_nStringIdINIT};

const TForteInt16 FORTE_BasicWithAdapter::scm_anEOWithIndexes[] = {-1};
const CStringDictionary::TStringId FORTE_BasicWithAdapter::scm_anEventOutputNames[] = {g_nStringIdINITO};

const SAdapterInstanceDef FORTE_BasicWithAdapter::scm_astAdapterInstances[] = {
  {g_nStringIdAdapt, g_nStringIdSOCKET1, false},
  {g_nStringIdAdapt, g_nStringIdPLUG1, true}
};

const SFBInterfaceSpec FORTE_BasicWithAdapter::scm_stFBInterfaceSpec = {
  1, scm_anEventInputNames, nullptr, scm_anEIWithIndexes,
  1, scm_anEventOutputNames, nullptr, scm_anEOWithIndexes,
  1, scm_anDataInputNames, scm_anDataInputTypeIds,
  1, scm_anDataOutputNames, scm_anDataOutputTypeIds,
  2, scm_astAdapterInstances
};

void FORTE_BasicWithAdapter::setInitialValues() {
}

void FORTE_BasicWithAdapter::alg_initialize(void) {
  st_QO() = st_QI();
}

void FORTE_BasicWithAdapter::alg_normalOp(void) {
  st_QO() = st_QI();
}

void FORTE_BasicWithAdapter::alg_deInitialize(void) {
  st_QO() = false;
}


void FORTE_BasicWithAdapter::enterStateSTART(void) {
  m_nECCState = scm_nStateSTART;
}

void FORTE_BasicWithAdapter::enterStateInit(void) {
  m_nECCState = scm_nStateInit;
  alg_initialize();
  sendOutputEvent(scm_nEventINITOID);
}

void FORTE_BasicWithAdapter::enterStateDeInit(void) {
  m_nECCState = scm_nStateDeInit;
  alg_deInitialize();
  sendOutputEvent(scm_nEventINITOID);
}

void FORTE_BasicWithAdapter::enterStateInitialized(void) {
  m_nECCState = scm_nStateInitialized;
}

void FORTE_BasicWithAdapter::enterStateNormalOp(void) {
  m_nECCState = scm_nStateNormalOp;
  alg_normalOp();
  sendOutputEvent(scm_nEventINITOID);
}


void FORTE_BasicWithAdapter::executeEvent(int pa_nEIID){
  bool bTransitionCleared;
  do {
    bTransitionCleared = true;
    switch(m_nECCState) {
      case scm_nStateSTART:
        if((scm_nEventINITID == pa_nEIID) && ((true == st_QI())))
          enterStateInit();
        else
          bTransitionCleared  = false; //no transition cleared
        break;
      case scm_nStateInit:
        if(1)
          enterStateInitialized();
        else
          bTransitionCleared  = false; //no transition cleared
        break;
      case scm_nStateDeInit:
        if(1)
          enterStateSTART();
        else
          bTransitionCleared  = false; //no transition cleared
        break;
      case scm_nStateInitialized:
        if(1)
          enterStateNormalOp();
        else
        if((scm_nEventINITID == pa_nEIID) && ((false == st_QI())))
          enterStateDeInit();
        else
          bTransitionCleared  = false; //no transition cleared
        break;
      case scm_nStateNormalOp:
        if(1)
          enterStateInitialized();
        else
          bTransitionCleared  = false; //no transition cleared
        break;
      default:
        DEVLOG_ERROR("The state is not in the valid range! The state value is: %d. The max value can be: 5.", m_nECCState.operator TForteUInt16 ());
        m_nECCState = 0; // 0 is always the initial state
        break;
    }
    pa_nEIID = cg_nInvalidEventID; // we have to clear the event after the first check in order to ensure correct behavior
  } while(bTransitionCleared);
}


