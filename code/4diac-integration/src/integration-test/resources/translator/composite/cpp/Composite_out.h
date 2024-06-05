#ifndef _COMPOSITE_H_
#define _COMPOSITE_H_

#include "cfb.h"
#include "typelib.h"
#include "forte_bool.h"
#include "forte_array_at.h"
#include "Adapt.h"


class FORTE_Composite: public CCompositeFB {
  DECLARE_FIRMWARE_FB(FORTE_Composite)

private:
  static const CStringDictionary::TStringId scm_anDataInputNames[];
  static const CStringDictionary::TStringId scm_anDataInputTypeIds[];
  
  static const CStringDictionary::TStringId scm_anDataOutputNames[];
  static const CStringDictionary::TStringId scm_anDataOutputTypeIds[];
  
  static const TEventID scm_nEventEvent1ID = 0;
  static const TEventID scm_nEventEvent2ID = 1;
  
  static const TDataIOID scm_anEIWith[];
  static const TForteInt16 scm_anEIWithIndexes[];
  static const CStringDictionary::TStringId scm_anEventInputNames[];
  
  static const TEventID scm_nEventEvent3ID = 0;
  static const TEventID scm_nEventEvent4ID = 1;
  
  static const TDataIOID scm_anEOWith[];
  static const TForteInt16 scm_anEOWithIndexes[];
  static const CStringDictionary::TStringId scm_anEventOutputNames[];
  
  static const int scm_nSOCKET1AdpNum = 0;
  static const int scm_nPLUG1AdpNum = 1;
  
  static const SAdapterInstanceDef scm_astAdapterInstances[];

  static const SFBInterfaceSpec scm_stFBInterfaceSpec;

  static const SCFB_FBInstanceData scm_astInternalFBs[];
  static const SCFB_FBParameter scm_astParamters[];
  static const SCFB_FBConnectionData scm_astEventConnections[];
  static const SCFB_FBFannedOutConnectionData scm_astFannedOutEventConnections[];
  static const SCFB_FBConnectionData scm_astDataConnections[];
  static const SCFB_FBFannedOutConnectionData scm_astFannedOutDataConnections[];
  static const SCFB_FBNData scm_stFBNData;

  CIEC_BOOL &st_InputVar() {
    return *static_cast<CIEC_BOOL*>(getDI(0));
  }
  
  CIEC_BOOL &st_InputVar2() {
    return *static_cast<CIEC_BOOL*>(getDI(1));
  }
  
  CIEC_BOOL &st_OutputVar() {
    return *static_cast<CIEC_BOOL*>(getDO(0));
  }
  
  CIEC_BOOL &st_OutputVar2() {
    return *static_cast<CIEC_BOOL*>(getDO(1));
  }
  
  FORTE_Adapt& st_SOCKET1() {
    return (*static_cast<FORTE_Adapt*>(m_apoAdapters[0]));
  };
  
  FORTE_Adapt& st_PLUG1() {
    return (*static_cast<FORTE_Adapt*>(m_apoAdapters[1]));
  };
  

  FORTE_FB_DATA_ARRAY(2, 2, 2, 2);

public:
  FORTE_Composite(const CStringDictionary::TStringId pa_nInstanceNameId, CResource *pa_poSrcRes) :
      CCompositeFB(pa_poSrcRes, &scm_stFBInterfaceSpec, pa_nInstanceNameId, &scm_stFBNData, m_anFBConnData, m_anFBVarsData) {
  };

  virtual ~FORTE_Composite() = default;
};

#endif // _COMPOSITE_H_


