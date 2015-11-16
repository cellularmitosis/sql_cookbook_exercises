#!/bin/bash

set -e
set -o pipefail

cat data.sql | sqlite3 db.sqlite3
