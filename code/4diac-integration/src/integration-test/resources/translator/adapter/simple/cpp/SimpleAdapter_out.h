#ifndef _SIMPLEADAPTER_H_
#define _SIMPLEADAPTER_H_

#include "adapter.h"
#include "typelib.h"
#include "forte_bool.h"
#include "forte_int.h"
#include "forte_array_at.h"

class FORTE_SimpleAdapter: public CAdapter {
  DECLARE_ADAPTER_TYPE(FORTE_SimpleAdapter)

private:
  static const CStringDictionary::TStringId scm_anDataInputNames[];
  static const CStringDictionary::TStringId scm_anDataInputTypeIds[];
  
  static const CStringDictionary::TStringId scm_anDataOutputNames[];
  static const CStringDictionary::TStringId scm_anDataOutputTypeIds[];
  
  public:
    static const TEventID scm_nEventevent1ID = 0;
    static const TEventID scm_nEventevent2ID = 1;
  
  private:
  
  static const TForteInt16 scm_anEIWithIndexes[];
  static const CStringDictionary::TStringId scm_anEventInputNames[];
  
  public:
    static const TEventID scm_nEventevent3ID = 0;
    static const TEventID scm_nEventevent4ID = 1;
  
  private:
  
  static const TForteInt16 scm_anEOWithIndexes[];
  static const CStringDictionary::TStringId scm_anEventOutputNames[];
  

  static const SFBInterfaceSpec scm_stFBInterfaceSpecSocket;
  
  static const SFBInterfaceSpec scm_stFBInterfaceSpecPlug;

  CIEC_BOOL &data1() {
    return *static_cast<CIEC_BOOL*>((isSocket()) ? getDI(0) : getDO(0));
  }
  
  CIEC_INT &data2() {
    return *static_cast<CIEC_INT*>((isSocket()) ? getDI(1) : getDO(1));
  }
  
  CIEC_BOOL &data3() {
    return *static_cast<CIEC_BOOL*>((isSocket()) ? getDO(0) : getDI(0));
  }
  
  CIEC_BOOL &data4() {
    return *static_cast<CIEC_BOOL*>((isSocket()) ? getDO(1) : getDI(1));
  }
  

public:
  int event1() {
    return m_nParentAdapterListEventID + scm_nEventevent1ID;
  }
  
  int event2() {
    return m_nParentAdapterListEventID + scm_nEventevent2ID;
  }
  
  int event3() {
    return m_nParentAdapterListEventID + scm_nEventevent3ID;
  }
  
  int event4() {
    return m_nParentAdapterListEventID + scm_nEventevent4ID;
  }
  

private:
  FORTE_ADAPTER_DATA_ARRAY(2, 2, 2, 2, 0);

public:
  FORTE_SimpleAdapter(CStringDictionary::TStringId pa_anAdapterInstanceName, CResource *pa_poSrcRes, bool pa_bIsPlug) :
      CAdapter(pa_poSrcRes, &scm_stFBInterfaceSpecSocket, pa_anAdapterInstanceName, &scm_stFBInterfaceSpecPlug, pa_bIsPlug, m_anFBConnData, m_anFBVarsData) {	
   };

  virtual ~FORTE_SimpleAdapter() = default;
};

#endif // _SIMPLEADAPTER_H_


