#include <shlobj.h>
#include <shlwapi.h>
#include <objbase.h>
#define MAX_PATH_PROFILE MAX_PATH + 50

int main() {
  TCHAR appPath[MAX_PATH];
  TCHAR profilePath[MAX_PATH_PROFILE];
  SHELLEXECUTEINFO ShExecInfo;

  GetModuleFileName(NULL, appPath, MAX_PATH);
  // Remove own executable name from path.
  TCHAR *lastSlash = wcsrchr(appPath, L'\\');
  *lastSlash = 0;

  // Prepare profile folder path.
  wcscpy_s(profilePath, appPath);
  wcscpy_s(profilePath, L"-profile -no-remote \"");
  wcscat_s(profilePath, MAX_PATH_PROFILE, appPath);
  wcscat_s(profilePath, MAX_PATH_PROFILE, L"\\profile\"");

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