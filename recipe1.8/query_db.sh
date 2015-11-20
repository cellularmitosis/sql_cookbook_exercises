#!/bin/bash

# Recipe 1.8. Using Conditional Logic in a SELECT Statement

set -e -o pipefail

sqlite3 db.sqlite3 << 'EOF'
select ename,sal,
    case
        when sal <= 50000 then 'UNDERPAID'
        when sal >= 70000 then 'OVERPAID'
        else 'OK'
    end as status
    from emp;
EOF
