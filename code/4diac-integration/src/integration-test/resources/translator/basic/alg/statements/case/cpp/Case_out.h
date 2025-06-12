#ifndef _CASE_H_
#define _CASE_H_

#include "basicfb.h"
#include "forte_bool.h"
#include "forte_int.h"
#include "forte_array_at.h"


class FORTE_Case: public CBasicFB {
  DECLARE_FIRMWARE_FB(FORTE_Case)

private:
  static const CStringDictionary::TStringId scm_anDataInputNames[];
  static const CStringDictionary::TStringId scm_anDataInputTypeIds[];
  
  static const CStringDictionary::TStringId scm_anDataOutputNames[];
  static const CStringDictionary::TStringId scm_anDataOutputTypeIds[];
  
  
  static const TEventID scm_nEventEO1ID = 0;
  
  static const TForteInt16 scm_anEOWithIndexes[];
  static const CStringDictionary::TStringId scm_anEventOutputNames[];
  

  static const SFBInterfaceSpec scm_stFBInterfaceSpec;

virtual void setInitialValues();
  CIEC_INT &st_in() {
    return *static_cast<CIEC_INT*>(getDI(0));
  }
  
  CIEC_BOOL &st_out() {
    return *static_cast<CIEC_BOOL*>(getDO(0));
  }
  

  void alg_A1(void);

  static const TForteInt16 scm_nStateSTART = 0;
  static const TForteInt16 scm_nStateS2 = 1;
  
  void enterStateSTART(void);
  void enterStateS2(void);

  virtual void executeEvent(int pa_nEIID);

  FORTE_BASIC_FB_DATA_ARRAY(1, 1, 1, 0, 0);

public:
  FORTE_Case(CStringDictionary::TStringId pa_nInstanceNameId, CResource *pa_poSrcRes) :
      CBasicFB(pa_poSrcRes, &scm_stFBInterfaceSpec, pa_nInstanceNameId, nullptr, m_anFBConnData, m_anFBVarsData) {
  };

  virtual ~FORTE_Case() = default;
};

#endif // _CASE_H_


