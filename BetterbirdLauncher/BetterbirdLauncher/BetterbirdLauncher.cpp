#include <shlobj.h>
#include <shlwapi.h>
#include <objbase.h>
#include <windows.h>
#include <stdio.h>
#define MAX_PATH_PROFILE MAX_PATH + 50

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow) {
  TCHAR appPath[MAX_PATH];
  TCHAR cacheFile[MAX_PATH];
  TCHAR profilePath[MAX_PATH_PROFILE];
  SHELLEXECUTEINFO ShExecInfo;

  GetModuleFileName(NULL, appPath, MAX_PATH);
  // Remove own executable name from path.
  TCHAR *lastSlash = wcsrchr(appPath, L'\\');
  *lastSlash = 0;

  // Prepare profile folder path.
  wcscpy_s(profilePath, L"-new-instance -profile \"");
  wcscat_s(profilePath, MAX_PATH_PROFILE, appPath);
  wcscat_s(profilePath, MAX_PATH_PROFILE, L"\\profile\"");

  // Path to the cache file we want to delete.
  wcscpy_s(cacheFile, appPath);
  wcscat_s(cacheFile, MAX_PATH_PROFILE, L"\\profile\\addonStartup.json.lz4");
  bool res = DeleteFileW(cacheFile);
#if 0
  DWORD err = GetLastError();
  char msg[MAX_PATH + 100];
  sprintf_s(msg, sizeof(msg), "BetterbirdLauncher: Deleted %S with success %d %lx\n", cacheFile, res, err);
  OutputDebugStringA(msg);
#endif

  // Add executable.
  wcscat_s(appPath, MAX_PATH, L"\\core\\betterbird.exe");

  ShExecInfo.cbSize = sizeof(SHELLEXECUTEINFO);
  ShExecInfo.fMask = NULL;
  ShExecInfo.hwnd = NULL;
  ShExecInfo.lpVerb = NULL;
  ShExecInfo.lpFile = appPath;
  ShExecInfo.lpParameters = profilePath;
  ShExecInfo.lpDirectory = NULL;
  ShExecInfo.nShow = SW_NORMAL;
  ShExecInfo.hInstApp = NULL;

  ShellExecuteEx(&ShExecInfo);

  return 0;
}