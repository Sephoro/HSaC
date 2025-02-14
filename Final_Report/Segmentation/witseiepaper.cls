%% witseiepaper.cls
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  witseiepaper.sty  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ===========================================================================
%%%  @LaTeX-style-file{
%%%    author          = "Ken Nixon",
%%%    version         = "1.2.0",
%%%    date            = "2005/10/14",
%%%    filename        = "witseiepaper.sty",
%%%    address         = "Electrical and Information Engineering, Wits University, South Africa",
%%%    email           = "k.nixon@ee.wits.ac.za",
%%%    keywords        = "LaTeX, Paper, publisher style",
%%%    mainserver      = "dept.ee.wits.ac.za",
%%%    docstring       = "This is a LaTeX style file for preparation
%%%                       of submission and final versions of final year
%%%                       student laboratory project papers.
%%%                       The default font size is 10 points but 9pt,
%%%                       11pt and 12pt are available too.
%%%
%%%                        Usage:
%%%                         \documentstyle[..,Xpt,twoside]{ICLPtran}
%%%                         \author{..}
%%%                         \title{..}
%%%                         \maketitle
%%%                         \begin{abstract}...\end{abstract}
%%%                         \begin{keywords}...\end{keywords}
%%%                         ...
%%%                         \begin{biography}{Author's name}...\end{biography}
%%%                         \end{document}
%%%
%%%                        The command "\markboth{leftTEXT}{rightTEXT}"
%%%                       puts the text "leftTEXT" and "rightTEXT"
%%%                       with the page number on the even resp. odd
%%%                       headers when the "twoside" option is selected.
%%%                       (Attention: header of title page is
%%%                       always "leftTEXT" as it bears the journal name).
%%%                       In order to remove headers, insert
%%%                          \thispagestyle{empty}\pagestyle{empty} or
%%%                          \thispagestyle{plain}\pagestyle{plain}
%%%                       right after the \maketitle command!!
%%%
%%%                       See also ICLPsample.tex",
%%%  }
%%% ===========================================================================
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\typeout{Document Style `witseiepaper.cls' <2005/10/14>}
\typeout{Rev. 1.2.0}

\usepackage{rawfonts} %!PN
\usepackage{oldlfont} %!PN
%!PN, 14.05.96 \renewcommand{\normalsize}{\fontsize{10}{12}\selectfont} %!PN
% this always resulted in a 10pt doc ....., sorry
\renewcommand{\normalsize}{\@normalsize} %!PN

%% Yuk, yuk, but then again
\AtBeginDocument{\parindent0.0em} %!PN
\AtBeginDocument{\itemindent-1.0em} %!PN
\AtBeginDocument{\leftmargini2.0em} %!PN

\AtBeginDocument{\parskip1.0em} %!PN


%% define new needed boolean variables
\newif\if@tmptwocolumn  \@tmptwocolumnfalse
\newif\if@draftversion  \@draftversionfalse
\newif\if@technote      \@technotefalse

\def\@ptsize{10}
\@namedef{ds@9pt}{\def\@ptsize{9}}
\@namedef{ds@10pt}{\def\@ptsize{10}}
\@namedef{ds@11pt}{\def\@ptsize{11}}
\@namedef{ds@12pt}{\def\@ptsize{12}}
\@namedef{ds@twoside}{\@twosidetrue \@mparswitchtrue}
\@namedef{ds@draft}{\global\@draftversiontrue} % sets variable for draft
\@namedef{ds@technote}{\global\@technotetrue}  % sets variable for techn. note
%% the file twocolumn.sty is not read as it changes \textwidth.
%% Next line sets @tmptwocolumn to true which lets later execute \twocolumn
\@namedef{ds@twocolumn}{\global\@tmptwocolumntrue }
\@options

%%%%% \input IEEE\@ptsize.sty\relax  %%%% FONT DEFINITION BELOW (NO FILE READ)

%% change sizes and margins
\topmargin      -10.4mm
\marginparwidth   0.0mm
\marginparsep     0.0mm
\oddsidemargin   -8mm
\evensidemargin  -8mm
\textheight     250.0mm
\textwidth      170.0mm
\columnsep        6.0mm
\parindent        0.0mm
\headsep          0.0mm
\headheight       0.0mm
\lineskip           1pt
\normallineskip     1pt
\def\baselinestretch{1}

\if@draftversion
\topmargin       -6.0mm
\oddsidemargin      0mm
\evensidemargin     0mm
\textheight     223.5mm
\textwidth      161.0mm
\fi

\partopsep          \z@
\topsep           1.3ex
\parsep             \z@
\itemsep            \z@
%% see further below for lists


%% FONT DEFINITION: avoids having to read in font files.
%%
%% Check if we have selected 9 points
\def\@tempa{9}\ifx\@ptsize\@tempa
\typeout{-- This is a 9 point document}
\def\@normalsize{\@setsize\normalsize{10.7pt}\ixpt\@ixpt
\abovedisplayskip 1em plus2pt minus5pt\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip \z@ plus3pt\belowdisplayshortskip .6em plus3pt minus3pt
\topsep \belowdisplayshortskip%!PN
}
\def\small{\@setsize\small{9.12pt}\viiipt\@viipt}
\def\footnotesize{\@setsize\footnotesize{8.15pt}\viipt\@vipt}
\def\scriptsize{\@setsize\scriptsize{8pt}\vipt\@vpt}
\def\tiny{\@setsize\tiny{5pt}\vpt\@vpt}
\def\large{\@setsize\large{12pt}\xpt\@xpt}
\def\Large{\@setsize\Large{14pt}\xiipt\@xiipt}
\def\LARGE{\@setsize\LARGE{18pt}\xivpt\@xivpt}
\def\huge{\@setsize\huge{22pt}\xviipt\@xviipt}
\def\Huge{\@setsize\Huge{25pt}\xxpt\@xxpt}
\fi
%%
%% Check if we have selected 10 points
\def\@tempa{10}\ifx\@ptsize\@tempa
\typeout{-- This is a 10 point document}
\def\@normalsize{\@setsize\normalsize{11.9pt}\xpt\@xpt
\abovedisplayskip 1em plus2pt minus5pt\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip \z@ plus3pt\belowdisplayshortskip .6em plus3pt minus3pt
\topsep \belowdisplayshortskip%!PN
}
\def\small{\@setsize\small{9.2pt}\viiipt\@viiipt}
\def\footnotesize{\@setsize\footnotesize{8.8pt}\viiipt\@viiipt}
\def\scriptsize{\@setsize\scriptsize{8pt}\viipt\@viipt}
\def\tiny{\@setsize\tiny{6pt}\vpt\@vpt}
\def\large{\@setsize\large{14pt}\xiipt\@xiipt}
\def\Large{\@setsize\Large{18pt}\xivpt\@xivpt}
\def\LARGE{\@setsize\LARGE{22pt}\xviipt\@xviipt}
\def\huge{\@setsize\huge{22pt}\xxpt\@xxpt}
\def\Huge{\@setsize\Huge{28pt}\xxvpt\@xxvpt}
\fi
%%
%% Check if we have selected 11 points
\def\@tempa{11}\ifx\@ptsize\@tempa
\typeout{-- This is an 11 point document}
\def\@normalsize{\@setsize\normalsize{13.6pt}\xipt\@xipt
\abovedisplayskip 1em plus2pt minus5pt\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip \z@ plus3pt\belowdisplayshortskip .6em plus3pt minus3pt
\topsep \belowdisplayshortskip%!PN
}
\def\small{\@setsize\small{12pt}\xpt\@xpt}
\def\footnotesize{\@setsize\footnotesize{11pt}\ixpt\@ixpt}
\def\scriptsize{\@setsize\scriptsize{9.5pt}\viiipt\@viiipt}
\def\tiny{\@setsize\tiny{7pt}\vipt\@vipt}
\def\large{\@setsize\large{14pt}\xiipt\@xiipt}
\def\Large{\@setsize\Large{18pt}\xivpt\@xivpt}
\def\LARGE{\@setsize\LARGE{22pt}\xviipt\@xviipt}
\def\huge{\@setsize\huge{25pt}\xxpt\@xxpt}
\def\Huge{\@setsize\Huge{30pt}\xxvpt\@xxvpt}
\fi
%%
%% Check if we have selected 12 points
\def\@tempa{12}\ifx\@ptsize\@tempa
\typeout{-- This is a 12 point document}
\def\@normalsize{\@setsize\normalsize{14pt}\xiipt\@xiipt
\abovedisplayskip 1em plus3pt minus6pt\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip \z@ plus3pt\belowdisplayshortskip .6em plus4pt minus4pt
\topsep \belowdisplayshortskip%!PN
}
\def\small{\@setsize\small{11.4pt}\xpt\@xpt}
\def\footnotesize{\@setsize\footnotesize{10pt}\ixpt\@ixpt}
\def\scriptsize{\@setsize\scriptsize{9pt}\viiipt\@viiipt}
\def\tiny{\@setsize\tiny{8pt}\vipt\@vipt}
\def\large{\@setsize\large{18pt}\xivpt\@xivpt}
\def\Large{\@setsize\Large{22pt}\xviipt\@xviipt}
\def\LARGE{\@setsize\LARGE{25pt}\xxpt\@xxpt}
\def\huge{\@setsize\huge{30pt}\xxvpt\@xxvpt}
\let\Huge=\huge
\fi


%% Definitions for PARAGRAPHS
%%
\abovedisplayskip       0pt plus2pt minus5pt%
\belowdisplayskip       \abovedisplayskip
\abovedisplayshortskip  0pt plus3pt%
\belowdisplayshortskip  0pt plus3pt minus3pt%

%% Definitions for LISTS
%%

%% Change aspect of lists with
%% 1) \itemindent,  label indentation  wrt to left list margin
%% 2) \leftmargini, the indentation of the whole list (on left, first level)
\itemindent        -1em
\leftmargini        2em
%\itemindent         2em  % Alternative values: sometimes used..
%\leftmargini        0em
\leftmarginii       1em
\leftmarginiii    1.5em
\leftmarginiv     1.5em
\leftmarginv      1.0em
\leftmarginvi     1.0em
\labelsep           5pt
\leftmargin\leftmargini
\labelwidth         \z@

\def\@listI{\leftmargin\leftmargini} \@listI
\def\@listi{\leftmargin\leftmargini  \topsep \z@ plus 1pt minus 1pt}
\def\@listii{\leftmargin\leftmarginii\labelwidth\leftmarginii
    \advance\labelwidth-\labelsep    \topsep \z@}
\def\@listiii{\leftmargin\leftmarginiii\labelwidth\leftmarginiii
    \advance\labelwidth-\labelsep    \topsep \z@}
\def\@listiv{\leftmargin\leftmarginiv\labelwidth\leftmarginiv
    \advance\labelwidth-\labelsep    \topsep \z@}
\def\@listv{\leftmargin\leftmarginv\labelwidth\leftmarginv
    \advance\labelwidth-\labelsep    \topsep \z@}
\def\@listvi{\leftmargin\leftmarginvi\labelwidth\leftmarginvi
    \advance\labelwidth-\labelsep    \topsep \z@}

\def\labelenumi{\theenumi.}     \def\theenumi{\arabic{enumi}}
\def\labelenumii{(\theenumii)}  \def\theenumii{\alph{enumii}}
\def\labelenumiii{\theenumiii.} \def\theenumiii{\roman{enumiii}}
\def\labelenumiv{\theenumiv.}   \def\theenumiv{\Alph{enumiv}}
\def\p@enumii{\theenumi}
\def\p@enumiii{\theenumi(\theenumii)}
\def\p@enumiv{\p@enumiii\theenumiii}

\def\labelitemi{$\scriptstyle\bullet$}
\def\labelitemii{\bf --}
\def\labelitemiii{$\ast$}
\def\labelitemiv{$\cdot$}

%% \itemindent is set to \z@ by list, so define new temporary variable
\newdimen\tmpitemindent
\def\verse{\let\\=\@centercr
    \list{}{\itemsep\z@ \itemindent -1.5em \listparindent \itemindent
    \rightmargin\leftmargin\advance\leftmargin 1.5em}\item[]}
\let\endverse\endlist
\def\quotation{\list{}{\listparindent 1.5em \itemindent\listparindent
    \rightmargin\leftmargin \parsep 0pt plus 1pt}\item[]}
\let\endquotation=\endlist
\def\quote{\list{}{\rightmargin\leftmargin}\item[]}
\let\endquote=\endlist
\def\@mklab#1{#1}
\def\description{\tmpitemindent\itemindent\list{}{\itemindent\tmpitemindent
    \labelwidth\z@\def\makelabel##1{\hspace\labelsep\it{##1}}}}
\def\enddescription{\endlist\par}
\def\enumerate{\tmpitemindent\itemindent\ifnum \@enumdepth >3 \@toodeep\else
    \advance\@enumdepth \@ne \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
    \list{\csname label\@enumctr\endcsname}{\itemindent\tmpitemindent
    \usecounter{\@enumctr}\def\makelabel##1{\hspace\labelsep\hfil{##1}}}\fi}
\def\endenumerate{\endlist\par}
\def\itemize{\tmpitemindent\itemindent\ifnum \@itemdepth >3 \@toodeep\else
    \advance\@itemdepth\@ne
    \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
    \list{\csname\@itemitem\endcsname}{\itemindent\tmpitemindent
    \def\makelabel##1{\hspace\labelsep\hfil\it{##1}}}\fi}
\def\enditemize{\endlist\par}

\newif\if@restonecol
\def\titlepage{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
        \else \newpage \fi \thispagestyle{empty}\c@page\z@}
\def\endtitlepage{\if@restonecol\twocolumn \else \newpage \fi}

\arraycolsep     5pt
\tabcolsep       6pt
\arrayrulewidth .4pt
\doublerulesep   2pt
\tabbingsep\labelsep

%% FOOTNOTES
%
\skip\footins 10pt plus 4pt minus 2pt
\footnotesep 7pt
\footskip 10mm
\skip\@mpfootins = \skip\footins
\fboxsep = 3pt \fboxrule = .4pt
\long\def\@makefntext#1{\parindent .8em\indent$^{\@thefnmark}$#1}
\def\footnoterule{}

\if@technote
   \setcounter{secnumdepth}{3}
\else
   \setcounter{secnumdepth}{4}
\fi

\newcounter{section}
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]

\def\thesection{\arabic{section}.}
\def\thesubsection{\thesection\arabic{subsection}}
\def\thesubsubsection{\thesubsection.\arabic{subsubsection}}
\def\thesubsubsectiondis{\Alph{subsection}.\arabic{subsubsection}}
\def\theparagraph{\thesubsubsection.\alph{paragraph}}
\def\theparagraphdis{\thesubsubsectiondis.\alph{paragraph}}

\def\theequation{\arabic{equation}}

%% LIST OF FIGURES AND TABLES
%
\def\@pnumwidth{1.55em}
\def\@tocrmarg {2.55em}
\def\@dotsep{4.5}
\setcounter{tocdepth}{3}

\def\tableofcontents{\section*{Contents}\@starttoc{toc}}
\def\l@section#1#2{\addpenalty{\@secpenalty} \addvspace{1.0em plus 1pt}
    \@tempdima 1.8em \begingroup \parindent \z@ \rightskip \@pnumwidth
    \parfillskip-\@pnumwidth \bf\leavevmode #1\hfil\hbox to\@pnumwidth{\hss #2}
    \par \endgroup}
\def\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
\def\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\def\listoffigures{\section*{List of Figures}\@starttoc{lof}}
\def\l@figure{\@dottedtocline{1}{1em}{1.8em}}
\def\listoftables{\section*{List of Tables}\@starttoc{lot}}
\let\l@table\l@figure

%% Definitions for floats
%%
%% Normal Floats                      %% Double Column Floats
\floatsep 12pt plus 2pt minus 2pt     \dblfloatsep 12pt plus 2pt minus 2pt
\textfloatsep 20pt plus 2pt minus 4pt \dbltextfloatsep 20pt plus 2pt minus 4pt
%\@maxsep 20pt                         \@dblmaxsep 20pt %!PN
\@fptop 0pt plus 1fil                 \@dblfptop 0pt plus 1fil
\@fpsep 8pt plus 2fil                 \@dblfpsep 8pt plus 2fil
\@fpbot 0pt plus 1fil                 \@dblfpbot 0pt plus 1fil
\def\topfraction{1.0}                 \def\dbltopfraction{1.0}
\def\floatpagefraction{0.8}           \def\dblfloatpagefraction{0.8}
\setcounter{topnumber}{2}             \setcounter{dbltopnumber}{4}
%
\intextsep 12pt plus 2pt minus 2pt
\setcounter{bottomnumber}{2}
\def\bottomfraction{.4}
\setcounter{totalnumber}{4}
\def\textfraction{.2}


%% redefine CAPTION

\long\def\@caption#1[#2]#3{\par\addcontentsline{\csname ext@#1\endcsname}{#1}{%
   \protect\numberline{\csname the#1\endcsname}{\ignorespaces #2}}
   \begingroup \@parboxrestore \normalsize
     \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}{#1}\par
   \endgroup}

\def\tablestring{table}
\def\figurestring{figure}

\newlength{\captionindent}
\long\def\@makecaption#1#2#3{
\ifx\figurestring#3
    \vskip 5pt
    \setbox\@tempboxa\hbox{#1~:~#2}
    \ifdim \wd\@tempboxa >\hsize
       \setbox\@tempboxa\hbox{#1~:~}
       \setlength\captionindent{\wd\@tempboxa} \divide\captionindent by 1
       \parbox[t]{\hsize}{\hangindent \captionindent \hangafter=1%
       \unhbox\@tempboxa#2}
    \else \hbox to\hsize{\hfil\box\@tempboxa\hfil}
    \fi
\else            % for a table
    \vskip 5pt
    \setbox\@tempboxa\hbox{#1~:~#2}
    \ifdim \wd\@tempboxa >\hsize
       \setbox\@tempboxa\hbox{#1~:~}
       \setlength\captionindent{\wd\@tempboxa} \divide\captionindent by 1
       \parbox[t]{\hsize}{\hangindent \captionindent \hangafter=1%
       \unhbox\@tempboxa#2}
    \else \hbox to\hsize{\hfil\box\@tempboxa\hfil}
    \fi
    \vskip 8pt
\fi}

\newcounter{figure}
\def\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{Figure ~\thefigure }
\def\figure{\@float{figure}}
\let\endfigure\end@float
\@namedef{figure*}{\@dblfloat{figure}}
\@namedef{endfigure*}{\end@dblfloat}
\newcounter{table}
\def\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{Table ~\thetable }
\def\table{\@float{table}}
\let\endtable\end@float
\@namedef{table*}{\@dblfloat{table}}
\@namedef{endtable*}{\end@dblfloat}

\if@twoside
\def\ps@headings{
    \def\@oddhead{\hbox{}\scriptsize\rightmark \hfil \thepage}
    \def\@evenhead{\scriptsize\thepage \hfil \leftmark\hbox{}}
    \if@draftversion
         \def\@oddfoot{\scriptsize\@date\hfil DRAFT}
         \def\@evenfoot{\scriptsize DRAFT\hfil\@date}
    \else
         \def\@oddfoot{}\def\@evenfoot{}
    \fi}
\else
\def\ps@headings{
%    \def\@oddhead{\hbox{\sf IEEE Africon 2002}}
%    \def\@oddhead{\hbox{}\scriptsize\leftmark \hfil \thepage}
    \def\@oddhead{}
    \def\@evenhead{}
    \if@draftversion
         \def\@oddfoot{\scriptsize \@date \hfil DRAFT}
    \else
         \def\@oddfoot{}
    \fi
    \def\@evenfoot{}}
\fi
\def\ps@titlepagestyle{
%    \def\@oddhead{\hbox{\sf IEEE Africon 2002}}
%    \def\@oddhead{\hbox{}\scriptsize\leftmark \hfil \thepage}
    \def\@oddhead{}
%    \def\@evenhead{\scriptsize\thepage \hfil \leftmark\hbox{}}
    \def\@evenhead{}
    \if@draftversion
         \def\@oddfoot{\scriptsize \@date\hfil DRAFT}
         \def\@evenfoot{\scriptsize DRAFT\hfil \@date}
    \else
         \def\@oddfoot{}\def\@evenfoot{}
    \fi}
\def\rightmark{}\def\leftmark{}

%% Defines the command for putting the header. footernote{TEXT} is the same
%% as markboth{TEXT}{TEXT}. Here for compatibility with other style files.
\def\markboth#1#2{\def\leftmark{\uppercase{#1}}\def\rightmark{\uppercase{#2}}}
\def\footernote#1{\markboth{#1}{#1}}

\def\today{\ifcase\month\or
    January\or February\or March\or April\or May\or June\or
    July\or August\or September\or October\or November\or December\fi
    \space\number\day, \number\year}

%% BIBLIOGRAPHY
%
%% separate citations with "], ["
\def\@citex[#1]#2{\if@filesw\immediate\write\@auxout{\string\citation{#2}}\fi
\def\@citea{}\@cite{\@for\@citeb:=#2\do {\@citea\def\@citea{],
[}\@ifundefined {b@\@citeb}{{\bf ?}\@warning {Citation `\@citeb' on
page \thepage \space undefined}}%
{\csname b@\@citeb\endcsname}}}{#1}}

\def\@cite#1#2{[{#1\if@tempswa, #2\fi}]}

\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}

