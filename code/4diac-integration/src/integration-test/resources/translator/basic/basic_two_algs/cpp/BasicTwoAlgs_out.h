#ifndef _TWOALGS_H_
#define _TWOALGS_H_

#include "basicfb.h"
#include "forte_int.h"
#include "forte_bool.h"
#include "forte_string.h"
#include "forte_array_at.h"


class FORTE_TwoAlgs: public CBasicFB {
  DECLARE_FIRMWARE_FB(FORTE_TwoAlgs)

private:
  static const CStringDictionary::TStringId scm_anDataInputNames[];
  static const CStringDictionary::TStringId scm_anDataInputTypeIds[];
  
  static const CStringDictionary::TStringId scm_anDataOutputNames[];
  static const CStringDictionary::TStringId scm_anDataOutputTypeIds[];
  
  static const TEventID scm_nEventevent_input1ID = 0;
  static const TEventID scm_nEventevent_input2ID = 1;
  
  static const TDataIOID scm_anEIWith[];
  static const TForteInt16 scm_anEIWithIndexes[];
  static const CStringDictionary::TStringId scm_anEventInputNames[];
  
  static const TEventID scm_nEventevent_output1ID = 0;
  
  static const TDataIOID scm_anEOWith[];
  static const TForteInt16 scm_anEOWithIndexes[];
  static const CStringDictionary::TStringId scm_anEventOutputNames[];
  

  static const SFBInterfaceSpec scm_stFBInterfaceSpec;

static const CStringDictionary::TStringId scm_anInternalsNames[];
static const CStringDictionary::TStringId scm_anInternalsTypeIds[];
static const SInternalVarsInformation scm_stInternalVars;
virtual void setInitialValues();
  CIEC_INT &st_variable_input_int() {
    return *static_cast<CIEC_INT*>(getDI(0));
  }
  
  CIEC_BOOL &st_variable_output_bool() {
    return *static_cast<CIEC_BOOL*>(getDO(0));
  }
  
  CIEC_INT &st_variable_output_int() {
    return *static_cast<CIEC_INT*>(getDO(1));
  }
  
  CIEC_STRING &st_internal_variable1() {
    return *static_cast<CIEC_STRING*>(getVarInternal(0));
  }
  

  void alg_algorithm1(void);
  void alg_ALG_Var2(void);

  static const TForteInt16 scm_nStateSTART = 0;
  static const TForteInt16 scm_nStateSTOP = 1;
  static const TForteInt16 scm_nStateEVAL = 2;
  static const TForteInt16 scm_nStateEVAL2 = 3;
  
  void enterStateSTART(void);
  void enterStateSTOP(void);
  void enterStateEVAL(void);
  void enterStateEVAL2(void);

  virtual void executeEvent(int pa_nEIID);

  FORTE_BASIC_FB_DATA_ARRAY(1, 1, 2, 1, 0);

public:
  FORTE_TwoAlgs(CStringDictionary::TStringId pa_nInstanceNameId, CResource *pa_poSrcRes) :
      CBasicFB(pa_poSrcRes, &scm_stFBInterfaceSpec, pa_nInstanceNameId, &scm_stInternalVars, m_anFBConnData, m_anFBVarsData) {
  };

  virtual ~FORTE_TwoAlgs() = default;
};

#endif // _TWOALGS_H_


