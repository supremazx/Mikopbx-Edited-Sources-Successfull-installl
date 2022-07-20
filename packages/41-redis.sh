#!/bin/bash

LIB_VERSION='6.2.1';
LIB_URL="https://download.redis.io/releases/redis-6.2.1.tar.gz";
srcDirName=$(downloadFile "$LIB_URL");
(
  cd "$srcDirName" || exit;
  {
    make PREFIX=/;
    make install;
  } >> "$LOG_FILE" 2>> "$LOG_FILE";
)

rm -rf "$srcDirName" ./zephir;
