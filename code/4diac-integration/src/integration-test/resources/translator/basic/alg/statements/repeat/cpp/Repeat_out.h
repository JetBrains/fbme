#ifndef _REPEAT_H_
#define _REPEAT_H_

#include "basicfb.h"
#include "forte_array_at.h"


class FORTE_Repeat: public CBasicFB {
  DECLARE_FIRMWARE_FB(FORTE_Repeat)

private:
  
  
  
  static const TEventID scm_nEventEO1ID = 0;
  
  static const TForteInt16 scm_anEOWithIndexes[];
  static const CStringDictionary::TStringId scm_anEventOutputNames[];
  

  static const SFBInterfaceSpec scm_stFBInterfaceSpec;


  void alg_A1(void);

  static const TForteInt16 scm_nStateSTART = 0;
  static const TForteInt16 scm_nStateS2 = 1;
  
  void enterStateSTART(void);
  void enterStateS2(void);

  virtual void executeEvent(int pa_nEIID);

  FORTE_BASIC_FB_DATA_ARRAY(1, 0, 0, 0, 0);

public:
  FORTE_Repeat(CStringDictionary::TStringId pa_nInstanceNameId, CResource *pa_poSrcRes) :
      CBasicFB(pa_poSrcRes, &scm_stFBInterfaceSpec, pa_nInstanceNameId, nullptr, m_anFBConnData, m_anFBVarsData) {
  };

  virtual ~FORTE_Repeat() = default;
};

#endif // _REPEAT_H_


