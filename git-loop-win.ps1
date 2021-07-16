New-Item -Name NewFile.txt -ItemType File
For($i=1;$i -le 1000;$i++) {
  Add-Content .\NewFile.txt "Line $i"
  #echo "Line $i"
  git add NewFile.txt
  git commit -m "Commit $i"
}