#!/bin/bash

set -eo pipefail

rm -f db.sqlite3
cat data.sql | sqlite3 db.sqlite3
