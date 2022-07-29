#!/bin/bash

set -eu -o pipefail

# the "." here is to be able to copy hidden (dot) files
REPLACE_FILES="$MULTI_GITTER_ROOT_PATH/files/."

cp -r $REPLACE_FILES .
