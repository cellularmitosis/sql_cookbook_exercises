#!/bin/bash

set -eo pipefail

sqlite3 db.sqlite3 << 'EOF'
select *
    from emp
    where deptno = 1
        or comm is not null
        or sal <= 2000 and deptno = 2
;
EOF

