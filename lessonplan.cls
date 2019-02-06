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

% Added March 7 2018 by Daniel Rassaby
\usepackage{hyperref}
\usepackage[parfill]{parskip}
\pagenumbering{arabic}
\newcommand{\sectionbreak}{\clearpage}


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
\newcommand{\linkHome}{\url{https://bitsnbots.weebly.com}}