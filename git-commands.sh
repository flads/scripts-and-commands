#----------------------
# Create a new feature:
#----------------------
git checkout develop
git checkout -b feature/adding-comment-in-gitignore
# -- Git Flow command:
... git flow init ...
git flow feature start feature_branch

#----------------------
# Publish a new feature:
#----------------------
git push origin feature/adding-comment-in-gitignore

#---------------------------------------------
# Merge the new feature in the develop branch:
#---------------------------------------------
git checkout develop
git merge feature/adding-comment-in-gitignore
# -- Git Flow command:
git flow feature finish feature_branch

#----------------------------
# Publish the develop branch:
#----------------------------
git push origin develop

#-------------------------------------------
# Creating and publishing a tag and release:
#-------------------------------------------
git checkout -b release/v1.0
git push origin release/v1.0
git tag -a v1.0 -m "Git Flow is awesome!"
git show v1.0
git push origin v1.0

# -- Git Flow command:
git flow release start v1.0

#-------------------------------------------
# Merge the release with the master and publish the master:
#-------------------------------------------
git checkout master
git merge release/v1.0
git push origin master

# -- Git Flow command:
git flow release finish 'v1.0'

#--------------------------------------------------------------------
# Undo the last commit and send the changes back to the staging area:
#--------------------------------------------------------------------
git reset HEAD~1 --soft

#---------------------
# Working with hotfix:
#---------------------
git flow hotfix start hotfix_branch
git flow hotfix finish hotfix_branch