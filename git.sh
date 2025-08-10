# Check Git version
git --version

# Configure user identity (mandatory before commits)
git config --global user.name "Your Name"
git config --global user.email "you@example.com"

# View all config settings
git config --list

# Initialize a repo in current directory
git init

# Clone a remote repository
git clone https://github.com/user/repo.git

# See current status of repo




git status
# Add all files to staging
git add .

# Add a specific file to staging
git add file.txt

# Commit staged changes
git commit -m "Meaningful commit message"

# Commit and skip staging (commit all tracked files)
git commit -am "Quick commit"

# Amend last commit (for fixing message or adding missed files)
git commit --amend -m "New commit message"



# View commit history (basic)
git log

# Compact one-line history
git log --oneline

# Graph view with branches
git log --oneline --graph --all

# Show changes in working directory
git diff

# Show changes in staging area
git diff --staged
# List all branches
git branch

# Create new branch
git branch feature/login

# Switch to branch
git checkout feature/login

# Create and switch in one step
git checkout -b feature/login

# Rename current branch
git branch -m new-branch-name

# Delete local branch
git branch -d feature/login



# Merge branch into current branch
git merge feature/login

# Abort merge in case of issues
git merge --abort

# Show conflicts in files
git diff


# Rebase current branch onto main
git rebase main

# Interactive rebase (squash, edit commits)
git rebase -i HEAD~3

# Abort rebase
git rebase --abort

# Continue after fixing conflicts
git rebase --continue



# View remotes
git remote -v

# Add a remote
git remote add origin https://github.com/user/repo.git

# Push branch to remote
git push origin feature/login

# Pull latest changes from remote
git pull origin main

# Fetch without merging
git fetch origin

# Delete remote branch
git push origin --delete feature/login



# Save changes without committing
git stash

# Save with a message
git stash save "WIP: working on auth"

# View stash list
git stash list

# Apply last stash (keep in stash list)
git stash apply

# Apply and remove from stash list
git stash pop

# Drop a specific stash
git stash drop stash@{1}
# Unstage a file
git reset file.txt

# Unstage everything
git reset

# Discard local changes to file
git checkout -- file.txt

# Reset to specific commit (keep changes unstaged)
git reset <commit_id>

# Reset hard (discard changes)
git reset --hard <commit_id>

# Revert a commit (makes new commit that undoes changes)
git revert <commit_id>


# Find commit that introduced a bug
git bisect start
git bisect bad
git bisect good <commit_id>
# test until found, then:
git bisect reset

# See who last modified each line
git blame file.txt

# Show file from old commit
git show <commit_id>:path/to/file.txt



# Create lightweight tag
git tag v1.0

# Create annotated tag (recommended)
git tag -a v1.0 -m "Release version 1.0"

# Push tags to remote
git push origin v1.0



# Cherry-pick a commit to current branch
git cherry-pick <commit_id>

# Create a patch file from commit
git format-patch -1 <commit_id>

# Apply a patch
git apply file.patch

# Clean untracked files & dirs
git clean -fd

# Prune stale remote-tracking branches
git remote prune origin



git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.cm "commit -m"
git config --global alias.lg "log --oneline --graph --all"



git st
git co main
git cm "message"
