# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
	* Version control is something that allows us to to review the entire history of one or more files and merge revisions made by different people.  This gives us a timeline that we can follow and track the changes over time. This also allows us the ability to roll back the changes that have been made and track who made what changes. This can be very useful to developers and give them flexibility to roll-back a change that may break the code and help them see what changes were made by which developer. 
* What is a branch and why would you use one?
	* A branch is a deviation of the master branch that can be independently developed and later merged into the master branch later. It is useful because it allows you to modify the files separately from the master branch and later merge the changes back into master. In addition it allows multiple people to work on the some repository at the same time while not stepping on anyone one else's toes. 

* What is a commit? What makes a good commit message?
	* A commit is a save point in git. A commit messages is a way of telling what was done in the commit. Commit messages should be descriptive and once a commit has been created you can see who created the commit, when, and see the commit message left by the developer. 

* What is a merge conflict? 
	* A merge conflict occurs when a change has occured that git has trouble understanding. For example you make a change on a line to a file and your colleague makes a change on the same line of that file. Git will ask for clarification on the conflict using a specail block in the file. Once the conflict has been resolved you would commit the file and complete the merge. For more info on the topic you can visit ["Resolving a merge conflict"](https://help.github.com/articles/resolving-a-merge-conflict-from-the-command-line/)