%% Allow short (name-less) citations, when used in conjunction with a
%% bibliography style that creates labels like \citename{, }
\let\@internalcite\cite
\def\cite{\def\citename##1{##1}\@internalcite}
\def\shortcite{\def\citename##1{}\@internalcite}
\def\@biblabel#1{\def\citename##1{##1}[#1]\hfill}

%\def\thebibliography#1{\bf\section{REFERENCES}\footnotesize\list
\def\thebibliography#1{\bf\section{REFERENCES}\normalsize\list
    {[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
%    \advance\leftmargin\labelsep \itemsep 0pt plus .5pt
    \advance\leftmargin\labelsep \itemsep 1.0em
    \usecounter{enumi}}
    \def\newblock{\hskip .11em plus .33em minus .07em}
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=1000\relax}
\let\endthebibliography=\endlist

%% appendix command for one single appendix
\def\appendix{\par
    \setcounter{section}{0}\setcounter{subsection}{0}
    \def\thesection{\Alph{section}} \section*{Appendix}
}
%% appendices command for multiple appendicies
\def\appendices{\par
    \setcounter{section}{0}\setcounter{subsection}{0}
    \def\thesection{\Alph{section}} \section*{Appendices}
}

% KJN-
%\def\maketitle{\par
%  \begingroup
%  \def\thefootnote{} % the \thanks{} mark type is empty
%  \if@twocolumn
%     \if@technote
%        \newpage\global\@topnum\z@ \@maketitle
%     \else\twocolumn[\@maketitle]\fi
%  \else\newpage\global\@topnum\z@ \@maketitle \fi
%  \thispagestyle{titlepagestyle}\@thanks
%  \endgroup
%  \setcounter{footnote}{0}\let\maketitle\relax\let\@maketitle\relax
%  \gdef\@thanks{}\gdef\@author{}\gdef\@title{}\let\thanks\relax
%  \if@draftversion \vfil\mbox{}\newpage\fi
%}
%%% TITLE
%
% For those windows problems
\newfont{\kenff}{ptmb8r}

\def\title#1{\gdef\@title{#1}}
\def\abstract#1{\gdef\@abstract{#1}}
\def\keywords#1{\gdef\@keywords{#1}}

% author info is immediately below authors
\def\thanks#1{\gdef\@thanks{#1}}

\def\@maketitle{{\parskip 0pt \newpage \null
%   \advance \rightskip by 15mm
%   \advance \leftskip  by 15mm
   {\fontfamily{ptm}\fontseries{b}\fontsize{12pt}{\f@baselineskip}\selectfont \@title \par}
   \vskip 5pt {\lineskip .5em
   {\fontfamily{ptm}\fontseries{b}\fontsize{10pt}{\f@baselineskip}\selectfont \centering{ \@author}\par}}
   \noindent{\itshape\small\vskip 12pt {\sl \@thanks}\par}
   \noindent{\small\vskip 5pt {\fontfamily{ptm}\fontseries{b}\fontsize{9pt}{\f@baselineskip}\selectfont Abstract:} \@abstract\par}
   \noindent{\small\vskip 2pt {\fontfamily{ptm}\fontseries{b}\fontsize{9pt}{\f@baselineskip}\selectfont Key words:} \@keywords\par}
   \vskip 10pt}}

\def\maketitle{\par
   \begingroup
   \def\@makefnmark{\hbox to 0pt{$^{\@thefnmark}$\hss}}
   \if@twocolumn
      \twocolumn[\@maketitle]
   \else \newpage \global\@topnum\z@ \@maketitle \fi%
   \thispagestyle{plain}
   \endgroup
   \setcounter{footnote}{0}
   \let\maketitle\relax
   \let\@maketitle\relax
   \gdef\@thanks{}\gdef\@author{}\gdef\@abstract{}\gdef\@keywords{}
   \gdef\@title{}\let\thanks\relax}

% ----------
% -KJN

%%\newfont{\sfb}{phvb}
%\def\@maketitle{\newpage\if@draftversion\mbox{}\vfil\fi\begin{center}
%    \if@technote
%      {\bf\@title\par}\vskip 1.3em{\lineskip .5em\@author\par}
%    \else
%%      \vskip-10mm\vskip0.2em{\large\bf\@title}\par\vskip1.0em%
%%      \vskip0.2em{\large\bf\@title}\par\vskip1.0em%
%      \vskip0.2em{\Large\sf\fontseries{bx}\selectfont\@title}\par\vskip1.0em%
%      \if@draftversion\vfil\fi%
%      {\lineskip.5em\large\sf\@author\par}
%    \fi
%    \end{center}\par\vskip 2em}

%\newfont{\kenff}{ptmb}
%\def\abstract{%
%    \if@twocolumn
%      \section*{ABSTRACT}\kenff
%    \else
%      \begin{center}\vspace{-0.8em}\small\bf Abstract\end{center}\quotation\small
%    \fi}
%\def\endabstract{\vspace{0.6em}\par\if@twocolumn\else\endquotation\fi
%    \normalsize\rm}
%
%\def\keywords{\vspace{-.3em}
%    \if@twocolumn
%      \it Keywords\/\rm---$\!$%
%    \else
%      \begin{center}\small\bf Keywords\end{center}\quotation\small
%    \fi}
%\def\endkeywords{\vspace{0.6em}\par\if@twocolumn\else\endquotation\fi
%    \normalsize\rm}

%\newfont{\kenf}{ptmbc}
% Again for those windows people (pity we lose the capitalisation)
\newfont{\kenf}{ptmb8r}
%% SECTIONS
%%

% KJN-
%\def\section{\@startsection {section}{1}{\z@}{0.5ex}{0.2ex}{\kenf}}
%\def\subsection{\@startsection{subsection}{2}{\z@}{0.5ex}{0.2ex}{\bf}}
\def\section{\@startsection
   {section}%                         % name
   {1}%                               % level
   {\z@}%                             % indent
   {0.2ex}%                  % beforeskip
   {0.2ex}%                % afterskip
   {\centering\kenf}}% style

\def\subsection{\@startsection
   {subsection}%                      % name
   {2}%                               % level
   {\z@}%                             % indent
   {0.1ex}%                  % beforeskip
   {0.1ex}%                % afterskip
   {\normalfont\normalsize\textsl}}% % style

\def\subsubsection{\@startsection
   {subsubsection}%                   % name
   {3}%                               % level
   {\z@}%                             % indent
  % {0.5ex}%                  % beforeskip
  %{0.2ex}%                % afterskip
  {0.1\baselineskip}%               % beforeskip
  % {0.2ex}%                % afterskip
   {-1em}                           % afterskip
   {\normalfont\normalsize\textsl}}% % style

\def\refname{REFERENCES}
% -KJN


%\def\section{\@startsection {section}{1}{\z@}{2.0ex plus .5ex
%     minus .2ex}{1.0ex plus .2ex}{\sc}}
%\def\subsection{\@startsection{subsection}{2}{\z@}{2.0ex plus .5ex
%     minus .2ex}{1.0ex plus .2ex}{\it}}
%\if@technote
%  \def\subsubsection{\@startsection{subsubsection}{3}{\z@}{2.0ex plus .5ex
%     minus .1ex}{0pt}{\it}}
%\else
%  \def\subsubsection{\@startsection{subsubsection}{3}{\z@}{2.0ex plus .5ex
%     minus .2ex}{1.0ex plus .2ex}{\rm}}
%  \def\paragraph{\@startsection{paragraph}{4}{\z@}{1.0ex plus .5ex
%     minus .2ex}{0ex}{\rm}}
%\fi

%% ENVIRONEMTS
\def\QED{\mbox{\rule[0pt]{1.5ex}{1.5ex}}}
\def\proof{\noindent\hspace{2em}{\it Proof: }}
\def\endproof{\hspace*{\fill}~\QED\par\endtrivlist\unskip}
\def\@begintheorem#1#2{\tmpitemindent\itemindent\topsep 0pt\rm\trivlist
    \item[\hskip \labelsep{\indent\it #1\ #2:}]\itemindent\tmpitemindent}
\def\@opargbegintheorem#1#2#3{\tmpitemindent\itemindent\topsep 0pt\rm \trivlist
    \item[\hskip\labelsep{\indent\it #1\ #2\ \rm(#3)}]\itemindent\tmpitemindent}
\def\@endtheorem{\endtrivlist\unskip}

%% sets up default PAGESTYLE
\ps@headings
\pagenumbering{arabic}

\if@twoside\else\raggedbottom\fi
\if@tmptwocolumn \twocolumn \sloppy \flushbottom \fi
\if@draftversion \def\baselinestretch{1.5}\fi

%% Definition for Big letter at the beginning of a paragraph
%%
\def\PARstart#1#2{\begingroup\def\par{\endgraf\endgroup\lineskiplimit=0pt}
    \setbox2=\hbox{\uppercase{#2} }\newdimen\tmpht \tmpht \ht2
    \advance\tmpht by \baselineskip\font\hhuge=cmr10 at \tmpht
    \setbox1=\hbox{{\hhuge #1}}
    \count7=\tmpht \count8=\ht1\divide\count8 by 1000 \divide\count7 by\count8
    \tmpht=.001\tmpht\multiply\tmpht by \count7\font\hhuge=cmr10 at \tmpht
    \setbox1=\hbox{{\hhuge #1}} \noindent \hangindent1.05\wd1
    \hangafter=-2 {\hskip-\hangindent \lower1\ht1\hbox{\raise1.0\ht2\copy1}%
    \kern-0\wd1}\copy2\lineskiplimit=-1000pt}

\if@technote\def\PARstart#1#2{#1#2}\fi     % if technical note, disable it
\if@draftversion\def\PARstart#1#2{#1#2}\fi % if draft, disable it

%% Allows to enter BIOGRAPHY leaving place for picture (adapts to font size)
%%
\newenvironment{biography}[1]{%
\footnotesize\unitlength 1mm\bigskip\bigskip\bigskip\parskip=0pt\par%
\rule{0pt}{39mm}\vspace{-39mm}\par%   garantees correct page breaking
\noindent\setbox0\hbox{\framebox(25,32){}}%   box containing the frame
\ht0=37mm\count10=\ht0\divide\count10 by\baselineskip%  calculates lines
\global\hangindent29mm\global\hangafter-\count10%
\hskip-28.5mm\setbox0\hbox to 28.5mm {\raise-30.5mm\box0\hss}%
\dp0=0mm\ht0=0mm\box0\noindent\bf#1\rm}{
\par\rm\normalsize}

\endinput %!PN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End of IEEEtran.sty  %%%%%%%%%%%%%%%%%%%%%%%%%%%%