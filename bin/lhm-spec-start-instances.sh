#!/bin/sh

#
# Start up master slave cluster for lhm specs
#

set -e
set -u

source `dirname $0`/lhm-config.sh

#
# Main
#

"$mysqldir"/bin/mysqld --defaults-file="$basedir/master/my.cnf" 2>&1 >$basedir/master/lhm.log &
"$mysqldir"/bin/mysqld --defaults-file="$basedir/slave/my.cnf" 2>&1 >$basedir/slave/lhm.log &
