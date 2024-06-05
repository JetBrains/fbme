#ifndef _SERVICE_H_
#define _SERVICE_H_

#include "funcbloc.h"
#include "forte_bool.h"
#include "forte_int.h"
#include "forte_array_at.h"


class FORTE_Service: public CFunctionBlock {
  DECLARE_FIRMWARE_FB(FORTE_Service)

private:
  static const CStringDictionary::TStringId scm_anDataInputNames[];
  static const CStringDictionary::TStringId scm_anDataInputTypeIds[];
  
  static const CStringDictionary::TStringId scm_anDataOutputNames[];
  static const CStringDictionary::TStringId scm_anDataOutputTypeIds[];
  
  static const TEventID scm_nEventREQID = 0;
  static const TEventID scm_nEventREQ2ID = 1;
  
  static const TForteInt16 scm_anEIWithIndexes[];
  static const CStringDictionary::TStringId scm_anEventInputNames[];
  
  static const TEventID scm_nEventCNFID = 0;
  
  static const TForteInt16 scm_anEOWithIndexes[];
  static const CStringDictionary::TStringId scm_anEventOutputNames[];
  

  static const SFBInterfaceSpec scm_stFBInterfaceSpec;

  CIEC_BOOL &st_QI() {
    return *static_cast<CIEC_BOOL*>(getDI(0));
  }
  
  CIEC_INT &st_QI2() {
    return *static_cast<CIEC_INT*>(getDI(1));
  }
  
  CIEC_BOOL &st_QO() {
    return *static_cast<CIEC_BOOL*>(getDO(0));
  }
  
  CIEC_INT &st_QO2() {
    return *static_cast<CIEC_INT*>(getDO(1));
  }
  

  FORTE_FB_DATA_ARRAY(1, 2, 2, 0);

  void executeEvent(int pa_nEIID);

public:
   FORTE_Service(const CStringDictionary::TStringId pa_nInstanceNameId, CResource *pa_poSrcRes) :
       CFunctionBlock( pa_poSrcRes, &scm_stFBInterfaceSpec, pa_nInstanceNameId, m_anFBConnData, m_anFBVarsData) {
   };

  virtual ~FORTE_Service() = default;
};

#endif // _SERVICE_H_


