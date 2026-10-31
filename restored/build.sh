#!/usr/bin/env bash
set -euo pipefail
ROOT=$(cd -- "$(dirname -- "$0")" && pwd)
JAVA_BIN=${JAVA_HOME:+$JAVA_HOME/bin/}java
JAVAC_BIN=${JAVA_HOME:+$JAVA_HOME/bin/}javac
KEYTOOL_BIN=${JAVA_HOME:+$JAVA_HOME/bin/}keytool
mkdir -p "$ROOT/build/classes" "$ROOT/build/framework"
"$JAVA_BIN" -jar "$ROOT/tools/apktool-2.12.1.jar" b -j 4 -p "$ROOT/build/framework" "$ROOT/android" -o "$ROOT/build/yct-restored-unsigned.apk"
"$JAVAC_BIN" -cp "$ROOT/tools/apksig-8.9.2.jar" -d "$ROOT/build/classes" "$ROOT/scripts/SignApk.java"
if [ ! -f "$ROOT/build/debug.keystore" ]; then
 "$KEYTOOL_BIN" -genkeypair -noprompt -storetype PKCS12 -keystore "$ROOT/build/debug.keystore" -storepass android -alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 -validity 3650 -dname 'CN=Local Android Debug,O=Local Development,C=CN'
fi
"$JAVA_BIN" -cp "$ROOT/build/classes:$ROOT/tools/apksig-8.9.2.jar" SignApk "$ROOT/build/debug.keystore" "$ROOT/build/yct-restored-unsigned.apk" "$ROOT/build/yct-restored-debug.apk"
