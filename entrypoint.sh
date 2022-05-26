#!/bin/bash
set -e

api_url="https://api.agify.io/?name=${INPUT_NAME}"
echo $api_url

name=$(curl "${api_url}" | jq ".name")
echo $name

echo "::set-output name=person_name::$name"
