#!/bin/bash

dbname=${1:-"eccube_db"}
program="mysqlviz_simple"

php $program -f ${dbname}.sql > ${dbname}_simple.dot && \
dot -Tpng ${dbname}_simple.dot > ${dbname}_simple.png  2>/dev/null

echo [info] generated ${dbname}_simple.png
ls -lh ${dbname}_simple.png
