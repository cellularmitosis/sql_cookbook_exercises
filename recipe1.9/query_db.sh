#!/bin/bash

set -e -o pipefail

sqlite3 db.sqlite3 << 'EOF'
select * from emp limit 5;
EOF
