#!/bin/bash

set -e -o pipefail

sqlite3 db.sqlite3 << 'EOF'
select coalesce(comm,42)
    from emp;
EOF
