#!/bin/bash 

SCRIPT_NAME=$(basename $0)
SCRIPT_DIR="$(dirname $(readlink -f $0))"
PIP_REQUIREMENTS_FILE="${SCRIPT_DIR}/01-init-install-ansible/requirements.txt"

function log() {
    local msg="$1"

    echo "[${SCRIPT_NAME}]: $msg"
}

log "[INFO]: Script directory: ${SCRIPT_DIR}"
log "[INFO]: Running script: ${SCRIPT_DIR}/${SCRIPT_NAME}"

log "[APT]: Update"
apt-get update

log "[APT]: Install required tools"
apt-get install -y make python3-pip

log "[PIP]: Install Ansible (From file: ${PIP_REQUIREMENTS_FILE})"
pip install -r "${PIP_REQUIREMENTS_FILE}"

log "[INFO]: Details about ansible"
ansible --version
