#!/bin/bash
set -e

api_url="https://api.agify.io/?name=${INPUT_NAME}"
echo $api_url

person_name=$(curl "${api_url}" | jq ".name")
echo $person_name

echo "::set-output name=person_name::$person_name"
