#!/bin/bash

# Recipe 1.7. Concatenating Column Values

set -e -o pipefail

sqlite3 db.sqlite3 << 'EOF'
select ename || ' Works as a ' || job as msg
    from emp;
EOF
