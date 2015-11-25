#!/bin/bash

# Recipe 1.11. Finding Null Values

set -e -o pipefail

sqlite3 db.sqlite3 << 'EOF'
select *
    from emp
    where comm is NULL;
EOF
