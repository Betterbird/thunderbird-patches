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
    fprintf(f, "BetterbirdLauncher: Can't stat %S\n", filename);
#endif
    return NULL;
  }
  size_t len = theStat.st_size;
#if DOPRINT
  fprintf(f, "BetterbirdLauncher: File %S has %zd characters\n", filename, len);
#endif

  FILE* stream;
  errno_t err = _wfopen_s(&stream, filename, L"r, ccs=UTF-8");
  if (err) {
#if DOPRINT
    fprintf(f, "BetterbirdLauncher: Can't open %S\n", filename);
#endif
    return NULL;
  }

  size_t bufferSize = (len + 1) * sizeof(TCHAR);
  TCHAR* content = (TCHAR*)malloc(bufferSize);
  size_t numread = fread_s(content, bufferSize, sizeof(TCHAR), len, stream);
  content[numread] = 0;
  if (len != numread) {
#if DOPRINT
    fprintf(f, "BetterbirdLauncher: Reading from %S failed, only read %zd characters\n", filename, numread);
#endif
  } else {
#if DOPRINT
    fprintf(f, "BetterbirdLauncher: Read %zd UTF-8 characters from %S\n", len, filename);
#endif
  }
  fclose(stream);
  return content;
}

void replaceFileContent(TCHAR* filename, TCHAR* content) {
  if (DeleteFileW(filename)) {
#if DOPRINT
    fprintf(f, "BetterbirdLauncher: Deleted %S\n", filename);
#endif
  } else {
    DWORD err = GetLastError();
    if (err != ERROR_FILE_NOT_FOUND) {
#if DOPRINT
      fprintf(f, "BetterbirdLauncher: Can't delete %S, error %lx\n", filename, err);
#endif
      return;
    }
  }

  FILE* stream;
  errno_t err = _wfopen_s(&stream, filename, L"w, ccs=UTF-8");
  if (err) {
#if DOPRINT
    fprintf(f, "BetterbirdLauncher: Can't create %S\n", filename);
#endif
    return;
  }
  fseek(stream, 0L, SEEK_SET); // Beastly trick to get rid of the BOM.
  size_t len = wcslen(content);
  size_t written = fwrite(content, sizeof(TCHAR), len, stream);
  if (len != written) {
#if DOPRINT
    fprintf(f, "BetterbirdLauncher: Writing to %S failed\n", filename);
#endif
  } else {
#if DOPRINT
    fprintf(f, "BetterbirdLauncher: Written %zd UTF-8 characters to %S\n", len, filename);
#endif
  }
  fclose(stream);
}

void replaceAbsolutePathsInProfileData(TCHAR* appPath) {
#if DOPRINT
  fopen_s(&f, "D:\\Desktop\\launcher.txt", "a");
  fprintf(f, "BetterbirdLauncher: Launcher %S\n", appPath);
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
    fprintf(f, "BetterbirdLauncher: %S not found\n", lastProfileLocationPath);
#endif
  } else {
    fprintf(f, "BetterbirdLauncher: Last profile location: %S\n", lastProfileLocation);
  }

  // Write out current profile location.
  replaceFileContent(lastProfileLocationPath, profilePath);
#if DOPRINT
  fclose(f);
#endif
}