#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_devour_github info
PYTHONPATH=src python -m gbt_devour_github check --payload '{"repo": "<在此填写>"}'
PYTHONPATH=src python -m gbt_devour_github run   --payload '{"repo": "<在此填写>"}'
