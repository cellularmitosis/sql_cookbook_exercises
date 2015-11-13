#!/bin/bash

# Recipe 1.4. Retrieving a Subset of Columns from a Table

set -e -o pipefail

sqlite3 db.sqlite3 << 'EOF'
select ename,deptno from emp;
EOF
