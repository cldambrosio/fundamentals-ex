NOTES ON HOW TO BRANCH OUT


 Checkout a branch

 `git checkout -b <your-branch-name>`


 OR you can `git branch <your-branch-name>`
 then access newly created branch with `git checkout <your-branch-name>`


 `git status` to verify being on the expected branch


 Make the changes needed


 `git status` to verify everything is as expected

 `git diff origin/master` for more details

 `git commit -am "your-message"`

 (=== `git add .` and then `git commit -m "your message"`

 You could also `git add <individual-files>` `git commit -m "your message"`)

 OR `git add <the-files-that-are-ok>`
 `git checkout <those-that-are-not-ok>`
 `git commit -m "message"`
 `git push origin <your-branch-name>`

 - Open a pull request on GitHub

 - Review

 - Merge if it's ok

 - Delete the branch on GitHub

 - Then sync local master branch:

 `git checkout master`

 `git pull origin master`

 - Finally delete branch on local environment:

 `git branch -D <your-branch-name>`