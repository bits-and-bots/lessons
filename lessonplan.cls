% lessonplan.cls
%
% a LaTex document class for preparing lesson plans

%% lessonplan.cls
%% Copyright (c)

\LoadClass{article}

\usepackage[margin=0.5in]{geometry}
\usepackage{eso-pic}% http://ctan.org/pkg/eso-pic
\usepackage{fontspec}
\usepackage{graphicx}% http://ctan.org/pkg/graphicx
\usepackage{titlesec}
\usepackage{tikz}

\renewcommand{\thesection}{\Alph{section}} 
\renewcommand{\thesubsection}{\arabic{subsection}}
\renewcommand{\thesubsubsection}{}
\titleformat{\section}
  {\normalfont\Large\bfseries}{\thesection}{1em}{}[{\titlerule[0.8pt]}]


\AddToShipoutPictureBG*{
  \AtPageUpperLeft{
    \raisebox
      { -\height }{
        \includegraphics[width=1.5in]{Images/bits-and-bots-logo.png}}}}

\usepackage{hyperref}
\usepackage[parfill]{parskip}
\pagenumbering{arabic}
\newcommand{\sectionbreak}{\clearpage}

% Styles for tikz diagrams
\usetikzlibrary{shapes,shadows,arrows}
\tikzstyle{line} = [draw, -stealth, thick]
\tikzstyle{block} = [draw, rectangle, fill=blue!50, text width=12mm, text centered, minimum height=15mm, minimum width=15mm, node distance=10em]
\tikzstyle{pickup} = [draw, diamond, fill=blue!10, text width=3em, text centered, minimum size=2mm, node distance=10em]
\tikzstyle{startline} = [draw, rectangle, fill=green!60, text width=8em, text centered, minimum height=5mm, node distance=10em]

% Given the lesson number for the page, sets all necessary file lookups to the appropriate folder assuming folder is named Lesson[\lessonNumber]
\newcommand{\setLessonNumber}[1]{
    % #1: Lesson Number
    \graphicspath{ {Images/Lesson#1/} }
}

% Puts in one of the display images for the Procedure given an optional size parameter, and the filename
\newcommand{\procedureImage}[2][1]{
    % #1: Scale
    % #2: Image Filename
    \begin{center}
        \includegraphics[scale=#1]{#2}
    \end{center}
}

% Link to homepage
\newcommand{\linkHome}{\url{http://bits-and-bots.github.io/bits-app-web/}}