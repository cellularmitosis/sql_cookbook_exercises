#!/bin/bash

set -e

rm -f db.sqlite3
cat data.sql | sqlite3 db.sqlite3
