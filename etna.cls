%
% Copyright (C) 2013 by Nico Schlömer
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

% TODO leqno necessary?
\LoadClassWithOptions{siamltex}

% We would like to use \theoremstyle{remark} from amsthm, but unfortunately,
% the classes siamltx and amsthm are incompatible, see
% <https://tex.stackexchange.com/questions/148198/siamltx-amsthm-latex-error-no-counter-theorem-defined>.
% TODO come up with another way for defining setting the styles for remarks.

\newtheorem{remark}[theorem]{Remark}


% [1] An essential guide to LaTeX2e usage;
%     Mark Trettin, Jürgen Fenn;
%     <http://www.ctan.org/tex-archive/info/l2tabu>.

% Set fonts. Don't use
%   \usepackage{times}
% as suggested by ETNA. The article [1] suggests to replace times by
\RequirePackage{mathptmx}
\RequirePackage[scaled=.90]{helvet}
\RequirePackage{courier}

\RequirePackage[
%dvips,
%letterpaper=true,
colorlinks=true,
linkcolor=red,
filecolor=green,
citecolor=red,
pdfpagemode=None]
{hyperref}
