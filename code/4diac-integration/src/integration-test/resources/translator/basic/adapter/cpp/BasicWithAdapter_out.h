#ifndef _BASICWITHADAPTER_H_
#define _BASICWITHADAPTER_H_

#include "basicfb.h"
#include "forte_bool.h"
#include "forte_array_at.h"
#include "Adapt.h"


class FORTE_BasicWithAdapter: public CBasicFB {
  DECLARE_FIRMWARE_FB(FORTE_BasicWithAdapter)

private:
  static const CStringDictionary::TStringId scm_anDataInputNames[];
  static const CStringDictionary::TStringId scm_anDataInputTypeIds[];
  
  static const CStringDictionary::TStringId scm_anDataOutputNames[];
  static const CStringDictionary::TStringId scm_anDataOutputTypeIds[];
  
  static const TEventID scm_nEventINITID = 0;
  
  static const TForteInt16 scm_anEIWithIndexes[];
  static const CStringDictionary::TStringId scm_anEventInputNames[];
  
  static const TEventID scm_nEventINITOID = 0;
  
  static const TForteInt16 scm_anEOWithIndexes[];
  static const CStringDictionary::TStringId scm_anEventOutputNames[];
  
  static const int scm_nSOCKET1AdpNum = 0;
  static const int scm_nPLUG1AdpNum = 1;
  
  static const SAdapterInstanceDef scm_astAdapterInstances[];

  static const SFBInterfaceSpec scm_stFBInterfaceSpec;

virtual void setInitialValues();
  CIEC_BOOL &st_QI() {
    return *static_cast<CIEC_BOOL*>(getDI(0));
  }
  
  CIEC_BOOL &st_QO() {
    return *static_cast<CIEC_BOOL*>(getDO(0));
  }
  
  FORTE_Adapt& st_SOCKET1() {
    return (*static_cast<FORTE_Adapt*>(m_apoAdapters[0]));
  };
  
  FORTE_Adapt& st_PLUG1() {
    return (*static_cast<FORTE_Adapt*>(m_apoAdapters[1]));
  };
  

  void alg_initialize(void);
  void alg_normalOp(void);
  void alg_deInitialize(void);

  static const TForteInt16 scm_nStateSTART = 0;
  static const TForteInt16 scm_nStateInit = 1;
  static const TForteInt16 scm_nStateDeInit = 2;
  static const TForteInt16 scm_nStateInitialized = 3;
  static const TForteInt16 scm_nStateNormalOp = 4;

  void enterStateSTART(void);
  void enterStateInit(void);
  void enterStateDeInit(void);
  void enterStateInitialized(void);
  void enterStateNormalOp(void);

  virtual void executeEvent(int pa_nEIID);

  FORTE_BASIC_FB_DATA_ARRAY(1, 1, 1, 0, 2);

public:
  FORTE_BasicWithAdapter(CStringDictionary::TStringId pa_nInstanceNameId, CResource *pa_poSrcRes) :
      CBasicFB(pa_poSrcRes, &scm_stFBInterfaceSpec, pa_nInstanceNameId, nullptr, m_anFBConnData, m_anFBVarsData) {
  };

  virtual ~FORTE_BasicWithAdapter() = default;
};

#endif // _BASICWITHADAPTER_H_


