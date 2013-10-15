Version Control
===============

Repository for VC lecture for University of York's SEPR module.

Lecture is being held on 14th Oct 2013.

The images used for the SVN portion of the talk were taken from 'Version Control
By Example'.


Why You're Here
===============

Using version control is a good habit to get into. It not only allows you to
keep track of your changes and collaborate it others, it allows you to reverse
time in a project in order to inspect a bug or see how a project has evolved.

Most likely you are here because you saw the SEPR lecture on version control. And,
despite how everything went wrong during the practical portion, you were
convinced that there might be something to this whole version control thing.

This document will focus on Git since that's what I know best and use in the
department every day. If you are looking for resources on SVN please see the
SVN-Links.md file in this repo. If you know of other sources that may be useful
to other students, please let me know; either through a pull-request on Github,
or email me at jmc512@york.ac.uk .

Getting Started With Git
========================

Let's take a whirlwind tour through git showing some of the cool features, then
we'll come back on focus on each feature in more detail. But first things first.

Setting Things Up
-----------------

Git needs to know who you are and how to contact you. Not for Git itself, but so
that others you are collaborating with know who made what changes. So let's get
that out of the way.

If you're using Windows as your operating system, open Git Bash. If you're
sensible and using Linux, open up a terminal. (Note: During the practical
portion of the lecture there were *many* issues with Git Bash. I have since
found the appropriate work-arounds, so there shouldn't be anything stopping you
from using Windows if you want. If you're still having issues, let me know).
From this point on, **unless I say otherwise** when I say `In your terminal...' 
I am referring to both the Linux terminal and to Git Bash.

In your terminal:

* Register who you are with Git: 

    git config --global user.name "Your Name"
