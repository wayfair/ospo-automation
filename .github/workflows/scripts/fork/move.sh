#!/bin/bash

echo "Got value of request file from parse.sh script: ${REQUEST_FILE}"

# YAML_FILE=$(find ${ROOT_DIR} -type f -maxdepth 1 \( -iname \*.yml -o -iname \*.yaml \))

# # Find uncategorized YAML files added to the ./requests directory
# echo ${YAML_FILE} | grep .
# # Only proceed if valid YAML files are found
# if [ "$?" -eq 0 ]; then
#     # Move fork request to dedicated subfolder under /wayfair-contribs
#     echo ${YAML_FILE} | while read YAML_FILE; do
#         echo "Processing user-submitted YAML file: ${YAML_FILE}"
#         BASE_FILE=$(basename ${YAML_FILE})
#         REPO_NAME="${BASE_FILE%.*}"
#         TARGET_DIR="./${GITHUB_ORG}/${REPO_NAME}"
#         mkdir -p "${TARGET_DIR}"
#         echo "Moving YAML file to destination: ${TARGET_DIR}"
#         git mv ${YAML_FILE} ${TARGET_DIR}
#     done
# else
#     echo "No YAML files to process! Exiting..."
#     exit 1
# fi
