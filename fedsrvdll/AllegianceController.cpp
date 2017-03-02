// AllegianceController.cpp : Implementation of CAllegianceController
#include "pch.h"
#include "allsrv.h" // generated by midl
#include "AllegianceController.h"
#include "AutoHandle.h"
//#include "tasks.h"

const char g_szServiceName[] = "AllSrv";
const int g_nMaxSecondsToWait = 30;

/////////////////////////////////////////////////////////////////////////////
// CAllegianceController

STDMETHODIMP CAllegianceController::InterfaceSupportsErrorInfo(REFIID riid)
{
	static const IID* arr[] = 
	{
		&IID_IAllegianceController
	};
	for (int i=0; i < sizeof(arr) / sizeof(arr[0]); i++)
	{
		if (InlineIsEqualGUID(*arr[i],riid))
			return S_OK;
	}
	return S_FALSE;
}

STDMETHODIMP CAllegianceController::StartService()
{
	// Open the Service Control Manager (SCM)
	TCServiceHandle hSCM = OpenSCManager(NULL, NULL, GENERIC_READ);
	if (hSCM.IsNull())
		return Error("Cannot open Service Control Manager.", GUID_NULL,
			HRESULT_FROM_WIN32(GetLastError()));

	// Open the service
	USES_CONVERSION;
	const DWORD dwAccess = GENERIC_READ | SERVICE_INTERROGATE | SERVICE_START;
	TCServiceHandle hService = OpenService(hSCM, g_szServiceName, dwAccess);
	if (hService.IsNull())
		return Error("Cannot open the service.", GUID_NULL,
			HRESULT_FROM_WIN32(GetLastError()));

	// Start the service
	if (!::StartService(hService, 0, NULL))
	{
		SERVICE_STATUS ss;
		QueryServiceStatus(hService, &ss);
		if (SERVICE_RUNNING == ss.dwCurrentState)
			return S_OK;

		const int nWait = 100;
		const int nMax = g_nMaxSecondsToWait * 1000 / nWait;
		for (int i = 0; i < nMax && SERVICE_START_PENDING == ss.dwCurrentState; ++i)
		{
			// Sleep for awhile
			Sleep(nWait);

			// Query the open service for status
			QueryServiceStatus(hService, &ss);
		}
		
		if (SERVICE_RUNNING != ss.dwCurrentState)
			return Error("Service not started.", GUID_NULL,
				HRESULT_FROM_WIN32(GetLastError()));
	}

	return S_OK;
}

STDMETHODIMP CAllegianceController::StopService()
{
	// Open the Service Control Manager (SCM)
	TCServiceHandle hSCM = OpenSCManager(NULL, NULL, GENERIC_READ);
	if (hSCM.IsNull())
		return Error("Cannot open Service Control Manager.", GUID_NULL,
			HRESULT_FROM_WIN32(GetLastError()));

	// Open the service
	USES_CONVERSION;
	const DWORD dwAccess = GENERIC_READ | SERVICE_INTERROGATE | SERVICE_STOP;
	TCServiceHandle hService = OpenService(hSCM, g_szServiceName, dwAccess);
	if (hService.IsNull())
		return Error("Cannot open the service.", GUID_NULL,
			HRESULT_FROM_WIN32(GetLastError()));

	// Stop the service
	SERVICE_STATUS ss;
	const DWORD dwStop = SERVICE_CONTROL_STOP;
	if (ControlService(hService, dwStop, &ss) || SERVICE_STOPPED == ss.dwCurrentState)
		return S_OK;
	if (SERVICE_STOP_PENDING != ss.dwCurrentState)
		return Error("Cannot stop the service.", GUID_NULL,
			HRESULT_FROM_WIN32(GetLastError()));

	// Query the service for a maximum seconds specified
	const int nWait = 100;
	const int nMax = g_nMaxSecondsToWait * 1000 / nWait;
	for (int i = 0; i < nMax && SERVICE_STOPPED != ss.dwCurrentState; ++i)
	{
		// Sleep for awhile
		Sleep(nWait);

		// Query the open service for status
		QueryServiceStatus(hService, &ss);
	}

	// Indicate an error
	return Error("Service could not be stopped in the maximum specified seconds.");
}

