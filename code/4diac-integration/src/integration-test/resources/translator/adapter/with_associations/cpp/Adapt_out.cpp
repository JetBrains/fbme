#include "Adapt.h"
#ifdef FORTE_ENABLE_GENERATED_SOURCE_CPP
#include "Adapt_gen.cpp"
#endif
#include "forte_array_at.h"

DEFINE_ADAPTER_TYPE(FORTE_Adapt, g_nStringIdAdapt)

const CStringDictionary::TStringId FORTE_Adapt::scm_anDataInputNames[] = {g_nStringIdinput_data1, g_nStringIdinput_data2, g_nStringIdinput_data3};

const CStringDictionary::TStringId FORTE_Adapt::scm_anDataInputTypeIds[] = {g_nStringIdWSTRING, g_nStringIdTIME, g_nStringIdBOOL};

const CStringDictionary::TStringId FORTE_Adapt::scm_anDataOutputNames[] = {g_nStringIdoutput_data1, g_nStringIdoutput_data2, g_nStringIdoutput_data3};

const CStringDictionary::TStringId FORTE_Adapt::scm_anDataOutputTypeIds[] = {g_nStringIdDWORD, g_nStringIdINT, g_nStringIdBOOL};

const TDataIOID FORTE_Adapt::scm_anEIWith[] = {0, 255, 1, 255};
const TForteInt16 FORTE_Adapt::scm_anEIWithIndexes[] = {0, 2, -1};
const CStringDictionary::TStringId FORTE_Adapt::scm_anEventInputNames[] = {g_nStringIdinput_event1, g_nStringIdinput_event2, g_nStringIdinput_event3};

const TDataIOID FORTE_Adapt::scm_anEOWith[] = {0, 255, 1, 2, 255};
const TForteInt16 FORTE_Adapt::scm_anEOWithIndexes[] = {0, 2};
const CStringDictionary::TStringId FORTE_Adapt::scm_anEventOutputNames[] = {g_nStringIdoutput_event1, g_nStringIdoutput_event2};


const SFBInterfaceSpec FORTE_Adapt::scm_stFBInterfaceSpecSocket = {
  3, scm_anEventInputNames, scm_anEIWith, scm_anEIWithIndexes,
  2, scm_anEventOutputNames, scm_anEOWith, scm_anEOWithIndexes,
  3, scm_anDataInputNames, scm_anDataInputTypeIds,
  3, scm_anDataOutputNames, scm_anDataOutputTypeIds,
  0, nullptr
};

const SFBInterfaceSpec FORTE_Adapt::scm_stFBInterfaceSpecPlug = {
  2, scm_anEventOutputNames, scm_anEOWith, scm_anEOWithIndexes,
  3, scm_anEventInputNames, scm_anEIWith, scm_anEIWithIndexes,
  3, scm_anDataOutputNames, scm_anDataOutputTypeIds,
  3, scm_anDataInputNames, scm_anDataInputTypeIds,
  0, nullptr
};


