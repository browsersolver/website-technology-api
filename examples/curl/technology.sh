#!/usr/bin/env bash
# Website Technology API – cURL example
# Usage: BROWSERSOLVER_API_KEY=your-key bash technology.sh
set -euo pipefail

curl -sS --fail-with-body -G "https://api.browsersolver.com/v1/website/technology" \
  -H "x-api-key: ${BROWSERSOLVER_API_KEY}" \
  --data-urlencode query=https://www.shopify.com/
