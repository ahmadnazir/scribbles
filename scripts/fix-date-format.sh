#!/bin/bash


DIR="$(dirname "$(realpath "$0")")"
cd ${DIR}/../

# Converting the date format form:
#
# .. post:: 15/05/2020
#
# to
#
# .. post:: Apr 15, 2020

cd source
echo 'Disable as all the files have already been update.'; exit


# We get a date that is in the format of month/day/year e.g. 04/15/2020, and we
# have to convert it into a descriptive format e.g. Apr 15, 2020
function convert-date() {
    local date=$1
    local day=${date:3:2}
    local month=${date:0:2}
    local year=${date:6:4}

    # echo "${month} ${day}, ${year}"

    case $month in
        01) month="Jan" ;;
        02) month="Feb" ;;
        03) month="Mar" ;;
        04) month="Apr" ;;
        05) month="May" ;;
        06) month="Jun" ;;
        07) month="Jul" ;;
        08) month="Aug" ;;
        09) month="Sep" ;;
        10) month="Oct" ;;
        11) month="Nov" ;;
        12) month="Dec" ;;
    esac

    echo "${month} ${day}, ${year}"
}

echo "" > /tmp/scribbles-invalid-files

for file in `find . -name "*.rst"`
do
    # echo "Processing ${file}"

    # Extract the date found in the file e.g. the content '.. post:: 15/05/2020' should return '15/05/2020'
    # Convert the date and store in a variable called `converted_date`
    # sed through the file and replace the date with the converted date

    # Get the date but lookup the format of the date instead of just .*  greping
    date=$(grep -oP '(?<=\.\. post:: ).*' ${file})

    # if the date doesn't have the format e.g. 14/08/2023, then write the file name to /tmp/invalid-files and skip the file
    if [[ ! $date =~ ^[0-9]{2}/[0-9]{2}/[0-9]{4}$ ]]; then
        echo "${file}" >> /tmp/scribbles-invalid-files
        continue
    fi

    converted_date=$(convert-date ${date})
    echo "[${date}] -> [${converted_date}] in ${file}"
    sed -i "s|${date}|${converted_date}|g" ${file}
    # exit
done
