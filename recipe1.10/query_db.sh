#!/bin/bash

# Recipe 1.10. Returning n Random Records from a Table

set -e -o pipefail

sqlite3 db.sqlite3 << 'EOF'
select ename
    from emp
    order by random()
    limit 3;
EOF
