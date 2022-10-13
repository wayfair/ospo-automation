#!/bin/bash

echo "Processing user-submitted YAML file: ${REQUEST_FILE}"
BASE_FILE=$(basename ${REQUEST_FILE})
REPO_NAME="${BASE_FILE%.*}"
TARGET_DIR="./${GITHUB_ORG}/${REPO_NAME}"
mkdir -p "${TARGET_DIR}"

echo "Moving YAML file to destination: ${TARGET_DIR}"
git mv ${REQUEST_FILE} ${TARGET_DIR}
