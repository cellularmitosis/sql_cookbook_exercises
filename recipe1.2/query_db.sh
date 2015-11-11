#!/bin/bash

set -eo pipefail

sqlite3 db.sqlite3 << 'EOF'
select * from emp where deptno = 10;
EOF
