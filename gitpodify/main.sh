#!/bin/bash
# This script will copy the files from the folder ./files to the root directory of the repositories configured in ./config.yaml
# To be sure to get signed commits, you must have set `git config --global commit.gpgsign true`

set -e

# Title and body of the pull request(s) to be created
title="'Gitpodifying' this repository"
body="This is a pull request to 'gitpodify' this repositoy. <br />See this issue for more information and questions: https://github.com/jenkins-infra/helpdesk/issues/12345"

if ! command -v "multi-gitter" >/dev/null 2>&1
then
  echo "ERROR: command line 'multi-gitter' required but not found. Exiting."
  exit 1
fi

if [[ -z "${GITHUB_TOKEN}" ]]
then
  echo "ERROR: the GITHUB_TOKEN env var is not set (need 'repo' permissions). Exiting."
  exit 1
fi

if [[ -z "${MULTI_GITTER_ROOT_PATH}" ]]
then
  echo "ERROR: the MULTI_GITTER_ROOT_PATH env var is not set. Type this to set it (to be adapted depending on your OS):"
  echo 'export MULTI_GITTER_ROOT_PATH=$(pwd)'
  echo "Exiting."
  exit 1
fi

multi-gitter run --config=config.yaml --pr-title="$title" --pr-body="$body" --git-type=cmd -- ./script.sh
