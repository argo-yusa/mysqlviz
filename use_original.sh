#!/bin/sh

dbname="eccube_db"
program="mysqlviz_original"

php $program -f $dbname.sql > $dbname.dot 2>/dev/null && \
dot -Tpng $dbname.dot > ${dbname}_original.png

echo [info] generated ${dbname}_original.png
ls -lh ${dbname}_original.png
