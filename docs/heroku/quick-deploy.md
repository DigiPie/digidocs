# Quick-deploy

*Last updated on 12 Jan, 2020*

The purpose of this page is to quickly deploy code in an existing Git repository to Heroku.

!!! warning
    This is a quick reference guide. It is not meant to be an informative tutorial. For more information, view the [#Resources](#resources) section.

## Steps

!!! note
    It is assumed that Git and Heroku CLI has been installed.

At the root of your Git repository, run the following commands:

```
# Create a new Heroku application.
heroku create

# Deploy to Heroku.
git push heroku master
```

## Debug

### Problem 1
Heroku remote repo not added as `heroku` automatically by `heroku create` command:

```
# Verify that 'heroku' has not been added
git remote -v

# If 'heroku' is not found in the remote list, add it
git remote add heroku <link-to-the-Heroku-repo>
```

## Resources

- Heroku Dev Center's documentation for _Deploying with Git_:  
  <https://devcenter.heroku.com/articles/git>