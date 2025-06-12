#include "SimpleAdapter.h"
#ifdef FORTE_ENABLE_GENERATED_SOURCE_CPP
#include "SimpleAdapter_gen.cpp"
#endif
#include "forte_array_at.h"

DEFINE_ADAPTER_TYPE(FORTE_SimpleAdapter, g_nStringIdSimpleAdapter)

const CStringDictionary::TStringId FORTE_SimpleAdapter::scm_anDataInputNames[] = {g_nStringIddata1, g_nStringIddata2};

const CStringDictionary::TStringId FORTE_SimpleAdapter::scm_anDataInputTypeIds[] = {g_nStringIdBOOL, g_nStringIdINT};

const CStringDictionary::TStringId FORTE_SimpleAdapter::scm_anDataOutputNames[] = {g_nStringIddata3, g_nStringIddata4};

const CStringDictionary::TStringId FORTE_SimpleAdapter::scm_anDataOutputTypeIds[] = {g_nStringIdBOOL, g_nStringIdBOOL};

const TForteInt16 FORTE_SimpleAdapter::scm_anEIWithIndexes[] = {-1, -1};
const CStringDictionary::TStringId FORTE_SimpleAdapter::scm_anEventInputNames[] = {g_nStringIdevent1, g_nStringIdevent2};

const TForteInt16 FORTE_SimpleAdapter::scm_anEOWithIndexes[] = {-1, -1};
const CStringDictionary::TStringId FORTE_SimpleAdapter::scm_anEventOutputNames[] = {g_nStringIdevent3, g_nStringIdevent4};


const SFBInterfaceSpec FORTE_SimpleAdapter::scm_stFBInterfaceSpecSocket = {
  2, scm_anEventInputNames, scm_anEIWith, scm_anEIWithIndexes,
  2, scm_anEventOutputNames, scm_anEOWith, scm_anEOWithIndexes,
  2, scm_anDataInputNames, scm_anDataInputTypeIds,
  2, scm_anDataOutputNames, scm_anDataOutputTypeIds,
  0, nullptr
};

const SFBInterfaceSpec FORTE_SimpleAdapter::scm_stFBInterfaceSpecPlug = {
  2, scm_anEventOutputNames, scm_anEOWith, scm_anEOWithIndexes,
  2, scm_anEventInputNames, scm_anEIWith, scm_anEIWithIndexes,
  2, scm_anDataOutputNames, scm_anDataOutputTypeIds,
  2, scm_anDataInputNames, scm_anDataInputTypeIds,
  0, nullptr
};


