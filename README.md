# Bits&Bots Currriculum

To find more about us or download PDFs of our curriculums, please see our [website](https://bitsnbots.weebly.com). This GitHub is meant for contributers to the curriculum or anyone who wants to build off what we have created. If
you don't have experience with GitHub or LaTeX, don't worry, just email
us at <bitsandbots.neu@gmail.com> with your lesson ideas and we'll get back
to you!

## Compiling and Editing the Lessons

### Software Requirements

The first step is to download a LaTeX distributions. I suggest the following:

#### Offline Editing

Mac: [MacTex](http://www.tug.org/mactex/index.html)  
Windows: [MiKTeX](https://miktex.org)  
Linux/Cross Platform: [TeX Live](https://tug.org/texlive/acquire-netinstall.html)

I've tested a few offline LaTeX editors, and personally found the
simplest to be:

Mac Only: [TeXworks](https://www.tug.org/texworks/)
Windows: [MiKTeX](https://miktex.org)
Linux/Windows/Mac: [Texmaker](http://www.xm1math.net/texmaker/)


#### Linux Setup

After unzipping and installing [TeX Live](https://tug.org/texlive/acquire-netinstall.html), 
you may still need to install `latexmk` and `xelatex`.
`sudo apt-get install latexmk texlive-xetex`

#### Online Editing

While I highly suggest an offline editor (to make your git workflow simpler),
[Overleaf](https://www.overleaf.com/) is a great online editor which you
can use to get started writing LaTeX right away.

#### All Editing

**Note**: Select **`XeLaTeX`** as the LaTeX varient when you compile the lessons (on TeXworks, it appears on the top left drop down menu).

##### The Structure of the Program

All style and template definitions go in

### A Problem? Suggestion? Both?

Please feel free to open an issue on GitHub or to email us at: <bitsandbots.neu@gmail.com>

We would be happy to help you start contributing! If I get enough emailss, I'll
also create a video guide to installing it on every platform.

## Contributing

If you'd like to report a bug, see [the section above](a-problem?-suggestion?-both?)).

### External Contributers

Fork our repo. When you're ready to merge your contributions, create a PR to master and add one of the core members as a reviewer.

#### Licensing

Copyright 2019 Bits&Bots

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

##### Exceptions to the License

Please feel free to email us at <bitsandbots.neu@gmail.com> to explain
why the license is too restricting for your use. We reserve the right
to decline/accept exception requests depending on your use case.

The details of the exception will be specified in our email
communication and may be different per request.

### Bits&Bots Core Members

#### Getting Started
1. Make sure you're set up with our software systems. If you're not, hit up the orientation channel on our Slack.
2. Create an Issue on GitHub outlining the new feature or bug you are fixing.
3. Navigate to the correct place in your terminal. Clone the repo.
```
git clone git@github.com:bits-and-bots/lessons.git
```

### Building

#### Mac
If you want to build all the lessons at once, or just prefer working in a text editor, you can use the included makefile to compile lessons.

To compile all the lessons in your terminal, navigate to the project directory, and run:

```bash
make
```

To compile a specific lesson, just include the name of the pdf file you want to generate. For example to build lesson one, you would write:

```bash
make lesson1.pdf
```

The resulting pdf files for that will be placed in the newly created out folder.

#### Windows
If you want to build all the lessons at once, you can use the included powershell script to compile lessons.

To compile all the lessons in your terminal, you can
1. right click on `win-compile-all.ps1` and select "Run with PowerShell"
or
2. navigate to the project directory using Windows PowerShell and run `.\win-compile-all.ps1`

Additionally, if you are able to install WSL (Windows Subsytem for Linux) onto your Windows machine, you can follow the mac/linux instructions more directly. 

TODO: script to compile individual lessons

#### Editing the Code

1. Create an issue on our GitHub, make sure to have an informative title
and description.
2. In your terminal, navigate to the directory where you cloned the repo.
3. Pull the latest version of master.
```
git checkout master
git pull
```
4. Create a branch locally to do your changes.
```
git checkout -b <BRANCH_NAME>
git push --set-upstream origin
```
5. Edit the documents (for more, see [Compiling and Editing the Lessons](Compiling-and-editing-the Lessons))
6. After you have completed your changes, make sure they compile and the commit them and push them.
```
git add -A
git commit -m "<A message saying what you changed>"
git push
```
7. Create a PR on our GitHub from your new branch to our master branch.
8. Eventually, our CI systems will automatically update our website to contain
the newest version of our PDFs, but for now, one of us will automatically
update the website to contain the new PDFs.
