#!/usr/bin/env bash
set -euo pipefail
ROOT=$(cd -- "$(dirname -- "$0")" && pwd)
PYTHON_BIN=${TEST_PYTHON:-python3}
make -C "$ROOT/native"
"$PYTHON_BIN" "$ROOT/tests/test_native.py"
"$PYTHON_BIN" "$ROOT/tests/test_mode2.py"
"$PYTHON_BIN" "$ROOT/tests/test_mode3.py"
"$PYTHON_BIN" "$ROOT/tests/test_gnss.py"
"$PYTHON_BIN" "$ROOT/tests/check_apk.py"
"$PYTHON_BIN" "$ROOT/tests/check_native_exports.py"
"$PYTHON_BIN" "$ROOT/tests/check_hybrid.py"
