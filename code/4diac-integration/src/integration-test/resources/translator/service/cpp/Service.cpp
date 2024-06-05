#include "Service.h"
#ifdef FORTE_ENABLE_GENERATED_SOURCE_CPP
#include "Service_gen.cpp"
#endif
#include "forte_array_at.h"

DEFINE_FIRMWARE_FB(FORTE_Service, g_nStringIdService)

const CStringDictionary::TStringId FORTE_Service::scm_anDataInputNames[] = {g_nStringIdQI, g_nStringIdQI2};

const CStringDictionary::TStringId FORTE_Service::scm_anDataInputTypeIds[] = {g_nStringIdBOOL, g_nStringIdINT};

const CStringDictionary::TStringId FORTE_Service::scm_anDataOutputNames[] = {g_nStringIdQO, g_nStringIdQO2};

const CStringDictionary::TStringId FORTE_Service::scm_anDataOutputTypeIds[] = {g_nStringIdBOOL, g_nStringIdINT};

const TForteInt16 FORTE_Service::scm_anEIWithIndexes[] = {-1, -1};
const CStringDictionary::TStringId FORTE_Service::scm_anEventInputNames[] = {g_nStringIdREQ, g_nStringIdREQ2};

const TForteInt16 FORTE_Service::scm_anEOWithIndexes[] = {-1};
const CStringDictionary::TStringId FORTE_Service::scm_anEventOutputNames[] = {g_nStringIdCNF};


const SFBInterfaceSpec FORTE_Service::scm_stFBInterfaceSpec = {
  2, scm_anEventInputNames, nullptr, scm_anEIWithIndexes,
  1, scm_anEventOutputNames, nullptr, scm_anEOWithIndexes,
  2, scm_anDataInputNames, scm_anDataInputTypeIds,
  2, scm_anDataOutputNames, scm_anDataOutputTypeIds,
  0, nullptr
};

void FORTE_Service::executeEvent(int pa_nEIID) {
  switch(pa_nEIID) {
    case scm_nEventREQID:
      #error add code for REQ event!
      /*
        do not forget to send output event, calling e.g.
          sendOutputEvent(scm_nEventCNFID);
      */
      break;
    case scm_nEventREQ2ID:
      #error add code for REQ2 event!
      /*
        do not forget to send output event, calling e.g.
          sendOutputEvent(scm_nEventCNFID);
      */
      break;
  }
}


