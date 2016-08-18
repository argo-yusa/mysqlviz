#!/bin/bash

dbname=${1:-"eccube_db"}
program="mysqlviz_simple"

php $program -f ${dbname}.sql > ${dbname}_simple.dot && \
dot -Tpdf ${dbname}_simple.dot > ${dbname}_simple.pdf  2>/dev/null

echo [info] generated ${dbname}_simple.pdf
ls -lh ${dbname}_simple.pdf
