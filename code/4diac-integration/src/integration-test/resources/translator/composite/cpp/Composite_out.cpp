#include "Composite.h"
#ifdef FORTE_ENABLE_GENERATED_SOURCE_CPP
#include "Composite_gen.cpp"
#endif
#include "forte_array_at.h"

DEFINE_FIRMWARE_FB(FORTE_Composite, g_nStringIdComposite)

const CStringDictionary::TStringId FORTE_Composite::scm_anDataInputNames[] = {g_nStringIdInputVar, g_nStringIdInputVar2};

const CStringDictionary::TStringId FORTE_Composite::scm_anDataInputTypeIds[] = {g_nStringIdBOOL, g_nStringIdBOOL};

const CStringDictionary::TStringId FORTE_Composite::scm_anDataOutputNames[] = {g_nStringIdOutputVar, g_nStringIdOutputVar2};

const CStringDictionary::TStringId FORTE_Composite::scm_anDataOutputTypeIds[] = {g_nStringIdBOOL, g_nStringIdBOOL};

const TDataIOID FORTE_Composite::scm_anEIWith[] = {0, 255, 0, 255};
const TForteInt16 FORTE_Composite::scm_anEIWithIndexes[] = {0, 2};
const CStringDictionary::TStringId FORTE_Composite::scm_anEventInputNames[] = {g_nStringIdEvent1, g_nStringIdEvent2};

const TDataIOID FORTE_Composite::scm_anEOWith[] = {0, 255, 0, 255};
const TForteInt16 FORTE_Composite::scm_anEOWithIndexes[] = {0, 2};
const CStringDictionary::TStringId FORTE_Composite::scm_anEventOutputNames[] = {g_nStringIdEvent3, g_nStringIdEvent4};

const SAdapterInstanceDef FORTE_Composite::scm_astAdapterInstances[] = {
  {g_nStringIdAdapt, g_nStringIdSOCKET1, false},
  {g_nStringIdAdapt, g_nStringIdPLUG1, true}
};

const SFBInterfaceSpec FORTE_Composite::scm_stFBInterfaceSpec = {
  2, scm_anEventInputNames, scm_anEIWith, scm_anEIWithIndexes,
  2, scm_anEventOutputNames, scm_anEOWith, scm_anEOWithIndexes,
  2, scm_anDataInputNames, scm_anDataInputTypeIds,
  2, scm_anDataOutputNames, scm_anDataOutputTypeIds,
  2, scm_astAdapterInstances
};

const SCFB_FBInstanceData FORTE_Composite::scm_astInternalFBs[] = {
  {g_nStringIdBB, g_nStringIdBB},
  {g_nStringIdBasicBlock, g_nStringIdBasicBlock}
};


const SCFB_FBConnectionData FORTE_Composite::scm_astEventConnections[] = {
  {GENERATE_CONNECTION_PORT_ID_1_ARG(g_nStringIdEvent1), -1, GENERATE_CONNECTION_PORT_ID_2_ARG(g_nStringIdSOCKET1, g_nStringIdinput_event1), CCompositeFB::scm_nAdapterMarker | 0},
  {GENERATE_CONNECTION_PORT_ID_2_ARG(g_nStringIdSOCKET1, g_nStringIdoutput_event1), CCompositeFB::scm_nAdapterMarker | 0, GENERATE_CONNECTION_PORT_ID_1_ARG(g_nStringIdEvent4), -1},
  {GENERATE_CONNECTION_PORT_ID_2_ARG(g_nStringIdBasicBlock, g_nStringIdEVENT3), 1, GENERATE_CONNECTION_PORT_ID_1_ARG(g_nStringIdEvent3), -1},
  {GENERATE_CONNECTION_PORT_ID_2_ARG(g_nStringIdBasicBlock, g_nStringIdEVENT4), 1, GENERATE_CONNECTION_PORT_ID_1_ARG(g_nStringIdEvent4), -1},
  {GENERATE_CONNECTION_PORT_ID_1_ARG(g_nStringIdEvent2), -1, GENERATE_CONNECTION_PORT_ID_2_ARG(g_nStringIdBasicBlock, g_nStringIdEVENT1), 1},
  {GENERATE_CONNECTION_PORT_ID_2_ARG(g_nStringIdBB, g_nStringIdCNF), 0, GENERATE_CONNECTION_PORT_ID_1_ARG(g_nStringIdEvent3), -1},
};

const SCFB_FBFannedOutConnectionData FORTE_Composite::scm_astFannedOutEventConnections[] = {
  {0, GENERATE_CONNECTION_PORT_ID_2_ARG(g_nStringIdBB, g_nStringIdREQ), 0},
  {5, GENERATE_CONNECTION_PORT_ID_2_ARG(g_nStringIdPLUG1, g_nStringIdoutput_event1), CCompositeFB::scm_nAdapterMarker | 1},
};

const SCFB_FBConnectionData FORTE_Composite::scm_astDataConnections[] = {
  {GENERATE_CONNECTION_PORT_ID_1_ARG(g_nStringIdInputVar2), -1, GENERATE_CONNECTION_PORT_ID_1_ARG(g_nStringIdOutputVar2), -1},
  {GENERATE_CONNECTION_PORT_ID_2_ARG(g_nStringIdBasicBlock, g_nStringIdoutput_var), 1, GENERATE_CONNECTION_PORT_ID_2_ARG(g_nStringIdPLUG1, g_nStringIdoutput_data1), CCompositeFB::scm_nAdapterMarker | 1},
};

const SCFB_FBFannedOutConnectionData FORTE_Composite::scm_astFannedOutDataConnections[] = {
  {0, GENERATE_CONNECTION_PORT_ID_2_ARG(g_nStringIdBasicBlock, g_nStringIdinput_var), 1},
  {1, GENERATE_CONNECTION_PORT_ID_2_ARG(g_nStringIdPLUG1, g_nStringIdoutput_data3), CCompositeFB::scm_nAdapterMarker | 1},
};

const SCFB_FBNData FORTE_Composite::scm_stFBNData = {
  2, scm_astInternalFBs,
  6, scm_astEventConnections,
  2, scm_astFannedOutEventConnections,
  2, scm_astDataConnections,
  2, scm_astFannedOutDataConnections,
  0, nullptr
};
