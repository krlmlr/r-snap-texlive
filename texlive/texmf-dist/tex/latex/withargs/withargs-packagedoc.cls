%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                              %
%  Copyright (C) 2013 by Michiel Helvensteijn - www.mhelvens.net               %
%                                                                              %
%  This work may be distributed and/or modified under the                      %
%  conditions of the LaTeX Project Public License, either                      %
%  version 1.3 of this license or (at your option) any later                   %
%  version. The latest version of this license is in                           %
%      http://www.latex-project.org/lppl.txt                                   %
%  and version 1.3 or later is part of all distributions of                    %
%  LaTeX version 2005/12/01 or later.                                          %
%                                                                              %
%  This work has the LPPL maintenance status `author-maintained'.              %
%                                                                              %
%  The Current Maintainer of this work is Michiel Helvensteijn.                %
%                                                                              %
%  This work consists of the file packagedoc.cls.                              %
%                                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\let\packagename\jobname

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Document Class                                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClassWithOptions{l3doc}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Importing The Main Package                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{\packagename}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Importing Other Packages                                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{etoolbox}
\RequirePackage[xcolor]{mdframed}
\RequirePackage{marginnote}
\RequirePackage{listings}
\RequirePackage{textcomp}
\RequirePackage{hyperref}
\RequirePackage{needspace}
\RequirePackage{noindentafter}

\RequirePackage{withargs-dry}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Documentation Options                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\EnableCrossrefs         
\CodelineIndex
\RecordChanges

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File Info                                                                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\GetFileInfo{\packagename.sty}

\title{The \textsf{\packagename} package\thanks{%
  This document corresponds to \textsf{\packagename}~\fileversion,
  dated \filedate.%
}}

\author{
  Michiel Helvensteijn\\
  \href{mailto:mhelvens+latex@gmail.com}{mhelvens+latex@gmail.com}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Development Info                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newmdenv[
  leftline  = false,
  rightline = false
]{bannerframe}

\apptocmd{\maketitle}{
  \begin{bannerframe}
    \small
    \begin{center}
      Development of this package is organized at
      \href{https://github.com/mhelvens/latex-\packagename}
                   {github.com/mhelvens/latex-\packagename}.\\
      I am happy to receive feedback there!
    \end{center}
  \end{bannerframe}
}{}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example Environment Setup                                                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Extra keywords for LaTeX
%
\newcommand{\moretexcs}[1]{
  \lstdefinelanguage{latex}{
    language=[LaTeX]tex,
    alsoletter={_,:},
    moretexcs={ExplSyntaxOn,ExplSyntaxOff,lstinputlisting,detokenize,#1}
  }
}

%%% Code formatting
%
\lstdefinestyle{examplecode}{%
  language=latex,%
  basicstyle=\ttfamily\small,%
  texcsstyle=*\bfseries,%
  keywordstyle=\bfseries%
}

%%% Setting up example code block
%
\definecolor{examplecodelinecolor}{rgb}{0,0,0}
\definecolor{examplecodebackgroundcolor}{rgb}{.9,.9,.9}
\newmdenv[
  linecolor         = examplecodelinecolor,
  backgroundcolor   = examplecodebackgroundcolor,
  skipabove         =  0bp,
  skipbelow         =  0bp,
  innertopmargin    = -3bp,
  innerrightmargin  =  4bp,
  innerbottommargin = -3bp,
  innerleftmargin   =  4bp
]{examplecodeframe}

%%% Defining example output block
%
\definecolor{exampleoutputbackgroundcolor}{rgb}{1,1,1}
\newmdenv[
  linecolor         = examplecodelinecolor,
  backgroundcolor   = exampleoutputbackgroundcolor,
  skipabove         = 0bp,
  skipbelow         = 0bp,
  innertopmargin    = 4bp,
  innerrightmargin  = 4bp,
  innerbottommargin = 4bp,
  innerleftmargin   = 4bp
]{exampleoutputframe}

%%% Macros for counting lines in file, adapted from
%%% http://andreas.scherbaum.la/blog/archives/
%%%        670-Read-number-lines-in-a-file-in-LaTeX.html
%
\RequirePackage{ifthen}
\newboolean{packagedoc@restfile}
\newcommand*{\packagedoc@fileline}{}
\newread\packagedoc@file
\newcommand*{\packagedoc@readnextline}[1]{%
  \ifthenelse{\boolean{packagedoc@restfile}}{%
    \read#1 to \packagedoc@fileline%
    \ifeof#1\setboolean{packagedoc@restfile}{false}%
    \else\fi%
  }{}%
}
\newcommand*{\countlinesinfile}[2]{%
  \setboolean{packagedoc@restfile}{true}%
  \setcounter{packagedoc@linecount}{0}%
  \openin\packagedoc@file=#1%
  \whiledo{\boolean{packagedoc@restfile}}{%
    \packagedoc@readnextline{\packagedoc@file}%
    \ifthenelse{\boolean{packagedoc@restfile}}{%
      \stepcounter{packagedoc@linecount}%
    }{}%
  }%
  \closein\packagedoc@file%
  \edef#2{\thepackagedoc@linecount}%
}

\newcounter{packagedoc@linecount}
\newlength{\packagedoc@spacetoreserve}

%%% DRYer without output
%
\NewDRYer{latex-example}{%
  \addvspace{4bp}%
  {%
    \ttfamily\small%
    \countlinesinfile{#1}{\countedlines}%
    \setlength{\packagedoc@spacetoreserve}{\countedlines\baselineskip}%
    \addtolength{\packagedoc@spacetoreserve}{-4bp}%
    \needspace{\packagedoc@spacetoreserve}%
  }%
  \begin{examplecodeframe}%
    \renewcommand{\ttdefault}{pcr}%
    \lstinputlisting[style=examplecode]{#1}%
  \end{examplecodeframe}%
  #2%
  \addvspace{4bp}%
}

\NoIndentAfterEnv{latex-example}

%%% DRYer WITH output but WITHOUT side-effects
%
\NewDRYer{latex-example-show}{%
  \addvspace{4bp}%
  {%
    \ttfamily\small%
    \countlinesinfile{#1}{\countedlines}%
    \setlength{\packagedoc@spacetoreserve}{\countedlines\baselineskip}%
    \addtolength{\packagedoc@spacetoreserve}{\baselineskip}%
    \needspace{\packagedoc@spacetoreserve}%
  }%
  \begin{examplecodeframe}%
    \renewcommand{\ttdefault}{pcr}%
    \lstinputlisting[style=examplecode]{#1}%
  \end{examplecodeframe}\vspace{-4bp}%
  \begin{exampleoutputframe}%
    #2%
  \end{exampleoutputframe}%
  \addvspace{4bp}%
}

\NoIndentAfterEnv{latex-example-show}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Implementation Code Box Setup                                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Saving old implementation code block font
%
\AtBeginDocument{\let\old@macro@font\macro@font}

%%% Setup for 'interesting' implementation code blocks
%
\definecolor{interestingcodebackgroundcolor}{rgb}{.9,.9,.9}
\definecolor{interestingcodelinecolor}{rgb}{0,0,0}
\mdfdefinestyle{interestingcode}{
  linecolor       = interestingcodelinecolor,
  backgroundcolor = interestingcodebackgroundcolor
}
\newcommand*{\interesting}{%
  \def\codestyle{interestingcode}%
  \let\macro@font\old@macro@font%
}

%%% Setup for 'UNinteresting' implementation code blocks
%
\definecolor{uninterestingcodebackgroundcolor}{rgb}{.97,.97,.97}
\definecolor{uninterestingcodelinecolor}{rgb}{.5,.5,.5}
\definecolor{uninterestingcodecolor}{rgb}{.4,.4,.4}
\mdfdefinestyle{uninterestingcode}{
  linecolor       = uninterestingcodelinecolor,
  backgroundcolor = uninterestingcodebackgroundcolor,
}
\newcommand*{\uninteresting}{%
  \def\codestyle{uninterestingcode}%
  \def\macro@font{\color{uninterestingcodecolor}\old@macro@font}%
  \vskip-\belowdisplayskip%
  \vskip-1.05\abovedisplayskip%
}

\BeforeBeginEnvironment{macrocode}{\vskip.2\abovedisplayskip}

%%% Actually surround 'macrocode' with the frame
%
\surroundwithmdframed[
  style             = \codestyle,
  skipabove         = 0bp,
  skipbelow         = 0bp,
  splitbottomskip   = 4bp,
  innertopmargin    =-3bp,
  innerrightmargin  = 1bp,
  innerbottommargin = 4bp,
  innerleftmargin   = 1bp
]{macrocode}

%%% Start out with 'interesting' code status and
%%% always go back to it after one code block
%
\interesting
\AfterEndEnvironment{macrocode}{\vskip\belowdisplayskip\interesting\NoIndentAfterThis}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Argument Specifiers and such                                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand*{\movarg}[1]{[ \texttt{#1} ]}
\newcommand*{\momarg}[1]{[ \meta{#1} ]}

\newcommand{\describemacro}[2]{%
  \needspace{3\baselineskip}%
  \noindent\\\DescribeMacro{#1} #2\\\NoIndentAfterThis%
}

\newcommand{\describeanymacro}[2]{%
  \needspace{3\baselineskip}%
  \noindent\\\marginnote{#1} #2\\\NoIndentAfterThis%
}

\newcommand{\describemetamacro}[2]{%
  \describeanymacro{\meta{#1}}{#2}%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Other Stuff                                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NoIndentAfterEnv{description}
\NoIndentAfterEnv{itemize}
\NoIndentAfterEnv{enumerate}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Automatic Implementation Docs                                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\AtEndDocument{
  \pagebreak
  
  \section{Implementation} \label{sec:implementation}
  
  \StopEventually {\PrintChanges}
  
  We now show and explain the entire implementation from \texttt{\packagename.sty}.
  
  \DocInput{\packagename.sty}
  
  \Finale
  
  \PrintIndex
}
