#!/bin/bash

dbname=${1:-"eccube_db"}
program="mysqlviz_original"

php $program -f $dbname.sql > $dbname.dot 2>/dev/null && \
dot -Tpdf $dbname.dot > ${dbname}_original.pdf

echo [info] generated ${dbname}_original.pdf
ls -lh ${dbname}_original.pdf
