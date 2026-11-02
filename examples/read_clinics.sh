#!/bin/sh
# Read listed clinics near Las Vegas and the field definitions. No sign-in needed.
set -eu
API=${API:-https://dev-1.api.wenected.com}
curl -sS "$API/local/clinics/?lat=36.17&lng=-115.14&radius_mi=5"
curl -sS "$API/local/fields/"
