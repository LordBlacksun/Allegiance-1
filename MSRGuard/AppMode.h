#pragma once

/////////////////////////////////////////////////////////////////////////////
// AppMode.h : Declaration of the IAppMode interface
//


/////////////////////////////////////////////////////////////////////////////
// IAppMode
//
class __declspec(novtable) IAppMode :
  public IObjectSingle
{
public:
  virtual STDMETHODIMP Run(int argc, TCHAR* argv[]) = 0;
};


/////////////////////////////////////////////////////////////////////////////
