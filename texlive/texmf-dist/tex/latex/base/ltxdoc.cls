%%
%% This is file `ltxdoc.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ltxdoc.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright 1993-2014
%% The LaTeX3 Project and any individual authors listed elsewhere
%% in this file.
%% 
%% This file was generated from file(s) of the LaTeX base system.
%% --------------------------------------------------------------
%% 
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This file has the LPPL maintenance status "maintained".
%% 
%% This file may only be distributed together with a copy of the LaTeX
%% base system. You may however distribute the LaTeX base system without
%% such generated files.
%% 
%% The list of all files belonging to the LaTeX base distribution is
%% given in the file `manifest.txt'. See also `legal.txt' for additional
%% information.
%% 
%% The list of derived (unpacked) files belonging to the distribution
%% and covered by LPPL is defined by the unpacking scripts (with
%% extension .ins) which are part of the distribution.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ltxdoc}
         [2007/11/11 v2.0u Standard LaTeX documentation class]
\DeclareOption{a5paper}{\@latexerr{Option not supported}%
   {}}
\DeclareOption*{%
    \PassOptionsToClass  {\CurrentOption}{article}}
\InputIfFileExists{ltxdoc.cfg}
           {\typeout{*************************************^^J%
                     * Local config file ltxdoc.cfg used^^J%
                     *************************************}}
           {}