STDMETHODIMP CAllegianceController::InstallService(BSTR bstrUser, BSTR bstrPassword)
{
  USES_CONVERSION;

  char szPath[_MAX_PATH];
  char szDrive[_MAX_DRIVE];
  char szDir[_MAX_DIR];
	char szFname[_MAX_FNAME];
  char szCommandLine[_MAX_PATH+50];

  GetModuleFileName(_Module.m_hInst,szPath,sizeof(szPath));
	_splitpath(szPath, szDrive, szDir, szFname, NULL);
	_makepath(szPath, szDrive, szDir, szFname, "exe");

  sprintf (szCommandLine, "%s -Service %s %s", szPath, OLE2CT(bstrUser), OLE2CT(bstrPassword));

  system(szCommandLine);


/*  char szPath[_MAX_PATH];
    char szDrive[_MAX_DRIVE];
    char szDir[_MAX_DIR];
	char szFname[_MAX_FNAME];

	TCServiceHandle hSCM = OpenSCManager(NULL, NULL, SC_MANAGER_ALL_ACCESS);
	if (hSCM.IsNull())
		return Error("Cannot open Service Control Manager.", GUID_NULL,
			HRESULT_FROM_WIN32(GetLastError()));

    GetModuleFileName(_Module.m_hInst,szPath,sizeof(szPath));
	_splitpath(szPath, szDrive, szDir, szFname, NULL);
	_makepath(szPath, szDrive, szDir, szFname, "exe");

	USES_CONVERSION;
    TCServiceHandle hSvc = CreateService(hSCM,
                           g_szServiceName,
                           "MS Allegiance Game Server",
                           SERVICE_ALL_ACCESS,
                           SERVICE_WIN32_OWN_PROCESS,
                           SERVICE_AUTO_START,
                           SERVICE_ERROR_NORMAL,
                           szPath,
                           NULL,
                           NULL,
                           NULL,
                           OLE2CT(bstrUser),
                           OLE2CT(bstrPassword) );

    if (hSvc.IsNull())
		return Error("Cannot create the service.  Service not installed.", GUID_NULL,
			HRESULT_FROM_WIN32(GetLastError()));
*/
	return S_OK;
}

STDMETHODIMP CAllegianceController::RemoveService()
{
  USES_CONVERSION;

  char szPath[_MAX_PATH];
  char szDrive[_MAX_DRIVE];
  char szDir[_MAX_DIR];
	char szFname[_MAX_FNAME];
  char szCommandLine[_MAX_PATH+50];

  GetModuleFileName(_Module.m_hInst,szPath,sizeof(szPath));
	_splitpath(szPath, szDrive, szDir, szFname, NULL);
	_makepath(szPath, szDrive, szDir, szFname, "exe");

  sprintf (szCommandLine, "%s -UnRegserver", szPath);

  system(szCommandLine);

  /*
    TCServiceHandle hSCM = OpenSCManager(NULL,NULL,SC_MANAGER_ALL_ACCESS);
	if (hSCM.IsNull())
		return Error("Cannot open Service Control Manager.", GUID_NULL,
			HRESULT_FROM_WIN32(GetLastError()));

    TCServiceHandle hSvc = OpenService(hSCM, g_szServiceName, SERVICE_ALL_ACCESS);
    if (hSvc.IsNull())
		return Error("Cannot open service.  Service not removed.", GUID_NULL,
			HRESULT_FROM_WIN32(GetLastError()));

    SERVICE_STATUS ss;
    QueryServiceStatus(hSvc, &ss);
    if (ss.dwCurrentState!=SERVICE_STOPPED)
		return Error("Unable to remove service while it is running.", GUID_NULL,
			HRESULT_FROM_WIN32(GetLastError()));

    if (!DeleteService(hSvc))
		return Error("Unable to remove service.", GUID_NULL,
			HRESULT_FROM_WIN32(GetLastError()));
*/
	return S_OK;
}

STDMETHODIMP CAllegianceController::QueryService()
{
	// TODO: Add your implementation code here

	return S_OK;
}

STDMETHODIMP CAllegianceController::KillService()
{
	// TODO: Add your implementation code here

	return S_OK;
}
