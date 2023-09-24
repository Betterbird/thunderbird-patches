// Copyright (c) 2023, The Betterbird Project, Jörg Knobloch. All rights reserved.

#include <windows.h>
#include <stdio.h>
#include <math.h>
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

void changeAbsloutePaths(const TCHAR* profilePath, const TCHAR* lastProfilePath, const TCHAR* filename, BOOL filePath) {
  TCHAR currentFile[MAX_PATH_PROFILE];
  wcscpy_s(currentFile, profilePath);
  wcscat_s(currentFile, MAX_PATH_PROFILE, filename);
  TCHAR* content = fileToMemory(currentFile);
  if (!content) return;

  // Double up \ in profile path and last profile location.
  size_t newProfilePathLen = 0;
  TCHAR* newProfilePath = (TCHAR*)malloc((2 * wcslen(profilePath) + 1) * sizeof(TCHAR));
  for (size_t i = 0; i < wcslen(profilePath); i++) {
    newProfilePath[newProfilePathLen++] = profilePath[i];
    if (filePath) {
      // Change path for use in file:// URL.
      if (profilePath[i] == '\\') newProfilePath[newProfilePathLen - 1] = '/';
    } else {
      // Double up the slashes.
      if (profilePath[i] == '\\') newProfilePath[newProfilePathLen++] = '\\';
    }
  }
  newProfilePath[newProfilePathLen] = 0;

  size_t newlastProfilePathLen = 0;
  TCHAR* newlastProfilePath = (TCHAR*)malloc((2 * wcslen(lastProfilePath) + 1) * sizeof(TCHAR));
  for (size_t i = 0; i < wcslen(lastProfilePath); i++) {
    newlastProfilePath[newlastProfilePathLen++] = lastProfilePath[i];
    if (filePath) {
      if (lastProfilePath[i] == '\\') newlastProfilePath[newlastProfilePathLen - 1] = '/';
    } else {
      if (lastProfilePath[i] == '\\') newlastProfilePath[newlastProfilePathLen++] = '\\';
    }
  }
  newlastProfilePath[newlastProfilePathLen] = 0;

  size_t len = wcslen(content);
  size_t newsize;
  TCHAR* newContent;
  if (newProfilePathLen <= newlastProfilePathLen) {
    newsize = len + 1;
  } else {
    // + 1 to round up, + 1 for the null termination.
    newsize = lround(len * (float(newProfilePathLen) / float(newlastProfilePathLen))) + 2;
  }
  newContent = (TCHAR*)malloc(newsize * sizeof(TCHAR));

  // Copy content over and replace.
  size_t newlen = 0;
  size_t i = 0;
  while (i < len) {
    if (wcsncmp(&content[i], newlastProfilePath, newlastProfilePathLen) != 0) {
      newContent[newlen++] = content[i++];
    } else {
      newContent[newlen] = 0;
      wcscat_s(newContent, newsize, newProfilePath);
      newlen += newProfilePathLen;
      i += newlastProfilePathLen;
    }
  }
  newContent[newlen] = 0;

#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Processed %ls, length (old:new): %zd:%zd%\n", currentFile, len, newlen);
#endif
  replaceFileContent(currentFile, newContent);

  free(content);
  free(newContent);
  free(newProfilePath);
  free(newlastProfilePath);
}

void replaceAbsolutePathsInProfileData(TCHAR* appPath) {
#if DOPRINT
  _wfopen_s(&f, L"D:\\Desktop\\launcher.txt", L"a, ccs=UTF-8");
  fwprintf(f, L"BetterbirdLauncher: Launcher %ls\n", appPath);
#endif
  TCHAR profilePath[MAX_PATH_PROFILE];
  wcscpy_s(profilePath, appPath);
  wcscat_s(profilePath, MAX_PATH_PROFILE, L"\\profile\\");

  TCHAR lastProfilePathFile[MAX_PATH_PROFILE];
  wcscpy_s(lastProfilePathFile, appPath);
  wcscat_s(lastProfilePathFile, MAX_PATH_PROFILE, L"\\last-profile-location.txt");
  TCHAR* lastProfilePath = fileToMemory(lastProfilePathFile);
  if (!lastProfilePath) {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: %ls not found\n", lastProfilePathFile);
#endif
  } else {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Last profile location: %ls\n", lastProfilePath);
#endif
  }

  if (wcscmp(profilePath, lastProfilePath) == 0) {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Profile location has not changed, now: %ls\n", profilePath);
#endif
  } else {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Profile location has changed, now: %ls\n", profilePath);
#endif
    changeAbsloutePaths(profilePath, lastProfilePath, L"folderCache.json", false);
    changeAbsloutePaths(profilePath, lastProfilePath, L"extensions.json", false);
    changeAbsloutePaths(profilePath, lastProfilePath, L"extensions.json", true);
    changeAbsloutePaths(profilePath, lastProfilePath, L"prefs.js", false);
  }

  // Write out current profile location.
  replaceFileContent(lastProfilePathFile, profilePath);
#if DOPRINT
  fclose(f);
#endif
}