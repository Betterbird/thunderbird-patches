// Copyright (c) 2022, The Betterbird Project, Jörg Knobloch. All rights reserved.

#include <shlobj.h>
#include <shlwapi.h>
#include <objbase.h>
#include <windows.h>
#include <stdio.h>
#include <tlhelp32.h>
#define MAX_PATH_PROFILE MAX_PATH + 1000

#define DOPRINT 0

#if DOPRINT
char msg[MAX_PATH + 100];
FILE* f = NULL;
#endif

bool checkInfo(PROCESSENTRY32& processInfo, TCHAR *appPath) {
  if (_wcsicmp(processInfo.szExeFile, L"betterbird.exe") == 0) {
    MODULEENTRY32 entry;
    entry.dwSize = sizeof(MODULEENTRY32);
    HANDLE hModuleSnap = CreateToolhelp32Snapshot(TH32CS_SNAPMODULE, processInfo.th32ProcessID); 
    Module32First(hModuleSnap, &entry);
#if DOPRINT
    sprintf_s(msg, sizeof(msg), "BetterBirdRunningOnOtherPath: Process  %S\n", entry.szExePath);
    fprintf(f, msg);
#endif
    if (wcslen(appPath) != (wcslen(entry.szExePath) - strlen("\\core\\betterbird.exe")) ||
        wcsncmp(entry.szExePath, appPath, wcslen(appPath)) != 0) {
      return true;
    }
  }
  return false;
}

bool BetterBirdRunningOnOtherPath(TCHAR *appPath) {
#if DOPRINT
  fopen_s(&f, "D:\\Desktop\\launcher.txt", "a");
  sprintf_s(msg, sizeof(msg), "BetterBirdRunningOnOtherPath: Launcher %S\n", appPath);
  fprintf(f, msg);
#endif

  PROCESSENTRY32 processInfo;
  processInfo.dwSize = sizeof(processInfo);
  HANDLE processesSnapshot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, NULL);
  if (processesSnapshot == INVALID_HANDLE_VALUE) {
#if DOPRINT
    fclose(f);
#endif
    return false;
  }

  bool found;
  Process32First(processesSnapshot, &processInfo);
  found = checkInfo(processInfo, appPath);
  if (found) {
    CloseHandle(processesSnapshot);
#if DOPRINT
    fprintf(f, "Found instance on different path\n");
    fclose(f);
#endif
    return true;
  }

  while (Process32Next(processesSnapshot, &processInfo)) {
    found = checkInfo(processInfo, appPath);
    if (found) {
      CloseHandle(processesSnapshot);
#if DOPRINT
      fprintf(f, "Found instance on different path\n");
      fclose(f);
#endif
      return true;
    }
  }

  CloseHandle(processesSnapshot);
#if DOPRINT
  fprintf(f, "Found NO instance on different path\n");
  fclose(f);
#endif
  return false;
}

int WINAPI wWinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, PWSTR lpCmdLine, int nCmdShow) {
  TCHAR appPath[MAX_PATH];
  TCHAR cacheFile[MAX_PATH];
  TCHAR profilePath[MAX_PATH_PROFILE];
  SHELLEXECUTEINFO ShExecInfo;

  GetModuleFileName(NULL, appPath, MAX_PATH);
  // Remove own executable name from path.
  TCHAR *lastSlash = wcsrchr(appPath, L'\\');
  *lastSlash = 0;

  // Prepare profile folder path.
  if (BetterBirdRunningOnOtherPath(appPath)) {
    wcscpy_s(profilePath, L"-new-instance -profile \"");
  } else {
    wcscpy_s(profilePath, L"-profile \"");
  }

  wcscat_s(profilePath, MAX_PATH_PROFILE, appPath);
  wcscat_s(profilePath, MAX_PATH_PROFILE, L"\\profile\"");
  // Hand on the command line for opening mailto: URLs.
  wcscat_s(profilePath, MAX_PATH_PROFILE, L" ");
  wcscat_s(profilePath, MAX_PATH_PROFILE, lpCmdLine);

#if 0
  // Path to the cache file we want to delete.
  wcscpy_s(cacheFile, appPath);
  wcscat_s(cacheFile, MAX_PATH_PROFILE, L"\\profile\\addonStartup.json.lz4");
  bool res = DeleteFileW(cacheFile);
#if DOPRINT
  DWORD err = GetLastError();
  sprintf_s(msg, sizeof(msg), "BetterbirdLauncher: Deleted %S with success %d %lx\n", cacheFile, res, err);
  fprintf(f, msg);
#endif
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