#!/bin/bash
touch newfile.txt
for i in {1..1000}
do
  echo "Line $i" >> newfile.txt
  git add newfile.txt
  git commit -m "Commit $i"
done