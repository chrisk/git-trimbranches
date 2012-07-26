# git trimbranches

A handy little git porcelain to automate the removal of old topic branches
you've already merged to master.

## Installation

    $ gem install git-trimbranches

## How it works

**Preflight:** First, it does a `git fetch` and `git remote prune origin` in the
current working directory to make sure your list of remote branches is
up-to-date.

**Finding branches that can be safely removed:** Then, it uses the `--merged`
option to `git branch` to find out which branches are already merged to
`origin/master`. It ignores branches with names including the words "master",
"staging", "production", or "stable".

**Deleting the branches:** Finally, it uses `git push origin :branchname` to
delete each of those branches from the remote. If a local copy of the branch
exists, it is also removed. The script prints the name of each deleted branch
with its SHA so you can recreate the branch if needed.
