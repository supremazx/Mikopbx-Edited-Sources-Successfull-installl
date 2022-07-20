#!/bin/bash

LIB_VERSION='1.0.1';
LIB_URL="https://github.com/jbboehr/php-psr/archive/v1.0.1.tar.gz";
LIB_PRIORITY='40';
LIB_PHP_MODULE_PREFIX_INI='';
LIB_CONFIGURE_OPTIONS='';
LIB_NAME='psr';

installPhpExtension "$LIB_NAME" "$LIB_URL" "$LIB_PRIORITY" "$LIB_PHP_MODULE_PREFIX_INI" "$LIB_CONFIGURE_OPTIONS"
