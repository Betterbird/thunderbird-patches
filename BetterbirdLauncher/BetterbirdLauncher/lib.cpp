// Copyright (c) 2023, The Betterbird Project, Jörg Knobloch. All rights reserved.

#include <windows.h>
#include <stdio.h>
#include <math.h>
#include <sys/types.h>
#include <sys/stat.h>
#include "lz4.h"

#define MAX_PATH_PROFILE MAX_PATH + 1000

const short DOUBLE_BACKSLASH = 1;
const short BACKSLASH_TO_SLASH = 2;
// XXX TODO: Support these two following:
const short ENCODE_PERCENT = 4;
const short ENCODE_JSON_STYLE = 8;

#define DOPRINT 0

#if DOPRINT
FILE* f = NULL;
#endif

char* fileToMemory(TCHAR* filename, size_t* size) {
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
  errno_t err = _wfopen_s(&stream, filename, L"rb");
  if (err) {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Can't open %ls\n", filename);
#endif
    return NULL;
  }

  size_t bufferSize = len + 1;
  char* content = (char*)malloc(bufferSize);
  if (!content) return NULL;
  size_t numread = fread_s(content, bufferSize, 1, len, stream);
  *size = numread;
#if DOPRINT
  fwprintf(f, L"BetterbirdLauncher: Read %zd bytes from %ls\n", numread, filename);
#endif
  fclose(stream);
  return content;
}

TCHAR* fileToMemoryW(TCHAR* filename) {
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
  if (!content) return NULL;
  size_t numread = fread_s(content, bufferSize, sizeof(TCHAR), len, stream);
  content[numread] = 0;
#if DOPRINT
  fwprintf(f, L"BetterbirdLauncher: Read %zd UTF-16 characters from %ls\n", numread, filename);
#endif
  fclose(stream);
  return content;
}

void replaceFileContent(const TCHAR* filename, const char* content, size_t len) {
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
  errno_t err = _wfopen_s(&stream, filename, L"wb");
  if (err) {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Can't create %ls\n", filename);
#endif
    return;
  }
  size_t written = fwrite(content, 1, len, stream);
  if (len != written) {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Writing to %ls failed\n", filename);
#endif
  } else {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Written %zd bytes to %ls\n", len, filename);
#endif
  }
  fclose(stream);
}

