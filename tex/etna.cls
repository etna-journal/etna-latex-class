%
% Copyright (C) 2013-2014 by André Gaul, Nico Schlömer
%
% This file may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either
% version 1.2 of this license or (at your option) any later
% version. The latest version of this license is in:
%
%    http://www.latex-project.org/lppl.txt
%
% and version 1.2 or later is part of all distributions of
% LaTeX version 1999/12/01 or later.
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{etna}[2013/12/03 v0.1 ETNA LaTeX class]

% TODO: use current siamltex
% Guidelines advice an old version of siamltex. This may lead to conflicts
% if an up-to-date version is also installed.
\LoadClassWithOptions{siamltex}

% We would like to use \theoremstyle{remark} from amsthm, but unfortunately,
% the classes siamltx and amsthm are incompatible, see
% <https://tex.stackexchange.com/questions/148198/siamltx-amsthm-latex-error-no-counter-theorem-defined>.
% TODO come up with another way for defining setting the styles for remarks.
%\newtheorem{remark}[theorem]{Remark}

\RequirePackage[orthodox,l2tabu]{nag}

% Add LaTeX fixes by default.
\RequirePackage{fixltx2e}

\RequirePackage[T1]{fontenc}
\RequirePackage{microtype}
% [1] An essential guide to LaTeX2e usage;
%     Mark Trettin, Jürgen Fenn;
%     <http://www.ctan.org/tex-archive/info/l2tabu>.

% Set fonts. Don't use
%   \usepackage{times}
% as originally suggested by ETNA. The article [1] suggests
%\RequirePackage{mathptmx}
% However, some perceive the math font as imbalanced. An
% alternative are the newtx fonts.
\RequirePackage{newtxtext}
\RequirePackage{newtxmath}

\RequirePackage[
colorlinks=true,
%pdftitle=gg,
%pdfauthor=gg,
%pdfsubject=gg,
%pdfkeywords=gg,
%linkcolor=red,
%filecolor=green,
%citecolor=red,
% Make the URL color black to make the ETNA header less
% distracting.
urlcolor=black
]
{hyperref}

% Add a bunch of key-value options for the header.
\RequirePackage{kvoptions}
\DeclareStringOption[1]{firstpagenumber}
\DeclareStringOption[0]{volume}
\DeclareStringOption[0]{year}
\DeclareStringOption[0000--0000]{issn}
\DeclareStringOption[0]{copyrightyear}

\ProcessKeyvalOptions*

% Get easy access to the last page number.
\RequirePackage{lastpage}


% Set the first page number.
\addtocounter{page}{\etna@firstpagenumber}
% Decrement the firstpage counter.
\addtocounter{page}{-1}


% Now for the page header.
% ETNA would like to stamp each page with a large "ETNA" header above the
% actual header. Some twiddling is needed.
% First, increase the top margin and take it away from the text height.
%\RequirePackage{geometry}
\addtolength{\topmargin}{0.6in}
\addtolength{\textheight}{-0.6in}

% We will use \xwatermark to put the stamps on the page. By default,
% \xwatermark puts the watermarks dead centered onto the page. To have them
% properly shifted, calculate some length based on LaTeX's page layout, cf.
% <http://en.wikibooks.org/wiki/LaTeX/Page_Layout>.
\newlength\xshift
\setlength\xshift{-0.5\paperwidth}
\addtolength\xshift{1in}
\addtolength\xshift{\hoffset}
\addtolength\xshift{\oddsidemargin}
\addtolength\xshift{1.25in} % half the minipage width

\newlength\xshiftOther
\setlength\xshiftOther{0.5\paperwidth}
\addtolength\xshiftOther{-0.51in} % that magic value :/
\addtolength\xshiftOther{-\marginparwidth}
\addtolength\xshiftOther{-\marginparsep}
\addtolength\xshiftOther{-0.65in} % half the minipage width
\addtolength\xshiftOther{-1pt} % frame width

\newlength\yshift
\setlength\yshift{0.5\paperheight}
\addtolength\yshift{-1in}

\usepackage[printwatermark]{xwatermark}
\newwatermark[
pages=\etna@firstpagenumber,
color=black,
scale=1,
xpos=\xshift,
ypos=\yshift
]{%
  \begin{minipage}{2.5in}\bfseries\footnotesize\upshape%
    Electronic Transactions on Numerical Analysis.\\
    Volume~\etna@volume, pp.~\etna@firstpagenumber--\pageref*{LastPage}, \etna@year.\\
    Copyright {\mdseries\textcopyright}~\etna@copyrightyear, Kent State University.\\
    ISSN~\etna@issn.%
\end{minipage}%
}

\newwatermark[
allpages,
color=black,
scale=1,
xpos=\xshiftOther,
ypos=\yshift,
]{%
\setlength{\fboxrule}{1pt}%
\fbox{%
  \begin{minipage}{1.3in}\bfseries\normalsize\upshape\centering
    ETNA\\
    {\footnotesize Kent State University}\\
    {\scriptsize\url{http://etna.math.kent.edu}}
  \end{minipage}%
}%
}