\ProcessOptions
\LoadClass{article}
\RequirePackage{doc}
\AtBeginDocument{\MakeShortVerb{\|}}
\DeclareFontShape{OT1}{cmtt}{bx}{n}{<-> ssub * cmtt/m/n}{}
\DeclareFontFamily{OMS}{cmtt}{\skewchar\font 48}  % '60
\DeclareFontShape{OMS}{cmtt}{m}{n}{<-> ssub * cmsy/m/n}{}
\DeclareFontShape{OMS}{cmtt}{bx}{n}{<-> ssub * cmsy/b/n}{}
\DeclareFontShape{OT1}{cmss}{m}{it}{<->ssub*cmss/m/sl}{}
\CodelineNumbered
\DisableCrossrefs
\setlength{\textwidth}{355pt}
\addtolength\marginparwidth{30pt}
\addtolength\oddsidemargin{20pt}
\addtolength\evensidemargin{20pt}
\setcounter{StandardModuleDepth}{1}
\def\cmd#1{\cs{\expandafter\cmd@to@cs\string#1}}
\def\cmd@to@cs#1#2{\char\number`#2\relax}
\DeclareRobustCommand\cs[1]{\texttt{\char`\\#1}}
\providecommand\marg[1]{%
  {\ttfamily\char`\{}\meta{#1}{\ttfamily\char`\}}}
\providecommand\oarg[1]{%
  {\ttfamily[}\meta{#1}{\ttfamily]}}
\providecommand\parg[1]{%
  {\ttfamily(}\meta{#1}{\ttfamily)}}
\def\oc@scan#1{%
  \ifx\oc@bslash#1%
                      \egroup\let\next\oc@bslash\else
  \ifcat a\noexpand#1%
                      #1\let\next\oc@scan\else
  \ifx\oc@percent#1%
                      \def\next{\char`\%\egroup}%
  \else
                      #1\let\next\egroup
  \fi\fi\fi\next}
\def\oc@bslash{\bgroup\oc@ttf\char`\\\oc@scan}%
\def\oc@verb#1{%
  \catcode`#1\active
  \uccode`\~`#1%
  \uppercase{\def~{{\oc@ttf\char`#1}}}}
\begingroup
  \obeyspaces%
  \catcode`\/=\catcode`\\
  /catcode`/\/active
  /catcode`<=/catcode`{%
  /catcode`>=/catcode`}%
  /catcode`/{/active%
  /catcode`/}/active%
  /gdef/oldc< \end{oldcomments}>%
  /gdef/begmac<    \begin{macrocode}>%
  /gdef/obs</def <</oc@ttf/ >>>%
/endgroup%
\begingroup
  \catcode`\/=\catcode`\\
  \catcode`\\=13
  /catcode`/|=/catcode`/%
  /catcode`/%=13
  /gdef/oldcomments{|
    /makeatletter
    /let/do/oc@verb/dospecials
    /frenchspacing/@vobeyspaces/obs
    /raggedright
    /oc@verb/>|
    /oc@verb/<|
    /let\/oc@bslash
    /let%/oc@percent
    /obeylines
    /parindent/z@
    /ttfamily/expandafter/let/expandafter/oc@ttf/the/font
    /rmfamily
    /hfuzz/maxdimen
    }
/endgroup
\begingroup
  \sloppy%
  \obeylines%
  \gdef\oc@percent#1^^M{%
    \ifvmode%
    \def\commentline{#1}%
    \ifx\commentline\oldc%
    \end{oldcomments}%
    \else%
    \ifx\commentline\begmac%
    \begin{macrocode}%
    \else%
    \leavevmode%
    #1^^M%
    \fi\fi%
    \else%
    {\oc@ttf\char`\%}#1^^M%
    \fi}%
\endgroup%
\@addtoreset{CodelineNo}{part}
\def\partname{File}
\newcommand*{\DocInclude}[1]{%
  \relax
  \clearpage
  \docincludeaux
  \IfFileExists{#1.fdd}{\def\currentfile{#1.fdd}}{\def\currentfile{#1.dtx}}%
  \ifnum\@auxout=\@partaux
    \@latexerr{\string\include\space cannot be nested}\@eha
  \else \@docinclude#1 \fi}
\def\@docinclude#1 {\clearpage
\if@filesw \immediate\write\@mainaux{\string\@input{#1.aux}}\fi
\@tempswatrue\if@partsw \@tempswafalse\edef\@tempb{#1}\@for
\@tempa:=\@partlist\do{\ifx\@tempa\@tempb\@tempswatrue\fi}\fi
\if@tempswa \let\@auxout\@partaux \if@filesw
\immediate\openout\@partaux #1.aux
\immediate\write\@partaux{\relax}\fi
\let\@ltxdoc@PrintIndex\PrintIndex
\let\PrintIndex\relax
\let\@ltxdoc@PrintChanges\PrintChanges
\let\PrintChanges\relax
\let\@ltxdoc@theglossary\theglossary
\let\@ltxdoc@endtheglossary\endtheglossary
\part{\currentfile}%
  {\let\ttfamily\relax
  \xdef\filekey{\filekey, \thepart={\ttfamily\currentfile}}}%
\DocInput{\currentfile}%
\let\PrintIndex\@ltxdoc@PrintIndex
\let\PrintChanges\@ltxdoc@PrintChanges
\let\theglossary\@ltxdoc@theglossary
\let\endtheglossary\@ltxdoc@endtheglossary
\clearpage
\@writeckpt{#1}\if@filesw \immediate\closeout\@partaux \fi
\else\@nameuse{cp@#1}\fi\let\@auxout\@mainaux}
\gdef\codeline@wrindex#1{\if@filesw
        \immediate\write\@indexfile
            {\string\indexentry{#1}%
            {\filesep\number\c@CodelineNo}}\fi}%
\let\filesep\@empty
\def\aalph#1{\@aalph{\csname c@#1\endcsname}}
\def\@aalph#1{%
  \ifcase#1\or a\or b\or c\or d\or e\or f\or g\or h\or i\or
         j\or k\or l\or m\or n\or o\or p\or q\or r\or s\or
         t\or u\or v\or w\or x\or y\or z\or A\or B\or C\or
         D\or E\or F\or G\or H\or I\or J\or K\or L\or M\or
         N\or O\or P\or Q\or R\or S\or T\or U\or V\or W\or
         X\or Y\or Z\else\@ctrerr\fi}
\def\docincludeaux{%
  \def\thepart{\aalph{part}}\def\filesep{\thepart-}%
  \let\filekey\@gobble
  \g@addto@macro\index@prologue{%
    \gdef\@oddfoot{\parbox{\textwidth}{\strut\footnotesize
       \raggedright{\bfseries File Key:} \filekey}}%
    \let\@evenfoot\@oddfoot}%
  \global\let\docincludeaux\relax
 \gdef\@oddfoot{%
   \expandafter\ifx\csname ver@\currentfile\endcsname\relax
    File \thepart: {\ttfamily\currentfile} %
   \else
    \GetFileInfo{\currentfile}%
    File \thepart: {\ttfamily\filename} %
    Date: \filedate\ %
    Version \fileversion
    \fi
    \hfill\thepage}%
 \let\@evenfoot\@oddfoot}%
\def\task#1#2{}
\endinput
%%
%% End of file `ltxdoc.cls'.
