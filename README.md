LaTeX based resume
=====================

One page maintainable resume.

Latex based one page resume template which looks beautiful and maintanable.

Usage
==============
If you are as lazy as I am you will like it. This repo has everything you need
to avoid pain of writing resume and having snapshot of it for some particular time.

There is a bash file, which will compile for you the resume (`build.sh`) and will
give you final output with proper name. This is nice because you can just come to
this folder update your resume and get it released. It is assumed you will not change
things, just the content. You can keep it for years like this avoiding many pain of
"my resume".

I don't have windows anymore for long time, so windows users, apologies I
don't have batch file for you.

When cloned repo, change your name in the `build.sh` and you done. Launch the bash
file when you nead to "release" your resume. It will create copy of existing resume
and place it `ARC` folder - this is some kind of ancient VCS. In addition, you can
use git for versioning - uncomment bottom lines.

Dependencies
=============
From Tex you will need standard packages, nothing fancy.

LaTeX Editor
=============
If you don't have any preferences, so far Texmaker was the best free editor:
```
brew install Caskroom/cask/texmaker
```
or grab package for your distro at http://www.xm1math.net/texmaker/download.html

> Note: I am not advertising any software.
