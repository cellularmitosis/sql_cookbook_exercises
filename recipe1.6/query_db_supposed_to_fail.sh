#!/bin/bash

# Recipe 1.6. Referencing an Aliased Column in the WHERE Clause

set -e -o pipefail

# NOTE: the whole point of recipe 1.6 was to demonstrate that the following
# query will fail (referencing the alias name 'salary' in the where clause
# is supposedly not allowed per the standard?).  However, it turns out that
# this actually works in sqlite3.

sqlite3 db.sqlite3 << 'EOF'
select sal as salary, comm as commission
    from emp
    where salary < 5000;
EOF
