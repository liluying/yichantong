#!/usr/bin/env bash
set -euo pipefail
ROOT=$(cd -- "$(dirname -- "$0")" && pwd)
: "${ANDROID_NDK_HOME:?Set ANDROID_NDK_HOME to Android NDK r27c (27.2.12479018)}"
TOOLCHAIN="$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin"
for ABI in arm64-v8a armeabi-v7a; do
 if [ "$ABI" = arm64-v8a ]; then COMPILER="$TOOLCHAIN/aarch64-linux-android21-clang"; else COMPILER="$TOOLCHAIN/armv7a-linux-androideabi21-clang"; fi
 mkdir -p "$ROOT/build/android/$ABI"
 "$COMPILER" -O2 -Wall -Wextra -Werror -std=c11 -fPIC -ffp-contract=off -shared "$ROOT/recovered/excavator_recovered.c" "$ROOT/recovered/excavator_geometry.c" -lm -o "$ROOT/build/android/$ABI/libexcavator_recovered.so"
 mkdir -p "$ROOT/build/android/$ABI/hybrid"
 "$COMPILER" -O2 -Wall -Wextra -Werror -std=c11 -fPIC -ffp-contract=off -shared "$ROOT/recovered/excavator_recovered.c" "$ROOT/recovered/excavator_geometry.c" "$ROOT/recovered/excavator_fallback.c" -Wl,-soname,libexcavator.so -lm -ldl -o "$ROOT/build/android/$ABI/hybrid/libexcavator.so"
 "$COMPILER" -O2 -Wall -Wextra -Werror -std=c11 -fPIC -ffp-contract=off -shared "$ROOT/recovered/gnss_transform.c" -lm -o "$ROOT/build/android/$ABI/libgnss_transform_recovered.so"
done
