# Cheat-sheet

*Last updated on 14 May, 2020*

This section covers various common `git` use-cases.

!!! tip
    Basic knowledge of Git is assumed in this tutorial. If you are new to Git, visit <http://rogerdudler.github.io/git-guide/> to learn the basics first.

## Reset branch

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

- gitscm's documentation for _checkout_:  
  <https://git-scm.com/docs/git-checkout>