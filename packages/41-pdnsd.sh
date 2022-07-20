#!/bin/bash

LIB_VERSION='1.2.9a-par';
LIB_URL="http://deb.debian.org/debian/pool/main/p/pdnsd/pdnsd_1.2.9a-par.orig.tar.gz";
srcDirName=$(downloadFile "$LIB_URL");
(
  cd "$srcDirName" || exit;
  {
    ./configure;
    make;
    make install;
  } >> "$LOG_FILE" 2>> "$LOG_FILE";
)

rm -rf "$srcDirName";
