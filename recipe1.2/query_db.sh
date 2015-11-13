#!/bin/bash

# Recipe 1.2. Retrieving a Subset of Rows from a Table

set -eo pipefail

sqlite3 db.sqlite3 << 'EOF'
select * from emp where deptno = 10;
EOF
