#!/bin/bash

set -e -o pipefail

sqlite3 db.sqlite3 << 'EOF'
select * from (
    select sal as salary, comm as commission
        from emp
) where salary < 5000;
EOF

