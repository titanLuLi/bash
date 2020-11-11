#!/bin/bash
echo "A1=grep after lines, default 70 lines"
echo "A2=source file, default dms-servicegateway.log (current)"
echo "A3=folder,default small"
SIZE=${1:-70}
DIR=${3:-small}
SOURCE=${2:-dms-servicegateway.log}
if [ -d "$DIR" ]; then
  echo "${DIR} exist."
else
  echo "Not exist. Create it..."	
  mkdir $DIR
fi

grep -A$SIZE "Guid: 'skatGuid=w" $SOURCE  > ./$DIR/raw_small.log
echo "Grep done"	

# java

echo "java done"
exit 1


