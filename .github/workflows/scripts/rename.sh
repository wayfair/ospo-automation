#!/bin/bash

# Find uncategorized YAML files added to the ./requests directory
# Prefix the user-submitted file with PR number + GitHub username
# Move file to a dedicated subfolder for further processing
find ${ROOT_DIR} -type f -maxdepth 1 \( -iname \*.yml -o -iname \*.yaml \) | while read YAML_FILE; do
    BASE_DIR=`dirname ${YAML_FILE}`
    BASE_FILE=`basename ${YAML_FILE}`
    TARGET_DIR="${ROOT_DIR}/${GITHUB_USER}"
    TARGET_FILE="${GITHUB_PR}_${BASE_FILE}"
    DESTINATION="${TARGET_DIR}/${TARGET_FILE}"
    echo -e "Processing user-submitted YAML file: ${YAML_FILE}"
    mkdir -p ${TARGET_DIR}
    echo -e "Moving YAML file to destination: ${DESTINATION}"
    git mv ${BASE_DIR}/${BASE_FILE} ${DESTINATION}
    echo "REQUEST_FILE=${DESTINATION}" >> $GITHUB_ENV
done
