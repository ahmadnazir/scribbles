#!/bin/bash


DIR="$(dirname "$(realpath "$0")")"
cd ${DIR}/../

# Convert `.rst` in `source ` to `.md` in `source-md`

# find source -name "*.rst"

cd source
# echo 'Disable as all the files have been migrated. See migration.log.'; exit

for file in `find . -name "*.rst"`
do
    date=`git log -1 --format="%ad" --date=format:"%d/%m/%Y" $file`
    tag=`echo $file | sed 's/\.\///' | sed 's/\/.*//g'`

    echo $tag '->' $file


    # Add the following to every note
    #
    # .. post:: ${date}
    #    :tags: ${tag}

    dos2unix $file
    sed "4 i .. post:: ${date}\n   :tags: ${tag}\n" -i $file
done

