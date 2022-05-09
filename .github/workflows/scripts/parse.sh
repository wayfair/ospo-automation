#!/bin/bash

# Extract single value from YAML key
function get_yaml_value {
    yq $1 $REQUEST_FILE
}

# Derive constants from yq values
TYPE="$(get_yaml_value '.request_type')"
USER="$(get_yaml_value '.github_user')"
OWNER="$(get_yaml_value '.repo_owner')"
REPO="$(get_yaml_value '.repo_name')"
URL="https://github.com/${OWNER}/${REPO}"

# Assert user is requesting a repository fork
if [[ "${TYPE}" == "fork" ]]; then
    echo "TYPE=${TYPE}" >> $GITHUB_ENV
fi

# Assert user filing PR is the user defined in YAML
if [[ "${USER}" == "${GITHUB_USER}" ]]; then
    echo "USER=${USER}" >> $GITHUB_ENV
fi

# Confirm owner + repo data form a valid repository URL 
if [[ `curl -s -o /dev/null -w "%{http_code}" ${URL}` == 200 ]]; then
    echo "OWNER=${OWNER}" >> $GITHUB_ENV
    echo "REPO=${REPO}" >> $GITHUB_ENV
fi
