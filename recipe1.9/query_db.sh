#!/bin/bash

# Recipe 1.9. Limiting the Number of Rows Returned

set -e -o pipefail

sqlite3 db.sqlite3 << 'EOF'
select * from emp limit 5;
EOF
