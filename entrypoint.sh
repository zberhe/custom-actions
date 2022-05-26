#!/bin/bash
set -e

api_url="https://api.agify.io/?name=${INPUT_NAME}"
echo $api_url

age=$(curl "${api_url}" | jq ".age")
echo $age

echo "::set-output name=person_name::$age"
