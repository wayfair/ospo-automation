#!/bin/bash

# Extract single value from YAML key
function get_yaml_value {
    yq $1 $REQUEST_FILE
}

# Derive constants from yq values
GITHUB_USER=$(get_yaml_value '.github_user')
REPO_OWNER=$(get_yaml_value '.repo_owner')
REPO_NAME=$(get_yaml_value '.repo_name')
REPO_URL="https://github.com/${REPO_OWNER}/${REPO_NAME}"
ADMIN_PERMS=$(get_yaml_value '.admin_perms')

# Assert user filing PR is the user defined in YAML
if [[ "${GITHUB_USER}" == "${GITHUB_ACTOR}" ]]; then
    echo "GITHUB_USER=${GITHUB_USER}" >> $GITHUB_ENV
else
    echo "GitHub username does not match PR author! Got '${GITHUB_USER},' expected '${GITHUB_ACTOR}'"
    exit 1
fi

# Confirm owner + repo data form a valid repository URL 
if [ $(curl -s -o /dev/null -w "%{http_code}" ${REPO_URL}) -eq 200 ]; then
    echo "REPO_OWNER=${REPO_OWNER}" >> $GITHUB_ENV
    echo "REPO_NAME=${REPO_NAME}" >> $GITHUB_ENV
else
    echo "Unable to verify repository URL! Tried: https://github.com/${REPO_OWNER}/${REPO_NAME}"
    exit 1
fi
