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
Most likely you are here because you saw the SEPR lecture on version control.

This document will focus on Git since that's what I know best and use in the
department every day. If you are looking for resources on SVN please see the
SVN-Links.md file in this repo. If you know of other sources that may be useful
to other students, please let me know; either through a pull-request on Github,
or email me at jmc512@york.ac.uk .

Getting Started With Git
========================

Let's take a whirlwind tour through git showing some of the cool features, then
we'll come back on focus on each feature in more detail. But first things first.

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