void replaceFileContentW(const TCHAR* filename, const TCHAR* content) {
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

TCHAR* changeContent(const TCHAR* profilePath, const TCHAR* lastProfilePath, const TCHAR* content, short substitution, size_t* hits) {
  *hits = 0;

  // Double up \ ore replace with / in profile path and last profile path.
  size_t newProfilePathLen = 0;
  TCHAR* newProfilePath = (TCHAR*)malloc((2 * wcslen(profilePath) + 1) * sizeof(TCHAR));
  if (!newProfilePath) return NULL;
  for (size_t i = 0; i < wcslen(profilePath); i++) {
    newProfilePath[newProfilePathLen++] = profilePath[i];
    if (substitution & BACKSLASH_TO_SLASH) {
      // Change path for use in file:// URL.
      if (profilePath[i] == '\\') newProfilePath[newProfilePathLen - 1] = '/';
    } else if (substitution & DOUBLE_BACKSLASH) {
      // Double up the backslashes.
      if (profilePath[i] == '\\') newProfilePath[newProfilePathLen++] = '\\';
    } else if (substitution & ENCODE_PERCENT) {
      // XXX TODO: Percent encode: á becomes: %C3%A1
    } else if (substitution & ENCODE_JSON_STYLE) {
      // XXX TODO: Encode JS style: á becomes: \u00e9.
    }
  }
  newProfilePath[newProfilePathLen] = 0;

  size_t newlastProfilePathLen = 0;
  TCHAR* newlastProfilePath = (TCHAR*)malloc((2 * wcslen(lastProfilePath) + 1) * sizeof(TCHAR));
  if (!newProfilePath) return NULL;
  for (size_t i = 0; i < wcslen(lastProfilePath); i++) {
    newlastProfilePath[newlastProfilePathLen++] = lastProfilePath[i];
    if (substitution & BACKSLASH_TO_SLASH) {
      if (lastProfilePath[i] == '\\') newlastProfilePath[newlastProfilePathLen - 1] = '/';
    } else if (substitution & DOUBLE_BACKSLASH) {
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
  if (!newContent) return NULL;

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
      (*hits)++;
    }
  }
  newContent[newlen] = 0;

  free(newProfilePath);
  free(newlastProfilePath);

  return newContent;
}

void changeAbsolutePathsLZ4(const TCHAR* profilePath, const TCHAR* lastProfilePath, const TCHAR* filename, short substitution) {
  TCHAR currentFile[MAX_PATH_PROFILE];
  wcscpy_s(currentFile, profilePath);
  wcscat_s(currentFile, MAX_PATH_PROFILE, filename);
  size_t len;
  int outlen = 0;
  char* content = fileToMemory(currentFile, &len);
  if (!content) return;

  // Decompress.
  static const char MAGIC_NUMBER[] = "mozLz40";
  static size_t HEADER_LENGTH = sizeof(MAGIC_NUMBER) + 4;
  if (len < HEADER_LENGTH || memcmp(MAGIC_NUMBER, content, sizeof(MAGIC_NUMBER) - 1)) {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Something wrong with LZ4 file %ls\n", currentFile);
#endif
    return;
  }
  for (size_t i = sizeof(MAGIC_NUMBER); i < HEADER_LENGTH; i++) {
    // Size is encoded in 4 bytes, little endian.
    outlen += (unsigned char)content[i] << (8 * (i - sizeof(MAGIC_NUMBER)));
  }
  char* decompressed = (char*)malloc(outlen + 1);
  if (!decompressed) {
    free(content);
    return;
  }
  int decompressedSize =
    LZ4_decompress_safe(content + HEADER_LENGTH, decompressed, (int)(len - HEADER_LENGTH), outlen);
  free(content);
  if (decompressedSize != outlen) {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Something wrong with LZ4 decompression, expected %d, got %d\n", outlen, decompressedSize);
#endif
    free(decompressed);
    return;
  }
  decompressed[outlen] = 0;
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Decompressed LZ4 file %ls, length %d\n", currentFile, outlen);
#endif

  // Convert to TCHAR.
  TCHAR *decompressedW = (TCHAR*)malloc((outlen + 1) * sizeof(TCHAR));
  if (!decompressedW) {
    free(decompressed);
    return;
  }
  int lenW = MultiByteToWideChar(CP_UTF8, 0, decompressed, outlen, decompressedW, outlen);
  free(decompressed);
  decompressedW[lenW] = 0;

  size_t hits;
  TCHAR* newContentW = changeContent(profilePath, lastProfilePath, decompressedW, substitution, &hits);
  free(decompressedW);
  if (!newContentW) return;

  // Convert back to UTF-8, worst case, all the chars in the new path are 4-byte code points.
  // If we're doing backslash double-up, we double that space.
  int multiplier = 4;
  if (substitution & DOUBLE_BACKSLASH) multiplier *= 2;
  if (substitution & ENCODE_PERCENT) multiplier *= 3;
  int newsize = outlen + multiplier * (int)hits * (int)wcslen(profilePath);
  char* newContent = (char*)malloc(newsize + 1);
  if (!newContent) {
    free(newContentW);
    return;
  }
  int newlen = WideCharToMultiByte(CP_UTF8, 0, newContentW, (int)wcslen(newContentW), newContent, newsize, NULL, NULL);
  free(newContentW);
  newContent[newlen] = 0;

  // Compress.
  int compressedSize = LZ4_compressBound(newlen);
  char* compressed = (char*)malloc(HEADER_LENGTH + compressedSize);
  if (!compressed) {
    free(newContent);
    return;
  }

  // Write header and size of decompressed data at the beginning
  memcpy(compressed, MAGIC_NUMBER, sizeof(MAGIC_NUMBER));
  for (size_t i = sizeof(MAGIC_NUMBER); i < HEADER_LENGTH; i++) {
    compressed[i] = (newlen >> (8 * (i - sizeof(MAGIC_NUMBER)))) & 0xff;
  }
  int compressedLen = LZ4_compress_default(newContent, compressed + HEADER_LENGTH, newlen, compressedSize);
  free(newContent);
  compressedLen += (int)HEADER_LENGTH;

  replaceFileContent(currentFile, compressed, compressedLen);
  free(compressed);
}

void changeAbsolutePaths(const TCHAR* profilePath, const TCHAR* lastProfilePath, const TCHAR* filename, short substitution) {
  TCHAR currentFile[MAX_PATH_PROFILE];
  wcscpy_s(currentFile, profilePath);
  wcscat_s(currentFile, MAX_PATH_PROFILE, filename);
  TCHAR* content = fileToMemoryW(currentFile);
  if (!content) return;

  size_t hits;
  TCHAR* newContent = changeContent(profilePath, lastProfilePath, content, substitution, &hits);
  if (!newContent) {
    free(content);
    return;
  }
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Processed %ls, length (old:new): %zd:%zd\n", currentFile, wcslen(content), wcslen(newContent));
#endif
  replaceFileContentW(currentFile, newContent);

  free(content);
  free(newContent);
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
  TCHAR* lastProfilePath = fileToMemoryW(lastProfilePathFile);
  BOOL writeNew = true;
  if (!lastProfilePath) {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: %ls not found\n", lastProfilePathFile);
#endif
  } else {
#if DOPRINT
    fwprintf(f, L"BetterbirdLauncher: Last profile location: %ls\n", lastProfilePath);
#endif

    if (wcscmp(profilePath, lastProfilePath) == 0) {
#if DOPRINT
      fwprintf(f, L"BetterbirdLauncher: Profile location has not changed, now: %ls\n", profilePath);
#endif
      writeNew = false;
    } else {
#if DOPRINT
      fwprintf(f, L"BetterbirdLauncher: Profile location has changed, now: %ls\n", profilePath);
#endif
      // In folderCache.json non-ASCII characters are encoded like so:
      // portableéé: portable\u00e9\u00e9 - ENCODE_JSON_STYLE
      changeAbsolutePaths(profilePath, lastProfilePath, L"prefs.js", DOUBLE_BACKSLASH);
      changeAbsolutePaths(profilePath, lastProfilePath, L"folderCache.json", DOUBLE_BACKSLASH | ENCODE_JSON_STYLE);

      /// In extensions.json and addonStartup.json non-ASCII characters are encoded like so in file:// URLs.
      // portableéé: portable%C3%A9%C3%A9.
      changeAbsolutePaths(profilePath, lastProfilePath, L"extensions.json", DOUBLE_BACKSLASH);
      changeAbsolutePaths(profilePath, lastProfilePath, L"extensions.json", BACKSLASH_TO_SLASH | ENCODE_PERCENT);
      changeAbsolutePathsLZ4(profilePath, lastProfilePath, L"addonStartup.json.lz4", DOUBLE_BACKSLASH);
      changeAbsolutePathsLZ4(profilePath, lastProfilePath, L"addonStartup.json.lz4", BACKSLASH_TO_SLASH | ENCODE_PERCENT);
    }
  }

  // Write out current profile location.
  if (writeNew) replaceFileContentW(lastProfilePathFile, profilePath);
#if DOPRINT
  fclose(f);
#endif
}