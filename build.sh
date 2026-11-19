#!/usr/bin/env bash
# Vector Kernel Build Script for POCO X4 Pro 5G (veux / peux)
# Official-Xiaomi-based kernel tree build infrastructure
# Note: KSU / KPM features are deferred until kernel source porting.

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

VARIANT="normal"
JOBS="$(nproc 2>/dev/null || echo 4)"
BUILD_DATE="$(date -u +%Y%m%d)"
DEFCONFIG="vendor/veux-qgki-debug_defconfig"
OUT_BASE="$ROOT_DIR/out"
DIST_DIR="$ROOT_DIR/dist"

usage() {
    cat <<EOF
Usage: $0 [OPTIONS]

Options:
  --normal       Build the default kernel only (default)
  --ksu          [TODO: deferred until KSU source ported]
  --both         [TODO: deferred until KSU source ported]
  -j, --jobs N   Number of parallel make jobs (default: $JOBS)
  --clean        Clean output directories before building
  -h, --help     Show this help message
