%%
%% This is file `komacv.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% komacv.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2014 by Salome Södergran (salome.soedergran@gmx.ch)
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.3 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3 or later is part of all distributions of LaTeX version
%% 2005/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{komacv}
    [2014/08/10 v1.0.1 komacv class]
\providecommand*\mycolor{blue}
\RequirePackage{ifthen,kvoptions,calc}
\SetupKeyvalOptions{%
family=komacv,%
prefix=komacv@,%
setkeys=\kvsetkeys%
}
\DeclareStringOption[mycolor]{color}[mycolor]
\DeclareStringOption[x11names]{xcolor}[x11names]
\DeclareStringOption[classic]{style}[classic]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessKeyvalOptions{komacv} % evaluate keyval options
\ProcessOptions\relax % execute given options
\LoadClass[a4paper,headings=normal,fontsize=11pt,headinclude,footinclude]{scrartcl}
\RequirePackage[\komacv@xcolor]{xcolor}
\RequirePackage{%
  etoolbox,%
  ifpdf,%
  ifluatex,%
  ifxetex,%
  scrpage2,%
  marvosym,%
  array,%
  graphicx,%
  microtype,%
  enumitem,
  hyperref%
}
\definecolor{myblue}{rgb}{0.2,0.3,0.65}
\colorlet{mycolor}{myblue}
\AtEndPreamble{%
 \renewcommand*\mycolor{\komacv@color}
  \colorlet{colortheme}{\mycolor}% specified in documentclass option
  \@ifundefinedcolor{firstnamecolor}{%
    \colorlet{@firstnamecolor}{black}}{%
    \colorlet{@firstnamecolor}{firstnamecolor}}
  \@ifundefinedcolor{familynamecolor}{%
    \colorlet{@familynamecolor}{@firstnamecolor}}{%
    \colorlet{@familynamecolor}{familynamecolor}}
  \@ifundefinedcolor{acadtitlecolor}{%
    \colorlet{@acadtitlecolor}{@firstnamecolor}}{%
    \colorlet{@acadtitlecolor}{acadtitlecolor}}
  \@ifundefinedcolor{addresscolor}{%
    \colorlet{@addresscolor}{@firstnamecolor}}{%
    \colorlet{@addresscolor}{addresscolor}}
  \@ifundefinedcolor{quotecolor}{%
    \colorlet{@quotecolor}{@firstnamecolor}}{%
    \colorlet{@quotecolor}{quotecolor}}
  \@ifundefinedcolor{secbarcolor}{%
    \colorlet{@secbarcolor}{colortheme}}{%
    \colorlet{@secbarcolor}{secbarcolor}}
  \@ifundefinedcolor{seccolor}{%
    \colorlet{@seccolor}{colortheme}}{%
    \colorlet{@seccolor}{seccolor}}
  \@ifundefinedcolor{subseccolor}{%
    \colorlet{@subseccolor}{colortheme}}{%
    \colorlet{@subseccolor}{subseccolor}}
  \@ifundefinedcolor{hintcolor}{%
    \colorlet{@hintcolor}{black}}{%
    \colorlet{@hintcolor}{hintcolor}}
  \@ifundefinedcolor{framecolor}{%
    \colorlet{@framecolor}{colortheme}}{%
    \colorlet{@framecolor}{framecolor}}
  \@ifundefinedcolor{framebackcolor}{%
    \colorlet{@framebackcolor}{white}}{%
    \colorlet{@framebackcolor}{framebackcolor}}
} % end AtEndPreamble
\ifboolexpr{bool{xetex} or bool{luatex}}{%
  \RequirePackage{fontspec}%
}{%
  \RequirePackage[utf8]{inputenc}
  \RequirePackage[T1]{fontenc}%
}
\newkomafont{firstnamefont}{\fontsize{34}{36}\mdseries\upshape}
\newkomafont{familynamefont}{\usekomafont{firstnamefont}}
\newkomafont{acadtitlefont}{\LARGE\mdseries\itshape}
\newkomafont{addressfont}{\normalsize\mdseries\itshape}
\newkomafont{quotefont}{\large\itshape}
\newkomafont{hintfont}{}
\newkomafont{linkfont}{}
\newkomafont{httplinkfont}{}
\newkomafont{emaillinkfont}{}
\newkomafont{commentmainfont}{\bfseries} % in \cvitemwithcomment
\newkomafont{commentfont}{\footnotesize\itshape} % in \cvitemwithcomment
\setkomafont{section}{\Large\sffamily\mdseries\upshape}
\setkomafont{subsection}{\large\sffamily\mdseries\upshape}
\setlength\parindent{0pt}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\newlength\@komacvtextwidth
\newlength\@hintscolwidth
\newlength\hintscolwidth
\setlength\hintscolwidth{0pt}
\newlength\@sepcolwidth
\newlength\sepcolwidth
\setlength\sepcolwidth{0pt}
\newlength\@maincolwidth
\newlength\maincolwidth
\setlength\maincolwidth{0pt}
\newlength\@quotewidth
\newlength\quotewidth
\setlength\quotewidth{0pt}
\newlength\@dbitemmaincolwidth
\newlength\dbitemmaincolwidth
\setlength\dbitemmaincolwidth{0pt}
\newlength\@listitemsymbolwidth
\newlength\listitemsymbolwidth
\setlength\listitemsymbolwidth{0pt}
\newlength\@listitemmaincolwidth
\newlength\listitemmaincolwidth
\setlength\listitemmaincolwidth{0pt}
\newlength\@listdbitemmaincolwidth
\newlength\listdbitemmaincolwidth
\setlength\listdbitemmaincolwidth{0pt}
\newlength\@titlepicwidth
\newlength\@titlesepwidth
\setlength\@titlesepwidth{0pt}
\newlength\titlesepwidth
\setlength\titlesepwidth{0pt}
\newlength\@mframepicshift
\newlength\mframepicshift
\setlength\mframepicshift{0pt}
\newlength\@commentmainlength
\newlength\@commentlength
\newlength\@titlenamewidth
\newlength\@titlenamemaxwidth
\newlength\@titlenamefullwidth
\newlength\@titledetailswidth
\newlength\@infocolwidth
\newlength\infocolwidth
\setlength\infocolwidth{0pt}
\newlength\@sepinfocolwidth
\newlength\sepinfocolwidth
\setlength\sepinfocolwidth{0pt}
\newlength\komacvinfocolextrawidth % witout @ for use inside document (addmargin)
\newlength\@footerwidth
\setlength\@footerwidth{.6\textwidth}
\newlength\@fboxwidth
\newlength\footerwidth
\setlength\footerwidth{0pt}
\newlength\@aftertitlevspace
\newlength\aftertitlevspace
\setlength\aftertitlevspace{0pt}
\newlength\@afterquotevspace
\newlength\afterquotevspace
\setlength\afterquotevspace{0pt}
\newlength\@afterelementsvspace
\newlength\afterelementsvspace
\newlength\@beforesecvspace
\newlength\beforesecvspace
\setlength\beforesecvspace{0pt}
\newlength\@aftersecvspace
\newlength\aftersecvspace
\setlength\aftersecvspace{0pt}
\newlength\@beforesubsecvspace
\newlength\beforesubsecvspace
\setlength\beforesubsecvspace{0pt}
\newlength\@aftersubsecvspace
\newlength\aftersubsecvspace
\setlength\aftersubsecvspace{0pt}

\AtEndPreamble{%
  % infocol (oldstyle)
  \setlength{\@infocolwidth}{\infocolwidth}
  \setlength{\@sepinfocolwidth}{\sepinfocolwidth}
  \setlength\komacvinfocolextrawidth{\@infocolwidth+\@sepinfocolwidth}
  \setlength\@komacvtextwidth{\textwidth-\komacvinfocolextrawidth}

  % fboxextra (picture frame)
  \newlength\@fboxextra
  \setlength\@fboxextra{\fboxsep+\fboxrule}

  % hintscolumn
  \ifdimequal{\hintscolwidth}{0pt}{%
    \setlength\@hintscolwidth{.2\@komacvtextwidth}
  }{%
    \setlength{\@hintscolwidth}{\hintscolwidth}%
  }

  % separatorcolumn
  \ifdimequal{\sepcolwidth}{0pt}{%
    \setlength\@sepcolwidth{2em}%
  }{%
    \setlength{\@sepcolwidth}{\sepcolwidth}%
  }

  % maincolumn
  \ifdimequal{\maincolwidth}{0pt}{%
    \setlength{\@maincolwidth}{\@komacvtextwidth-\@sepcolwidth-\@hintscolwidth}%
  }{%
    \setlength{\@maincolwidth}{\maincolwidth}%
  }

  % doubleitem
  \ifdimequal{\dbitemmaincolwidth}{0pt}{%
    \setlength{\@dbitemmaincolwidth}{%
    \@maincolwidth-\@hintscolwidth-2\@sepcolwidth}%
    \setlength{\@dbitemmaincolwidth}{0.5\@dbitemmaincolwidth}%
  }{%
    \setlength{\@dbitemmaincolwidth}{\dbitemmaincolwidth}%
  }

  % listitem
  \ifdimequal{\listitemsymbolwidth}{0pt}{%
    \settowidth{\@listitemsymbolwidth}{\listitemsymbol{}~}%
    \setlength{\@listitemmaincolwidth}{\@maincolwidth-\@listitemsymbolwidth}%
  }{%
    \setlength{\@listitemsymbolwidth}{\listitemsymbolwidth}%
  }

  % listdoubleitem
  \ifdimequal{\listdbitemmaincolwidth}{0pt}{%
    \setlength{\@listdbitemmaincolwidth}{\@maincolwidth-\@listitemsymbolwidth}%
    \setlength{\@listdbitemmaincolwidth}{0.475\@listdbitemmaincolwidth}% %
  }{%
    \setlength{\@listdbitemmaincolwidth}{\listdbitemmaincolwidth}%
  }

  % quote
  \ifdimequal{\quotewidth}{0pt}{%
    \setlength{\@quotewidth}{0.65\textwidth}%
  }{%
    \setlength{\@quotewidth}{\quotewidth}%
  }
  \ifdimequal{\afterquotevspace}{0pt}{%
   \setlength\@afterquotevspace{2\baselineskip}%
  }{%
    \setlength\@afterquotevspace{\afterquotevspace}%
  }

  % title
  \ifundef{\@photoname}{% without picture:
    \setlength\@aftertitlevspace{\aftertitlevspace}
  }{% with picture:
    \ifthenelse{%
      \equal{\@photoframe}{frame} \OR
      \equal{\@photoframe}{mframe}
    }{% with frame:
      \ifdimequal{\aftertitlevspace}{0pt}{%
        \setlength\@aftertitlevspace{1.5\@fboxextra}
      }{%
        \setlength\@aftertitlevspace{\aftertitlevspace}
      }
    }{% without frame:
      \setlength\@aftertitlevspace{\aftertitlevspace}
    }%
  }%
  \ifundef{\@photoname}{}{%
    \ifdimequal{\titlesepwidth}{0pt}{%
      \setlength\@titlesepwidth{\@sepcolwidth}
    }{%
      \setlength{\@titlesepwidth}{\titlesepwidth}
    }
  }

  % afterelementsvspace
  \ifdimequal{\afterelementsvspace}{0pt}{%
    \setlength{\@afterelementsvspace}{0.25em}%
  }{%
    \setlength{\@afterelementsvspace}{\afterelementsvspace}%
  }

  % beforesecvspace
  \ifdimequal{\beforesecvspace}{0pt}{%
    \setlength{\@beforesecvspace}{3.5ex \@plus -1ex \@minus -.2ex}%
  }{%
    \setlength{\@beforesecvspace}{\beforesecvspace}%
  }

  % aftersecvspace
  \ifdimequal{\aftersecvspace}{0pt}{%
    \setlength{\@aftersecvspace}{2.3ex \@plus.2ex}%
  }{%
    \setlength{\@aftersecvspace}{\aftersecvspace}%
  }
  % beforesubsecvspace
  \ifdimequal{\beforesubsecvspace}{0pt}{%
    \setlength{\@beforesubsecvspace}{3.25ex\@plus -1ex \@minus -.2ex}%
  }{
    \setlength{\@beforesubsecvspace}{\beforesubsecvspace}%
  }

  % aftersubsecvspace
  \ifdimequal{\aftersubsecvspace}{0pt}{%
    \setlength{\@aftersubsecvspace}{1.5ex \@plus .2ex}%
  }{%
    \setlength{\@aftersubsecvspace}{\aftersubsecvspace}%
  }
} % end AtEndPreamble
\providecommand*\@addresssymbol{}
\providecommand*\addresssymbol{}
\providecommand*\@mobilesymbol{\Mobilefone~}
\providecommand*\mobilesymbol{}
\providecommand*\@phonesymbol{\Telefon~}
\providecommand*\phonesymbol{}
\providecommand*\@faxsymbol{\FAX~}
\providecommand*\faxsymbol{}
\providecommand*\@emailsymbol{\Letter~}
\providecommand*\emailsymbol{}
\providecommand*\@homepagesymbol{}
\providecommand*\homepagesymbol{}
\providecommand*\@fsymbol{~~~\textbullet~~~}
\providecommand*\fsymbol{}
\providecommand*\@listitemsymbol{\textcolor{colortheme}{\Neutral}~}
\providecommand*\listitemsymbol{}

\AtEndPreamble{%
  \ifdefempty{\addresssymbol}{}{%
\renewcommand*\@addresssymbol{\addresssymbol}
}
  \ifdefempty{\mobilesymbol}{}{%
\renewcommand*\@mobilesymbol{\mobilesymbol}
}
  \ifdefempty{\phonesymbol}{}{%
\renewcommand*\@phonesymbol{\phonesymbol}
}
  \ifdefempty{\faxsymbol}{}{%
\renewcommand*\@faxsymbol{\faxsymbol}
}
  \ifdefempty{\emailsymbol}{}{%
\renewcommand*\@emailsymbol{\emailsymbol}
}
  \ifdefempty{\homepagesymbol}{}{%
\renewcommand*\@homepagesymbol{\homepagesymbol}
}
  \ifdefempty{\fsymbol}{}{%
\renewcommand*\@fsymbol{\fsymbol}
}
  \ifdefempty{\listitemsymbol}{}{%
\renewcommand*\@listitemsymbol{\listitemsymbol}
}

} % end \AtEndPreamble

\providecommand*{\firstname}{}
\providecommand*{\familyname}{}
\providecommand*{\acadtitle}{}
\providecommand*{\addressstreet}{}
\providecommand*{\addresscity}{}
\providecommand*{\address}[2]{\addressstreet{#1}\addresscity{#2}}
\providecommand*{\mobile}{}
\providecommand*{\phonenr}{}
\providecommand*{\faxnr}{}
\providecommand*{\email}{}
\providecommand*{\homepage}{}
\providecommand*{\extrainfo}{}
\providecommand*{\cvquote}{}
\newlist{compactitem}{itemize}{3}
\newlist{compactenum}{enumerate}{3}
\newlist{compactdesc}{description}{3}
\setlist[compactitem,compactenum,compactdesc]{%
  topsep=0pt,%
  partopsep=0pt,%
  itemsep=0pt,%
  parsep=0pt,%
  leftmargin=*%
} % end setlist
\AtEndPreamble{%
\setlist[compactitem,1]{label=\@listitemsymbol}
\setlist[compactitem,2]{label={\textcolor{colortheme}\textendash}}
\setlist[compactitem,3]{label={\textcolor{colortheme}\textperiodcentered}}
\setlist[compactenum,1]{label={\textcolor{colortheme}{\arabic*.}}}
\setlist[compactenum,2]{label={\textcolor{colortheme}{\alph*.}}}
\setlist[compactenum,3]{label={\textcolor{colortheme}{\roman*.}}}
} % end AtEndPreamble
\newlength\@photowidth
\providecommand{\photo}[3][]{%
  \providecommand{\@photoframe}{#1}%
  \setlength{\@photowidth}{#2}%
  \providecommand{\@photoname}{#3}}
\newif\if@firstdetailselement\@firstdetailselementtrue
\providecommand*{\@titledetailsnewline}{
  \if@firstdetailselement%
    \@firstdetailselementfalse%
  \else%
    \\[.4ex]
  \fi%
}
\renewcommand\maketitle{\csexpandonce{@cvtitle\komacv@style}}
\RequirePackage{lastpage}
\providecommand*{\totalpagemark}{% page and pagetotal
\usekomafont{pagenumber}\pageref{LastPage}%
}
  \newcommand*{\firstnamestyle}[1]{{%
      \usekomafont{firstnamefont}%
      \textcolor{@firstnamecolor}{#1}}}
  \newcommand*{\familynamestyle}[1]{{%
      \usekomafont{familynamefont}%
      \textcolor{@familynamecolor}{#1}}}
  \newcommand*{\acadtitlestyle}[1]{{%
      \usekomafont{acadtitlefont}%
      \textcolor{@acadtitlecolor}{#1}}}
  \newcommand*{\addressstyle}[1]{{%
      \usekomafont{addressfont}%
      \textcolor{@addresscolor}{#1}}}
  \newcommand*{\quotestyle}[1]{{%
      \usekomafont{quotefont}%
      \textcolor{@quotecolor}{#1}}}
  \newcommand*{\hintstyle}[1]{{%
      \usekomafont{hintfont}%
      \textcolor{@hintcolor}{#1}}}
  \newcommand*{\sectionstyle}[1]{%
    \usekomafont{section}%
    \textcolor{@seccolor}{#1}}
  \newcommand*{\subsectionstyle}[1]{%
    \usekomafont{subsection}%
    \textcolor{@subseccolor}{#1}}
\providecommand*{\cvitem}[3][\@afterelementsvspace]{%
  \begin{tabular}{%
      @{}p{\@hintscolwidth}%
      @{\hspace{\@sepcolwidth}}p{\@maincolwidth}@{}%
    }%
    \raggedleft\hintstyle{#2} &{#3}%
  \end{tabular}\\[#1]%
}
\providecommand*{\cvdoubleitem}[5][\@afterelementsvspace]{%
 \cvitem[#1]{#2}{%
   \begin{minipage}[t]{\@dbitemmaincolwidth}#3\end{minipage}%
   \hspace*{\@sepcolwidth}%
   \begin{minipage}[t]{\@hintscolwidth}%
     \noindent\raggedleft\hintstyle{#4}
   \end{minipage}%
   \hspace*{\@sepcolwidth}%
   \begin{minipage}[t]{\@dbitemmaincolwidth}%
     \noindent #5
   \end{minipage}%
 }%
}
\providecommand*{\cvlistitem}[2][\@afterelementsvspace]{%
   \cvitem[#1]{}{%
     \@listitemsymbol%
     \begin{minipage}[t]{\@listitemmaincolwidth}%
       #2%
     \end{minipage}%
   }%
 }
\providecommand*{\cvlistdoubleitem}[3][\@afterelementsvspace]{%
  \cvitem[#1]{}{%
    \@listitemsymbol%
    \begin{minipage}[t]{\@listdbitemmaincolwidth}%
      #2%
    \end{minipage}%
    \hspace*{\@sepcolwidth}
    \ifstrempty{#3}{}{%
      \@listitemsymbol%
      \begin{minipage}[t]{\@listdbitemmaincolwidth}%
        #3%
      \end{minipage}
    }%
  }%
}
\providecommand*{\cventry}[7][\@afterelementsvspace]{%
  \cvitem[#1]{#2}{%
    {\bfseries#3}%
    \ifstrempty{#4}{}{, {\itshape#4}}%
    \ifstrempty{#5}{}{, #5}%
    \ifstrempty{#6}{}{, #6}%
    .%
    \ifx&#7&%
    \else{%
      \newline{}\begin{minipage}[t]{\linewidth}%
        \small#7%
      \end{minipage}%
    }%
    \fi%
  }%
}
\newbox{\@commentmainbox}
\providecommand*{\cvitemwithcomment}[4][\@afterelementsvspace]{%
  \savebox{\@commentmainbox}{{\usekomafont{commentmainfont}#3}}%
  \settowidth\@commentmainlength{\usebox{\@commentmainbox}}%
  \setlength{\@commentlength}{%
    \@maincolwidth-\@sepcolwidth-\@commentmainlength%
  }%
  \cvitem[#1]{#2}{%
    \begin{minipage}[t]{\@commentmainlength}%
      \usekomafont{commentmainfont} #3%
    \end{minipage}%
    \hfill%
   \begin{minipage}[t]{\@commentlength}%
     \raggedleft\usekomafont{commentfont} #4%
   \end{minipage}%
 }%
}
  \providecommand*{\link}[2][]{%
    \ifstrempty{#1}{%
      \href{#2}{\usekomafont{linkfont}#2}}{%
      \href{#2}{\usekomafont{linkfont}#1}}%
  }
  \providecommand*{\httplink}[2][]{%
    \ifstrempty{#1}{%
      \href{http://#2}{\usekomafont{httplinkfont}#2}}{%
      \href{http://#2}{\usekomafont{httplinkfont}#1}}%
  }
  \providecommand*{\emaillink}[2][]{%
    \ifstrempty{#1}{%
      \href{mailto:#2}{\usekomafont{emaillinkfont}#2}}{%
      \href{mailto:#2}{\usekomafont{emaillinkfont}#1}}%
  }
\providecommand\origsection{}
\let\origsection\section
\providecommand\origsubsection{}
\let\origsubsection\subsection

\providecommand\@cvsimplesection[1]{%
  \origsection*{\sectionstyle{#1}}
}
\providecommand\@cvsimplesubsection[1]{%
  \origsubsection*{\subsectionstyle{#1}}
}

\providecommand\@cvbarsection[1]{%
  \origsection*{
    \phantomsection{}% reset the anchor for hyperrefs
    \addcontentsline{toc}{section}{#1}%
    \cvitem[0pt]{%
      \raggedleft\hintstyle{\color{@secbarcolor}%
        \rule{\@hintscolwidth}{1ex}}%
    }{\sectionstyle{#1}}
  }% end origsection
} % end cvbarsection

\providecommand\@cvbarsubsection[1]{%
  \origsubsection*{
    \cvitem[0pt]{}{\subsectionstyle{#1}}
  }%
}

\hypersetup{
  breaklinks,
  unicode,
  colorlinks    = false,
  pdfborder     = {0 0 .3},
  pdfstartview  = FitH,
  pdfstartpage  = 1,
  pdfcreator    = \LaTeX{},
  pdfproducer   = \LaTeX{}
}
\urlstyle{same}
\providecommand*\@citebordercolor{}
\providecommand*\citebordercolor{\@citebordercolor}
\providecommand*\@filebordercolor{}
\providecommand*\filebordercolor{\@filebordercolor}
\providecommand*\@linkbordercolor{}
\providecommand*\linkbordercolor{\@linkbordercolor}
\providecommand*\@menubordercolor{}
\providecommand*\menubordercolor{\@menubordercolor}
\providecommand*\@runbordercolor{}
\providecommand*\runbordercolor{\@runbordercolor}
\providecommand*\@urlbordercolor{}
\providecommand*\urlbordercolor{\@urlbordercolor}
\providecommand*\allbordercolors{}
\providecommand*\pdfauthor{}
\providecommand*\pdfsubject{}
\providecommand*\pdftitle{}
\providecommand*\pdfkeywords{}

\AtEndPreamble{%
\providecommand*\@allbordercolors{colortheme}
\ifdefempty{\allbordercolors}{}{\renewcommand*\@allbordercolors{\allbordercolors}}
\providecommand*\@pdfauthor{\firstname~\familyname}
\ifdefempty{\pdfauthor}{}{\renewcommand*\@pdfauthor{\pdfauthor}}
\providecommand*\@pdfsubject{\firstname~\familyname}
\providecommand*\pdfsubject{\@pdfsubject}
\providecommand*\@pdftitle{\title~\firstname~\familyname}
\providecommand*\pdftitle{\@pdftitle}
\providecommand*\@pdfkeywords{\firstname~\familyname{} curriculum~vit\ae{} CV{}}
\providecommand*\pdfkeywords{\@pdfkeywords}
  \hypersetup{%
    allbordercolors = \@allbordercolors,
    citebordercolor = \citebordercolor,
    filebordercolor = \filebordercolor,
    linkbordercolor = \linkbordercolor,
    menubordercolor = \menubordercolor,
    runbordercolor  = \runbordercolor,
    urlbordercolor  = \urlbordercolor,
    pdfauthor       = \@pdfauthor,
    pdfsubject      = \pdfsubject,
    pdftitle        = \pdftitle,
    pdfkeywords     = \pdfkeywords,
  }
} % end AtEndPreamble
\AtBeginDocument{%
  \raggedbottom
} % End AtBeginDocument
\clearscrheadfoot
\RequirePackage{komacv-\komacv@style}
\endinput
%%
%% End of file `komacv.cls'.
