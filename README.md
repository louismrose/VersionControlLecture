Version Control
===============

Repository for Version Control lecture for University of York's SEPR module.

Lecture is being held on 16th Oct 2015.

© The slides and the practical session are inspired by Jose Calderon's work. Images are taken from wikimedia and pixabay and are labelled as free for reuse.


Why You're Here
===============

As you will find out if you skim the slides, Version Control Systems (VCSs from now on) are widely used nowadays to keep track of changes in code, enhance collaboration and keep backups. Many of you may have never heard this term again but don't worry, I firstly heard about VCSs 6 years after my first CS module at a university level so taking into account that you're 2nd years students I am sure that you will master it.

This document includes instructions on the 1st part of the practical session that follows the theory. On the practical we will focus on the (maybe the most) widely used VCS named Git. SVN is popular as well so for those who prefer to use SVN instead of Git there's a file, called SVN-links.md, where you can find useful resources on it. In case you want to share more resources on Git or SVN please drop me an email at amz502@york.ac.uk or submit them through a request on this Git project.

Part 1: The Basics (aka the 80% of what you will do with Git ever in your life)
========================

In the first you will be asked to do some exercises on your own to understand the basic functionality of Git. Before starting with the exercises, you first need to make sure that you have Git installed and configured.

Installing Git
--------------

If you're on Linux, then you're all set. If you're on Windows (shame on you),
then you'll have to install Git Bash. Luckily, this can be installed locally on
your student account. The link for download is at the [Official Git Website.](http://git-scm.com/)

Follow the "Download git for X" link on that page. ('X' Should be the OS you're
on).

Setting Things Up
-----------------

Once you have Git installed, open up your terminal. On Linux, this is whatever
terminal you happen to use, on Windows this means launching 'Git Bash' from the
Start Menu.

A big part of any version control system is enabling collaboration. For this
reason Git needs to know your name and email, this is so that the people you
are collaborating with know who made what changes, and how to contact that
person. So let's get that out of the way.

If you're using Windows as your operating system, open Git Bash. If you're
sensible and using Linux, open up a terminal. Please note: from this point
on, **unless I say otherwise** when I say `In your terminal...' 
I am referring to both the Linux terminal and to Git Bash.

In your terminal:

* Register who you are with Git: 

~~~
git config --global user.name "Your Name"
~~~

* Register your email with Git: 

~~~
git config --global user.email "your.username@some.domain.com"
~~~

* Register your editor of choice with Git:

~~~
git config --global core.editor your_fav_editor
~~~

Starting off
------------

Now that you have git set up, let's make a repository. 

* Create a new directory and move into it

~~~
mkdir learnGit
cd learnGit
~~~

* As every good project has a README, let's create that first

~~~
echo "This project is for learning the git VCS tool" > README
~~~

* Now that you have a file, let's track it with git!
    First we have to initialise this directory as a repository

~~~
git init
~~~

* Now we have a repo, but git does _not_ track all files automatically
    (this is useful with development because having git keep track of 
    generated files like .o or binaries would be a waste of space).
    We can tell git to track a file with

~~~
git add README
~~~

* Now if we run `git status` we should see something very much like the
    following

~~~
git status
\# On branch master
\#
\# Initial commit
\#
\# Changes to be committed:
\#   (use "git rm --cached <file>..." to unstage)
\#
\#   new file:   README
\#
~~~

What this is telling us is that we have no history so far ('Initial commit')
and a list of changes that will be commited *if* we commit.

* Commit by typing

~~~
git commit
~~~

This should load up the editor you confugred git to use. The convention is
to write a one line summary of the changes and then a more detailed
explanation of the commit. In this case since this is the inital commit,
there isn't much to say as we haven't changed anything! So for this commit
we'll just say "Initial commit". 

Save the file and quit the editor. Once you quit git will take the message
and create the commit. 

Now you have a full-fledged repo. You can quickly look at the repo's history
with `git log`. There isn't much history, but it's there.

Let's explore a little further.

* Create a new file in the directory but do not add it to git.

~~~
touch newFile
~~~

* Check the status of the repo with

~~~
git status
~~~

Try to make sense of the output, but do not change anything (like running
`git add`)

* Make a change to README

~~~
echo "AUTHORS: JMCT" >> README
~~~

Now the README has a second line, let's see what git makes of this

~~~
git status
/# On branch master
/# Changes not staged for commit:
/#   (use "git add <file>..." to update what will be committed)
/#   (use "git checkout -- <file>..." to discard changes in working directory)
/#
/#   modified:   README
/#
/# Untracked files:
/#   (use "git add <file>..." to include in what will be committed)
/#
/#   newFile
no changes added to commit (use "git add" and/or "git commit -a")
~~~

Notice that for both the new file and for the changed file, git is
telling us that we need to run `git add` in order to save the changes.
However, because README is being tracked by git already, git is able
to *discard* the changes! That's already useful. No matter how many changes
we make to a file we can always go back to a previous version.

For now let's commit the changes to README

* As an exercise, add README to the commit, then commit the changes.
    Do not add newFile to the commit.

As you make more changes have 'newFile' always appear when you call `git status`.
The way to avoid this is by making a .gitignore file. This contains a list of
regular expressions that tell git which files to ignore. So

* Add newFile to .gitignore

~~~
echo "newFile" > .gitignore
~~~

If you run `git status` you'll see that git is telling you that .gitignore
is not being tracked, but you'll also notice that there is no mention
of newFile!

* Tell git to track .gitignore and commit.

At this point, you have the basics of git for single person use. We'll
get to multi-person use soon

