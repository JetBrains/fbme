#ifndef _ADAPT_H_
#define _ADAPT_H_

#include "adapter.h"
#include "typelib.h"
#include "forte_wstring.h"
#include "forte_time.h"
#include "forte_bool.h"
#include "forte_dword.h"
#include "forte_int.h"
#include "forte_array_at.h"


class FORTE_Adapt: public CAdapter {
  DECLARE_ADAPTER_TYPE(FORTE_Adapt)

private:
  static const CStringDictionary::TStringId scm_anDataInputNames[];
  static const CStringDictionary::TStringId scm_anDataInputTypeIds[];
  
  static const CStringDictionary::TStringId scm_anDataOutputNames[];
  static const CStringDictionary::TStringId scm_anDataOutputTypeIds[];
  
  public:
    static const TEventID scm_nEventinput_event1ID = 0;
    static const TEventID scm_nEventinput_event2ID = 1;
    static const TEventID scm_nEventinput_event3ID = 2;
  
  private:
  
  static const TDataIOID scm_anEIWith[];
  static const TForteInt16 scm_anEIWithIndexes[];
  static const CStringDictionary::TStringId scm_anEventInputNames[];
  
  public:
    static const TEventID scm_nEventoutput_event1ID = 0;
    static const TEventID scm_nEventoutput_event2ID = 1;
  
  private:
  
  static const TDataIOID scm_anEOWith[];
  static const TForteInt16 scm_anEOWithIndexes[];
  static const CStringDictionary::TStringId scm_anEventOutputNames[];
  

  static const SFBInterfaceSpec scm_stFBInterfaceSpecSocket;
  
  static const SFBInterfaceSpec scm_stFBInterfaceSpecPlug;

  CIEC_WSTRING &input_data1() {
    return *static_cast<CIEC_WSTRING*>((isSocket()) ? getDI(0) : getDO(0));
  }
  
  CIEC_TIME &input_data2() {
    return *static_cast<CIEC_TIME*>((isSocket()) ? getDI(1) : getDO(1));
  }
  
  CIEC_BOOL &input_data3() {
    return *static_cast<CIEC_BOOL*>((isSocket()) ? getDI(2) : getDO(2));
  }
  
  CIEC_DWORD &output_data1() {
    return *static_cast<CIEC_DWORD*>((isSocket()) ? getDO(0) : getDI(0));
  }
  
  CIEC_INT &output_data2() {
    return *static_cast<CIEC_INT*>((isSocket()) ? getDO(1) : getDI(1));
  }
  
  CIEC_BOOL &output_data3() {
    return *static_cast<CIEC_BOOL*>((isSocket()) ? getDO(2) : getDI(2));
  }
  

public:
  int input_event1() {
    return m_nParentAdapterListEventID + scm_nEventinput_event1ID;
  }
  
  int input_event2() {
    return m_nParentAdapterListEventID + scm_nEventinput_event2ID;
  }
  
  int input_event3() {
    return m_nParentAdapterListEventID + scm_nEventinput_event3ID;
  }
  
  int output_event1() {
    return m_nParentAdapterListEventID + scm_nEventoutput_event1ID;
  }
  
  int output_event2() {
    return m_nParentAdapterListEventID + scm_nEventoutput_event2ID;
  }
  

private:
  FORTE_ADAPTER_DATA_ARRAY(3, 2, 3, 3, 0);

public:
  FORTE_Adapt(CStringDictionary::TStringId pa_anAdapterInstanceName, CResource *pa_poSrcRes, bool pa_bIsPlug) :
      CAdapter(pa_poSrcRes, &scm_stFBInterfaceSpecSocket, pa_anAdapterInstanceName, &scm_stFBInterfaceSpecPlug, pa_bIsPlug, m_anFBConnData, m_anFBVarsData) {	
   };

  virtual ~FORTE_Adapt() = default;
};

#endif // _ADAPT_H_


