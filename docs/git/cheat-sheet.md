# Cheat-sheet

*Last updated on: 14 May, 2020*  
*Compiled by: [Evan Tay](https://evantay.com/)*

This section covers various common `git` use-cases.

!!! tip
    Basic knowledge of Git is assumed in this tutorial. If you are new to Git, visit <http://rogerdudler.github.io/git-guide/> to learn the basics first.

## Delete local and remote branches
**Example scenario:**  
I have merged my development branch `feat/new-feature` into `develop` and wish to delete the local and remote branch of `feat/new-feature` now.

**The solution:**  

- Delete the local branch: 
    - `git branch -d feat/new-feature`
    - or with `--force`: `git branch -D feat/new-feature`
- Delete the remote branch: `git push <remote> -d <branch>`

**The general command format it is based on:**  

- Delete a local branch: 
    - `git branch -d|--delete <branch>`
    - or with `--force`: `git branch -D <branch>`
- Delete a remote branch: `git push <remote> -d|--delete <branch>`

## Reset a branch

**Example scenario:**  
I messed up my local `master` branch. I want to reset it such that it will revert to being the same as `origin/master`.

**The one-line solution:**  
`git checkout -B master origin/master`

**The general command format it is based on:**  
`git checkout -b|-B <new_branch> [<start point>]`

**How does it work?**

`git checkout -b|-B <new_branch>` is typically used to create and switch to a new branch. However, if `<new_branch>` already exists, it will be reset instead.

!!! cite
    If `-B` is given, `<new_branch>` is created if it doesn’t exist; otherwise, it is reset.

## Resources

- gitscm's documentation for _branch_:  
  <https://git-scm.com/docs/git-branch>
- gitscm's documentation for _checkout_:  
  <https://git-scm.com/docs/git-checkout>
- gitscm's documentation for _push_:  
  <https://git-scm.com/docs/git-push>
