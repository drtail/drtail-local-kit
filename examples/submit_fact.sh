#!/bin/sh
# Submit one fact with a Dr.Tail Local access token (from your app's OAuth connection).
# Usage: TOKEN=dtl_at_... API=https://prod.api.wenected.com ./submit_fact.sh
set -eu
curl -sS -X POST "$API/local/claims/" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "clinic": "desert-paws-animal-hospital",
    "field": "species",
    "value": ["dog", "cat"],
    "source": "clinic_website",
    "method": "web",
    "source_url": "https://example.com/services",
    "observed_at": "2026-11-02T10:00:00-08:00",
    "idempotency_key": "species-desert-paws-2026-11-02"
  }'
