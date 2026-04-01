#!/bin/bash
echo "one" > file.txt
git add file.txt
git commit -m "base"

# Added
echo "new" > added.txt
git add added.txt
git commit -m "added"

# Modified
echo "two" >> file.txt
git add file.txt
git commit -m "modified"

# Deleted
cp file.txt delete-me.txt
git add delete-me.txt
git commit -m "add delete-me"
rm delete-me.txt
git add delete-me.txt
git commit -m "deleted"

# Renamed
cp file.txt rename-me.txt
git add rename-me.txt
git commit -m "add rename-me"
git mv rename-me.txt renamed.txt
git add renamed.txt
git commit -m "renamed"

# Type changed: file -> symlink
echo "plain" > typechange.txt
git add typechange.txt
git commit -m "add typechange file"
rm typechange.txt
ln -s file.txt typechange.txt
git add typechange.txt
git commit -m "type changed file-> symlink"

# Executable bit change
echo 'echo hi' > script.sh
git add script.sh
git commit -m "add script"
chmod +x script.sh
echo "changed mode of script.sh"
git add script.sh
git commit -m "executable bit changed"

# Symlink added
ln -s file.txt link.txt
git add link.txt
git commit -m "symlink added"

# Copy detected
cp file.txt copied.txt
git add copied.txt
git commit -m "copy detected"

# Ignored
echo "ignored.txt" > .gitignore
git add .gitignore
git commit -m "add gitignore"
echo "ignore me" > ignored.txt
echo "ignored.txt has changes but they are gitignored"

# Untracked
echo "temp" > untracked.txt

echo "PLEASE VERIFY CONFLICT UNMERGED FILES"

# Conflict / unmerged
#git checkout -b branch-a
#echo "branch-a" > conflict.txt
#git add conflict.txt
#git commit -m "branch a"

#git checkout master
#echo "master" > conflict.txt
#git add conflict.txt
#git commit -m "master change"

#git merge branch-a
# now conflict.txt is unmerged

