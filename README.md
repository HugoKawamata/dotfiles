# Usage
![image](https://user-images.githubusercontent.com/5846629/134829835-4255c00f-e43f-4c7f-8b47-66363d1569de.png)
1. Download zip. Unzip to your home directory (i.e. `.useful_scripts` should be in `~/.useful_scripts`)
2. If you already have a `.zshrc` config file, you'll need to delete it or rename it. You can copy and paste the contents of your existing `.zshrc` file into mine if you would like, or vice versa. You can obviously also pick and choose aliases from my file if you don't like some of them.


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

## `merge_chain.sh` aka `gchain`
Usage: While in the lowest branch (`branch-1`), `gchain branch-2 branch-3 branch-4 ...`

```
                          J---K branch-3
                         /
                    H---I branch-2
                   /
          A---B---C branch-1
         /
    D---E---F---G master
```

This script solves the workflow of having a chain of branches branching off each other like the above diagram, and wanting to make a change to the lowest level branch and then updating all the branches that would be affected.
Usually you would have to do this:
- `{making changes to branch-1}`
- `git checkout branch-2`
- `git merge branch-1`
- `git push`
- `git checkout branch-3`
- `git merge branch-2`
- `git push`
- `git checkout branch-4`
- `git merge branch-3`
- `git push`
