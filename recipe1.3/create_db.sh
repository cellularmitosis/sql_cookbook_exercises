#!/bin/bash

set -eo pipefail

cat data.sql | sqlite3 db.sqlite3
