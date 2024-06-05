#ifndef _ASSIGNMENT_H_
#define _ASSIGNMENT_H_

#include "basicfb.h"
#include "forte_int.h"
#include "forte_array_at.h"


class FORTE_Assignment: public CBasicFB {
  DECLARE_FIRMWARE_FB(FORTE_Assignment)

private:
  
  static const CStringDictionary::TStringId scm_anDataOutputNames[];
  static const CStringDictionary::TStringId scm_anDataOutputTypeIds[];
  
  
  static const TEventID scm_nEventEO1ID = 0;
  
  static const TDataIOID scm_anEOWith[];
  static const TForteInt16 scm_anEOWithIndexes[];
  static const CStringDictionary::TStringId scm_anEventOutputNames[];
  

  static const SFBInterfaceSpec scm_stFBInterfaceSpec;

virtual void setInitialValues();
  CIEC_INT &st_out() {
    return *static_cast<CIEC_INT*>(getDO(0));
  }
  

  void alg_A1(void);

  static const TForteInt16 scm_nStateSTART = 0;
  static const TForteInt16 scm_nStateSTATE2 = 1;
  
  void enterStateSTART(void);
  void enterStateSTATE2(void);

  virtual void executeEvent(int pa_nEIID);

  FORTE_BASIC_FB_DATA_ARRAY(1, 0, 1, 0, 0);

public:
  FORTE_Assignment(CStringDictionary::TStringId pa_nInstanceNameId, CResource *pa_poSrcRes) :
      CBasicFB(pa_poSrcRes, &scm_stFBInterfaceSpec, pa_nInstanceNameId, nullptr, m_anFBConnData, m_anFBVarsData) {
  };

  virtual ~FORTE_Assignment() = default;
};

#endif // _ASSIGNMENT_H_


