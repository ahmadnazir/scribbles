#!/bin/bash


DIR="$(dirname "$(realpath "$0")")"
cd ${DIR}/../

# Converting the date format form:
#
# .. post:: 30/12/2020
#
# to
#
# .. post:: 12/30/2020

cd source
echo 'Disable as all the files have already been update.'; exit

for file in `find . -name "*.rst"`
do
    sed -i -e s/'.. post:: \([0-9]\+\).\([0-9]\+\).\([0-9]\+\)'/'.. post:: \2\/\1\/\3'/ $file
done
