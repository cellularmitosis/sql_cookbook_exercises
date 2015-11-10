#!/bin/bash

set -e

sqlite3 db.sqlite3 << 'EOF'
select * from emp;
EOF
