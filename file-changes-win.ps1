'one' | Set-Content file.txt
git add file.txt
git commit -m "base"

# Added
'new' | Set-Content added.txt
git add added.txt
git commit -m "added"

# Modified
Add-Content file.txt 'two'
git add file.txt
git commit -m "modified"

# Deleted
Copy-Item file.txt delete-me.txt
git add delete-me.txt
git commit -m "add delete-me"
Remove-Item delete-me.txt
git add delete-me.txt
git commit -m "deleted"

# Renamed
Copy-Item file.txt rename-me.txt
git add rename-me.txt
git commit -m "add rename-me"
git mv rename-me.txt renamed.txt
git add renamed.txt
git commit -m "renamed"

# Type changed: file -> symlink
'plain' | Set-Content typechange.txt
git add typechange.txt
git commit -m "add typechange file"
Remove-Item typechange.txt
New-Item -ItemType SymbolicLink -Path typechange.txt -Target file.txt
git add typechange.txt
git commit -m "type changed file-> symlink"

# Executable bit change
'echo hi' | Set-Content script.sh
git add script.sh
git commit -m "add script"
git update-index --chmod=+x script.sh
git add script.sh
git commit -m "executable bit changed"

# Symlink added
New-Item -ItemType SymbolicLink -Path link.txt -Target file.txt
git add link.txt
git commit -m "symlink added"

# Copy detected
Copy-Item file.txt copied.txt
git add copied.txt
git commit -m "copy detected"

# Ignored
'ignored.txt' | Set-Content .gitignore
git add .gitignore
git commit -m "add gitignore"
'ignore me' | Set-Content ignored.txt
echo "ignored.txt has changes but they are gitignored"

# Untracked
'temp' | Set-Content untracked.txt

echo "PLEASE VERIFY CONFLICT UNMERGED FILES"

# Conflict / unmerged
#git checkout -b branch-a
#'branch-a' | Set-Content conflict.txt
#git add conflict.txt
#git commit -m "branch a"

#git checkout master
#'master' | Set-Content conflict.txt
#git add conflict.txt
#git commit -m "master change"

#git merge branch-a
# now conflict.txt is unmerged
