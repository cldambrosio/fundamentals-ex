to checkout a branch
 `git checkout -b <your-branch-name>`
 or `git branch <your-branch-name>` then `git checkout <your-branch-name>`

 `git status`

 make the changes needed

 `git status` to verify everything is as expected
 `git diff origin/master` for more details

 `git commit -am "your-message"`
 <!--   == `git add .` and then `git commit -m "your message"
 y -->ou could also `git add <individual_files>` git commit -m "your message"

 or `git add <the files which are ok>`
 `git checkout those are not ok`
 `git commit -m "message"`
 `git push origin your-branch-name`

 open a pull request on GitHub
 review
merge if it's ok
delete the branch

`git checkout master`
`git pull origin master`
`git branch -D <your-branch>` -> to delete on local environment