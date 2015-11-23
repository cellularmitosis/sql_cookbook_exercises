#!/bin/bash

set -e -o pipefail

cat data.sql | sqlite3 db.sqlite3

