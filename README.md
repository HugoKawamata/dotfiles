# Scripts
## `just_push.sh` aka `gjp`
This script solves the workflow of
- `git checkout -b new_branch`
- *make some changes*
- `git add .`
- `git commit -m "add stuff"`
- `git push`
```
fatal: The current branch new_branch has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin new_branch
```
- *sigh*
- Copy and paste the suggested line into the terminal and run it
- Day ruined.

> "I JUST WANT TO PUSH!!"

`just_push.sh` will check if your branch has an upstream set, and if not, it will set the upstream for you.
I recommend aliasing it and using it instead of `git push` for all branches. If you always use it, you'll never
have your workflow interrupted by git in this way again.

## `checkout_pull_and_merge.sh` aka `gmm`
Usage: `gmm main` or `gmm # defaults to master`

This script solves the workflow of
- `git checkout master`
- `git pull`
- `git checkout -`
- `git merge master`

With this script, it will go to the master branch, pull changes, hop back onto your original branch, and merge
the changes in.
