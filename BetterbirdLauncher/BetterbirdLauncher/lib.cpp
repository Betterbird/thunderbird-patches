// Copyright (c) 2023, The Betterbird Project, Jörg Knobloch. All rights reserved.

#include <windows.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>

#define MAX_PATH_PROFILE MAX_PATH + 1000

#define DOPRINT 1

#if DOPRINT
FILE* f = NULL;
#endif

TCHAR* fileToMemory(TCHAR* filename) {
  struct _stat theStat;
  if(_wstat(filename, &theStat)) {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Can't stat %ls\n", filename);
#endif
    return NULL;
  }
  size_t len = theStat.st_size;
#if DOPRINT
  fwprintf(f, L"BetterbirdLauncher: File %ls has %zd bytes\n", filename, len);
#endif

  FILE* stream;
  errno_t err = _wfopen_s(&stream, filename, L"r, ccs=UTF-8");
  if (err) {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Can't open %ls\n", filename);
#endif
    return NULL;
  }

  size_t bufferSize = (len + 1) * sizeof(TCHAR);
  TCHAR* content = (TCHAR*)malloc(bufferSize);
  size_t numread = fread_s(content, bufferSize, sizeof(TCHAR), len, stream);
  content[numread] = 0;
#if DOPRINT
  fwprintf(f, L"BetterbirdLauncher: Read %zd UTF-16 characters from %ls\n", numread, filename);
#endif
  fclose(stream);
  return content;
}

void replaceFileContent(const TCHAR* filename, const TCHAR* content) {
  if (DeleteFileW(filename)) {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Deleted %ls\n", filename);
#endif
  } else {
    DWORD err = GetLastError();
    if (err != ERROR_FILE_NOT_FOUND) {
#if DOPRINT
      fwprintf(f, L"BetterbirdLauncher: Can't delete %ls, error %lx\n", filename, err);
#endif
      return;
    }
  }

  FILE* stream;
  errno_t err = _wfopen_s(&stream, filename, L"w, ccs=UTF-8");
  if (err) {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Can't create %ls\n", filename);
#endif
    return;
  }
  fseek(stream, 0L, SEEK_SET); // Beastly trick to get rid of the BOM.
  size_t len = wcslen(content);
  size_t written = fwrite(content, sizeof(TCHAR), len, stream);
  if (len != written) {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Writing to %ls failed\n", filename);
#endif
  } else {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Written %zd UTF-8 code points to %ls\n", len, filename);
#endif
  }
  fclose(stream);
}

void replaceAbsolutePathsInProfileData(TCHAR* appPath) {
#if DOPRINT
  _wfopen_s(&f, L"D:\\Desktop\\launcher.txt", L"a, ccs=UTF-8");
  fwprintf(f, L"BetterbirdLauncher: Launcher %ls\n", appPath);
#endif
  TCHAR profilePath[MAX_PATH_PROFILE];
  wcscpy_s(profilePath, appPath);
  wcscat_s(profilePath, MAX_PATH_PROFILE, L"\\profile");

  TCHAR lastProfileLocationPath[MAX_PATH_PROFILE];
  wcscpy_s(lastProfileLocationPath, appPath);
  wcscat_s(lastProfileLocationPath, MAX_PATH_PROFILE, L"\\last-profile-location.txt");
  TCHAR* lastProfileLocation = fileToMemory(lastProfileLocationPath);
  if (!lastProfileLocation) {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: %ls not found\n", lastProfileLocationPath);
#endif
  } else {
    fwprintf(f, L"BetterbirdLauncher: Last profile location: %ls\n", lastProfileLocation);
  }

  // Write out current profile location.
  replaceFileContent(lastProfileLocationPath, profilePath);
#if DOPRINT
  fclose(f);
#endif
}