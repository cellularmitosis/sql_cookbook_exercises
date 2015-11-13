#!/bin/bash

# Recipe 1.1. Retrieving All Rows and Columns from a Table

set -e

sqlite3 db.sqlite3 << 'EOF'
select * from emp;
EOF
