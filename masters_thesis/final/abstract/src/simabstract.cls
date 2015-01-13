%%
%% Unofficial LaTeX Template for SIM Graduate Thesis Abstract
%%
%% Author: Yasunori Yusa <lastname at save.sys.t.u-tokyo.ac.jp>
%%
%% Usage:
%%   \documentclass{simabstract}
%%   \jtitle{Title in Japanese}
%%   \etitle{Title in English}
%%   \author{Author}
%%   \advisor{Advisor}
%%   \begin{document}
%%   \maketitle
%%   ...
%%   \end{document}
%%
\NeedsTeXFormat{LaTeX2e}%
\ProvidesClass{simabstract}%
%% load jarticle.cls
\LoadClass[a4paper, 10pt, oneside, twocolumn, final]{jarticle}%
%% process options
\newif\ifsim@ams \sim@amstrue
\newif\ifsim@ptmx \sim@ptmxfalse
\newif\ifsim@tx \sim@txtrue
\newif\ifsim@varg \sim@vargfalse
\DeclareOption{draft}{\setlength\overfullrule{5pt}}%
\DeclareOption{final}{\setlength\overfullrule{0pt}}%
\DeclareOption{ams}{\sim@amstrue}%
\DeclareOption{noams}{\sim@amsfalse}%
\DeclareOption{ptmx}{\sim@ptmxtrue}%
\DeclareOption{noptmx}{\sim@ptmxfalse}%
\DeclareOption{tx}{\sim@txtrue}%
\DeclareOption{notx}{\sim@txfalse}%
\DeclareOption{varg}{\sim@vargtrue}%
\ProcessOptions
%% load amsmath.sty
\ifsim@ams
\RequirePackage{amsmath}%
\fi
%% load fonts packages
\ifsim@ptmx
\RequirePackage{mathptmx}%
\RequirePackage{times}%
\RequirePackage{helvet}%
\RequirePackage{courier}%
\else\ifsim@tx
\ifsim@varg
\RequirePackage[varg]{txfonts}%
\else
\RequirePackage{txfonts}%
\fi
\RequirePackage{times}%
\RequirePackage{helvet}%
\RequirePackage{courier}%
\fi\fi
%% Japanese fonts of it/sl/sc
\DeclareFontShape{JY1}{mc}{m}{it}{<-> ssub*mc/m/n}{}%
\DeclareFontShape{JT1}{mc}{m}{it}{<-> ssub*mc/m/n}{}%
\DeclareFontShape{JY1}{mc}{m}{sl}{<-> ssub*mc/m/n}{}%
\DeclareFontShape{JT1}{mc}{m}{sl}{<-> ssub*mc/m/n}{}%
\DeclareFontShape{JY1}{mc}{m}{sc}{<-> ssub*mc/m/n}{}%
\DeclareFontShape{JT1}{mc}{m}{sc}{<-> ssub*mc/m/n}{}%
\DeclareFontShape{JT1}{mc}{bx}{n}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JY1}{mc}{bx}{n}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JY1}{mc}{bx}{it}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JT1}{mc}{bx}{it}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JY1}{mc}{bx}{sl}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JT1}{mc}{bx}{sl}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JY1}{mc}{bx}{sc}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JT1}{mc}{bx}{sc}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JY1}{gt}{m}{it}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JT1}{gt}{m}{it}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JY1}{gt}{m}{sl}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JT1}{gt}{m}{sl}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JY1}{gt}{m}{sc}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JT1}{gt}{m}{sc}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JY1}{gt}{bx}{it}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JT1}{gt}{bx}{it}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JY1}{gt}{bx}{sl}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JT1}{gt}{bx}{sl}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JY1}{gt}{bx}{sc}{<-> ssub*gt/m/n}{}%
\DeclareFontShape{JT1}{gt}{bx}{sc}{<-> ssub*gt/m/n}{}%
%% absolute font size
\newcommand{\sim@xpt}{\fontsize{10.00000pt}{0pt}\selectfont}%
\newcommand{\sim@xipt}{\fontsize{11.00000pt}{0pt}\selectfont}%
\newcommand{\sim@xiipt}{\fontsize{12.00000pt}{0pt}\selectfont}%
\newcommand{\sim@xivpt}{\fontsize{14.00000pt}{0pt}\selectfont}%
%% a4paper
\setlength{\paperwidth}{210mm}%
\setlength{\paperheight}{297mm}%
%% margin
\setlength{\hoffset}{0mm}%
\setlength{\voffset}{0mm}%
\setlength{\oddsidemargin}{24truemm}%
\setlength{\evensidemargin}{24truemm}%
\addtolength{\oddsidemargin}{-1truein}%
\addtolength{\evensidemargin}{-1truein}%
\setlength{\topmargin}{25truemm}%
\addtolength{\topmargin}{-1truein}%
\setlength{\headheight}{0mm}%
\setlength{\headsep}{0mm}%
\setlength{\textwidth}{210truemm}%
\addtolength{\textwidth}{-24truemm}%
\addtolength{\textwidth}{-24truemm}%
\setlength{\textheight}{297truemm}%
\addtolength{\textheight}{-25truemm}%
\addtolength{\textheight}{-25truemm}%
\setlength{\linewidth}{75truemm}%
\setlength{\columnsep}{12truemm}%
\setlength{\marginparsep}{0mm}%
\setlength{\marginparwidth}{0mm}%
\setlength{\footskip}{12truemm}%
\setlength{\parskip}{0pt}%
\setlength{\parsep}{0pt}%
\setlength{\partopsep}{0pt}%
\setlength{\topsep}{0pt}%
\setlength{\itemsep}{0pt}%
\setlength{\floatsep}{\baselinestretch\Cvs}%
\setlength{\textfloatsep}{\baselinestretch\Cvs}%
\setlength{\intextsep}{\baselinestretch\Cvs}%
\setlength{\abovecaptionskip}{0pt}%
\setlength{\belowcaptionskip}{0pt}%
\renewcommand{\baselinestretch}{0.89}% adjusted to 54 lines
\kanjiskip=0.08zw plus 0.4pt minus 0.4pt % adjusted to 21 chars
\xkanjiskip=0.33zw plus 1pt minus 1pt
\flushbottom
%% parameters
\let\sim@jtitle\@empty
\let\sim@etitle\@empty
\let\sim@author\@empty
\let\sim@advisor\@empty
\def\jtitle#1{\def\sim@jtitle{#1}}%
\def\etitle#1{\def\sim@etitle{#1}}%
\def\author#1{\def\sim@author{#1}}%
\def\advisor#1{\def\sim@advisor{#1}}%
\def\title#1{\jtitle{#1}}%
\def\titles#1#2{\jtitle{#1}\etitle{#2}}%
%% title
\renewcommand{\maketitle}{\twocolumn[\@maketitle]}%
\renewcommand{\@maketitle}{%
\newpage\null
\begin{center}%
 {\sim@xivpt\sffamily\gtfamily\sim@jtitle}\par
 \ifx\sim@etitle\@empty\else
 \vspace{0.5ex}%
 {\sim@xiipt\sim@etitle}\par
 \fi
\end{center}%
\vspace{\baselinestretch\Cvs}%
\ifx\sim@advisor\@empty\else
\begin{flushleft}%
 {\sim@xiipt\sim@advisor}\par
\end{flushleft}%
\fi
\ifx\sim@author\@empty\else
\begin{flushright}%
 {\sim@xiipt\sim@author}\par
\end{flushright}%
\fi
\vspace{\baselinestretch\Cvs}%
}%
%% sections
\renewcommand{\thesection}{\arabic{section}.}%
\renewcommand{\thesubsection}{\thesection\arabic{subsection}}%
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}%
\renewcommand{\section}{%
  \@startsection{section}{1}{\z@}%
  {\baselinestretch\Cvs}{0.00001pt}%
  {\reset@font\sim@xipt\sffamily\gtfamily}}%
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
  {0.00001pt}{0.00001pt}%
  {\reset@font\normalsize\sffamily\gtfamily}}%
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
  {0.00001pt}{0.00001pt}%
  {\reset@font\normalsize\sffamily\gtfamily}}%
\renewcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
  {0.00001pt}{0.00001pt}%
  {\reset@font\normalsize\sffamily\gtfamily}}%
\renewcommand{\subparagraph}{\@startsection{subparagraph}{5}{\z@}%
  {0.00001pt}{0.00001pt}%
  {\reset@font\normalsize\sffamily\gtfamily}}%
%% caption
\def\fnum@figure{\figurename\nobreak\thefigure}%
\def\fnum@table{\tablename\nobreak\thetable}%
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \iftdir\sbox\@tempboxa{#1\hskip1zw#2}%
    \else\sbox\@tempboxa{#1\hskip1zw\relax #2}%
  \fi
  \ifdim \wd\@tempboxa >\hsize
    \iftdir #1\hskip1zw#2\relax\par
      \else #1\hskip1zw\relax #2\relax\par\fi
  \else
    \global \@minipagefalse
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}%
%% references
\renewcommand{\@cite}[1]{\textsuperscript{#1)}}%
\renewcommand{\@biblabel}[1]{#1)}%
\renewenvironment{thebibliography}[1]
{\section*{\refname\@mkboth{\refname}{\refname}}%
   \list{\@biblabel{\@arabic\c@enumiv}}%
        {\settowidth\labelwidth{\@biblabel{#1}}%
         \setlength{\parsep}{0pt}% adjust margin
         \setlength{\partopsep}{0pt}%
         \setlength{\topsep}{0pt}%
         \setlength{\itemsep}{0pt}%
         \setlength{\labelsep}{1em}%
         \leftmargin\labelwidth
         \advance\leftmargin\labelsep
         \@openbib@code
         \usecounter{enumiv}%
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}}%
   \sloppy
   \clubpenalty4000
   \@clubpenalty\clubpenalty
   \widowpenalty4000%
   \sfcode`\.\@m}
  {\def\@noitemerr
    {\@latex@warning{Empty `thebibliography' environment}}%
   \endlist}%
%% items
\renewcommand{\theenumi}{\arabic{enumi}}%
\renewcommand{\labelenumi}{(\theenumi)}%
\renewenvironment{enumerate}
  {\ifnum \@enumdepth >\thr@@\@toodeep\else
   \advance\@enumdepth\@ne
   \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
   \list{\csname label\@enumctr\endcsname}{%
      \iftdir
         \ifnum \@listdepth=\@ne \topsep.5\normalbaselineskip
           \else\topsep\z@\fi
         \parskip\z@ \itemsep\z@ \parsep\z@
         \labelwidth1zw \labelsep.3zw
         \ifnum \@enumdepth=\@ne \leftmargin1zw\relax
           \else\leftmargin\leftskip\fi
         \advance\leftmargin 1zw
      \fi
         \setlength{\leftmargin}{2zw}% adjust margin
         \setlength{\parsep}{0pt}%
         \setlength{\partopsep}{0pt}%
         \setlength{\topsep}{0pt}%
         \setlength{\itemsep}{0pt}%
         \usecounter{\@enumctr}%
         \def\makelabel##1{\hss\llap{##1}}}%
   \fi}{\endlist}%
\renewenvironment{itemize}
  {\ifnum \@itemdepth >\thr@@\@toodeep\else
   \advance\@itemdepth\@ne
   \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
   \expandafter
   \list{\csname \@itemitem\endcsname}{%
      \iftdir
         \ifnum \@listdepth=\@ne \topsep.5\normalbaselineskip
           \else\topsep\z@\fi
         \parskip\z@ \itemsep\z@ \parsep\z@
         \labelwidth1zw \labelsep.3zw
         \ifnum \@itemdepth =\@ne \leftmargin1zw\relax
           \else\leftmargin\leftskip\fi
         \advance\leftmargin 1zw
      \fi
         \setlength{\leftmargin}{2zw}% adjust margin
         \setlength{\parsep}{0pt}%
         \setlength{\partopsep}{0pt}%
         \setlength{\topsep}{0pt}%
         \setlength{\itemsep}{0pt}%
         \def\makelabel##1{\hss\llap{##1}}}%
   \fi}{\endlist}%
\renewenvironment{description}
  {\list{}{\labelwidth\z@ \itemindent-\leftmargin
   \iftdir
     \leftmargin\leftskip \advance\leftmargin3\Cwd
     \rightmargin\rightskip
     \labelsep=1zw \itemsep\z@
     \listparindent\z@ \topskip\z@ \parskip\z@ \partopsep\z@
   \fi
         \setlength{\parsep}{0pt}% adjust margin
         \setlength{\partopsep}{0pt}%
         \setlength{\topsep}{0pt}%
         \setlength{\itemsep}{0pt}%
           \let\makelabel\descriptionlabel}}{\endlist}%
%% no page number
\pagestyle{empty}
%%
\endinput
%%
%% End of file `simabstract.cls'.
