#!/bin/bash

# Recipe 1.5. Providing Meaningful Names for Columns

set -e -o pipefail

sqlite3 db.sqlite3 << 'EOF'
select sal as salary, comm as commision from emp;
EOF
