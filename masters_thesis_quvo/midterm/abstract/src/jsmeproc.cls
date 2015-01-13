%%
%% Unofficial LaTeX Template for JSME Conference Proceeding Version 1.1.1b
%%
%% Author: Yasunori Yusa <yusa at save dot sys.t.u-tokyo.ac.jp>
%%
%% Usage:
%%   \documentclass{jsmeproc}
%%   \presentationid{Presentation ID}
%%   \conferencespec{Conference name and dates}
%%   \copyrightnotice{Copyright notice}
%%   \titles{Title in Japanese}{Title in English}
%%   \authorA{1st author and his/her affiliation in Japanese}{Those in English}
%%   \authorB{2nd author and his/her affiliation in Japanese}{Those in English}
%%   \keywordslist{Keywords list}
%%   \abstracttext{Abstract text}
%%   \begin{document}
%%   \maketitle
%%   Body text
%%   \end{document}
%%
\NeedsTeXFormat{LaTeX2e}%
\ProvidesClass{jsmeproc}%
%% load jarticle.cls
\LoadClass[a4paper, 10pt, oneside, twocolumn, final]{jarticle}%
%% process options
\newif\ifjpr@ams \jpr@amstrue%
\newif\ifjpr@ptmx \jpr@ptmxfalse%
\newif\ifjpr@tx \jpr@txtrue%
\newif\ifjpr@varg \jpr@vargfalse%
\DeclareOption{leqno}{\input{leqno.clo}}%
\DeclareOption{fleqn}{\input{fleqn.clo}}%
\DeclareOption{draft}{\setlength\overfullrule{5pt}}%
\DeclareOption{final}{\setlength\overfullrule{0pt}}%
\DeclareOption{ams}{\jpr@amstrue}%
\DeclareOption{noams}{\jpr@amsfalse}%
\DeclareOption{ptmx}{\jpr@ptmxtrue}%
\DeclareOption{noptmx}{\jpr@ptmxfalse}%
\DeclareOption{tx}{\jpr@txtrue}%
\DeclareOption{notx}{\jpr@txfalse}%
\DeclareOption{varg}{\jpr@vargtrue}%
\ProcessOptions%
%% load amsmath.sty
\ifjpr@ams%
\RequirePackage{amsmath}%
\fi%
%% load fonts packages
\ifjpr@ptmx%
\RequirePackage{mathptmx}%
\RequirePackage{times}%
\RequirePackage{helvet}%
\RequirePackage{courier}%
\else\ifjpr@tx%
\ifjpr@varg%
\RequirePackage[varg]{txfonts}%
\else%
\RequirePackage{txfonts}%
\fi%
\RequirePackage{times}%
\RequirePackage{helvet}%
\RequirePackage{courier}%
\fi\fi%
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
%% 9pt
\mag 900% This implementation is from jsarticle.cls.
\def\inv@mag{1.11111}%
\newcommand{\jpr@ixpteq}{\fontsize{10.00000pt}{0pt}\selectfont}%
\newcommand{\jpr@xpteq}{\fontsize{11.11111pt}{0pt}\selectfont}%
\newcommand{\jpr@xiipteq}{\fontsize{13.33333pt}{0pt}\selectfont}%
\newcommand{\jpr@xivpteq}{\fontsize{15.55556pt}{0pt}\selectfont}%
%% a4paper
\setlength{\paperwidth}{210mm}%
\setlength{\paperheight}{297mm}%
%% margin
\setlength{\hoffset}{0mm}%
\setlength{\voffset}{0mm}%
\setlength{\oddsidemargin}{15truemm}%
\setlength{\evensidemargin}{15truemm}%
\addtolength{\oddsidemargin}{-1truein}%
\addtolength{\evensidemargin}{-1truein}%
\setlength{\topmargin}{25truemm}%
\addtolength{\topmargin}{-1truein}%
\setlength{\headheight}{0mm}%
\setlength{\headsep}{0mm}%
\setlength{\textwidth}{210truemm}%
\addtolength{\textwidth}{-15truemm}%
\addtolength{\textwidth}{-15truemm}%
\setlength{\textheight}{297truemm}%
\addtolength{\textheight}{-25truemm}%
\addtolength{\textheight}{-25truemm}%
\setlength{\linewidth}{85truemm}%
\setlength{\columnsep}{10truemm}%
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
\renewcommand{\baselinestretch}{0.87}% adjusted to 60 lines
\kanjiskip=0.08zw plus 0.4pt minus 0.4pt% adjusted to 26 chars
\xkanjiskip=0.33zw plus 1pt minus 1pt%
\flushbottom%
%% parameters
\let\jpr@presentationid\@empty%
\let\jpr@conferencespec\@empty%
\let\jpr@copyrightnotice\@empty%
\let\jpr@jtitle\@empty%
\let\jpr@etitle\@empty%
\let\jpr@jauthorA\@empty%
\let\jpr@eauthorA\@empty%
\let\jpr@jauthorB\@empty%
\let\jpr@eauthorB\@empty%
\let\jpr@jauthorC\@empty%
\let\jpr@eauthorC\@empty%
\let\jpr@jauthorD\@empty%
\let\jpr@eauthorD\@empty%
\let\jpr@jauthorE\@empty%
\let\jpr@eauthorE\@empty%
\let\jpr@jauthorF\@empty%
\let\jpr@eauthorF\@empty%
\let\jpr@jauthorG\@empty%
\let\jpr@eauthorG\@empty%
\let\jpr@jauthorH\@empty%
\let\jpr@eauthorH\@empty%
\let\jpr@keywordslist\@empty%
\let\jpr@abstracttext\@empty%
\def\presentationid#1{\def\jpr@presentationid{#1}}%
\def\conferencespec#1{\def\jpr@conferencespec{#1}}%
\def\copyrightnotice#1{\def\jpr@copyrightnotice{#1}}%
\def\jtitle#1{\def\jpr@jtitle{#1}}%
\def\etitle#1{\def\jpr@etitle{#1}}%
\def\jauthorA#1{\def\jpr@jauthorA{#1}}%
\def\eauthorA#1{\def\jpr@eauthorA{#1}}%
\def\jauthorB#1{\def\jpr@jauthorB{#1}}%
\def\eauthorB#1{\def\jpr@eauthorB{#1}}%
\def\jauthorC#1{\def\jpr@jauthorC{#1}}%
\def\eauthorC#1{\def\jpr@eauthorC{#1}}%
\def\jauthorD#1{\def\jpr@jauthorD{#1}}%
\def\eauthorD#1{\def\jpr@eauthorD{#1}}%
\def\jauthorE#1{\def\jpr@jauthorE{#1}}%
\def\eauthorE#1{\def\jpr@eauthorE{#1}}%
\def\jauthorF#1{\def\jpr@jauthorF{#1}}%
\def\eauthorF#1{\def\jpr@eauthorF{#1}}%
\def\jauthorG#1{\def\jpr@jauthorG{#1}}%
\def\eauthorG#1{\def\jpr@eauthorG{#1}}%
\def\jauthorH#1{\def\jpr@jauthorH{#1}}%
\def\eauthorH#1{\def\jpr@eauthorH{#1}}%
\def\keywordslist#1{\def\jpr@keywordslist{#1}}%
\def\abstracttext#1{\def\jpr@abstracttext{#1}}%
\def\title#1{\jtitle{#1}}%
\def\author#1{\jauthorA{#1}}%
\def\titles#1#2{\jtitle{#1}\etitle{#2}}%
\def\authorA#1#2{\jauthorA{#1}\eauthorA{#2}}%
\def\authorB#1#2{\jauthorB{#1}\eauthorB{#2}}%
\def\authorC#1#2{\jauthorC{#1}\eauthorC{#2}}%
\def\authorD#1#2{\jauthorD{#1}\eauthorD{#2}}%
\def\authorE#1#2{\jauthorE{#1}\eauthorE{#2}}%
\def\authorF#1#2{\jauthorF{#1}\eauthorF{#2}}%
\def\authorG#1#2{\jauthorG{#1}\eauthorG{#2}}%
\def\authorH#1#2{\jauthorH{#1}\eauthorH{#2}}%
%% authors
\newcommand{\jpr@oneauthorperline}[2]{%
 \parbox[t]{\hsize}{\centering%
 {\jpr@xpteq#1}\par%
 \ifx#2\@empty%
 \else%
 \vspace{0.5\Cvs}%
 {\jpr@ixpteq#2}%
 \fi%
 }\par%
 \vspace{\Cvs}%
}%
\newcommand{\jpr@twoauthorsperline}[4]{%
 \parbox[t]{0.5\hsize}{\centering%
 {\jpr@xpteq#1}\par%
 \ifx#2\@empty%
 \else%
 \vspace{0.5\Cvs}%
 {\jpr@ixpteq#2}%
 \fi%
 }%
 \parbox[t]{0.5\hsize}{\centering%
 {\jpr@xpteq#3}\par%
 \ifx#4\@empty%
 \else%
 \vspace{0.5\Cvs}%
 {\jpr@ixpteq#4}%
 \fi%
 }\par%
 \vspace{\Cvs}%
}%
\newcommand{\jpr@threeauthorsperline}[6]{%
 \parbox[t]{0.33\hsize}{\centering%
 {\jpr@xpteq#1}\par%
 \ifx#2\@empty%
 \else%
 \vspace{0.5\Cvs}%
 {\jpr@ixpteq#2}%
 \fi%
 }%
 \parbox[t]{0.33\hsize}{\centering%
 {\jpr@xpteq#3}\par%
 \ifx#4\@empty%
 \else%
 \vspace{0.5\Cvs}%
 {\jpr@ixpteq#4}%
 \fi%
 }%
 \parbox[t]{0.33\hsize}{\centering%
 {\jpr@xpteq#5}\par%
 \ifx#6\@empty%
 \else%
 \vspace{0.5\Cvs}%
 {\jpr@ixpteq#6}%
 \fi%
 }\par%
 \vspace{\Cvs}%
}%
\newcommand{\jpr@fourauthorsperline}[8]{%
 \parbox[t]{0.25\hsize}{\centering%
 {\jpr@xpteq#1}\par%
 \ifx#2\@empty%
 \else%
 \vspace{0.5\Cvs}%
 {\jpr@ixpteq#2}%
 \fi%
 }%
 \parbox[t]{0.25\hsize}{\centering%
 {\jpr@xpteq#3}\par%
 \ifx#4\@empty%
 \else%
 \vspace{0.5\Cvs}%
 {\jpr@ixpteq#4}%
 \fi%
 }%
 \parbox[t]{0.25\hsize}{\centering%
 {\jpr@xpteq#5}\par%
 \ifx#6\@empty%
 \else%
 \vspace{0.5\Cvs}%
 {\jpr@ixpteq#6}%
 \fi%
 }%
 \parbox[t]{0.25\hsize}{\centering%
 {\jpr@xpteq#7}\par%
 \ifx#8\@empty%
 \else%
 \vspace{0.5\Cvs}%
 {\jpr@ixpteq#8}%
 \fi%
 }\par%
 \vspace{\Cvs}%
}%
%% title
\renewcommand{\maketitle}{\twocolumn[\@maketitle]}%
\renewcommand{\@maketitle}{%
\newpage\null%
\vspace*{-10truemm}%
\begin{center}%
 \parbox[t][15truemm][t]{0.3\hsize}{\raggedright%
 {\jpr@xivpteq\sffamily\gtfamily\jpr@presentationid}%
 \hspace{0.00001pt}}%
 \raisebox{4.33pt}{\parbox[t][15truemm][t]{0.7\hsize}{\raggedleft%
 \hspace{0.00001pt}%
 {\jpr@ixpteq\sffamily\gtfamily\jpr@conferencespec}\par%
 \hspace{0.00001pt}%
 {\jpr@ixpteq\sffamily\gtfamily\jpr@copyrightnotice}}}\par%
 {\jpr@xivpteq\sffamily\gtfamily\jpr@jtitle}\par%
 \ifx\jpr@etitle\@empty%
 \else%
 \vspace{0.5\Cvs}%
 {\jpr@xiipteq\jpr@etitle}\par%
 \fi%
 \vspace{\Cvs}%
 \ifx\jpr@jauthorB\@empty% 1 author
 \jpr@oneauthorperline{\jpr@jauthorA}{\jpr@eauthorA}%
 \else\ifx\jpr@jauthorC\@empty% 2 authors
 \jpr@twoauthorsperline%
 {\jpr@jauthorA}{\jpr@eauthorA}{\jpr@jauthorB}{\jpr@eauthorB}%
 \else\ifx\jpr@jauthorD\@empty% 3 authors
 \jpr@threeauthorsperline%
 {\jpr@jauthorA}{\jpr@eauthorA}{\jpr@jauthorB}{\jpr@eauthorB}%
 {\jpr@jauthorC}{\jpr@eauthorC}%
 \else\ifx\jpr@jauthorE\@empty% 4 authors
 \jpr@fourauthorsperline%
 {\jpr@jauthorA}{\jpr@eauthorA}{\jpr@jauthorB}{\jpr@eauthorB}%
 {\jpr@jauthorC}{\jpr@eauthorC}{\jpr@jauthorD}{\jpr@eauthorD}%
 \else\ifx\jpr@jauthorF\@empty% 5 authors
 \jpr@threeauthorsperline%
 {\jpr@jauthorA}{\jpr@eauthorA}{\jpr@jauthorB}{\jpr@eauthorB}%
 {\jpr@jauthorC}{\jpr@eauthorC}%
 \jpr@twoauthorsperline%
 {\jpr@jauthorD}{\jpr@eauthorD}{\jpr@jauthorE}{\jpr@eauthorE}%
 \else\ifx\jpr@jauthorG\@empty% 6 authors
 \jpr@threeauthorsperline%
 {\jpr@jauthorA}{\jpr@eauthorA}{\jpr@jauthorB}{\jpr@eauthorB}%
 {\jpr@jauthorC}{\jpr@eauthorC}%
 \jpr@threeauthorsperline%
 {\jpr@jauthorD}{\jpr@eauthorD}{\jpr@jauthorE}{\jpr@eauthorE}%
 {\jpr@jauthorF}{\jpr@eauthorF}%
 \else\ifx\jpr@jauthorH\@empty% 7 authors
 \jpr@fourauthorsperline%
 {\jpr@jauthorA}{\jpr@eauthorA}{\jpr@jauthorB}{\jpr@eauthorB}%
 {\jpr@jauthorC}{\jpr@eauthorC}{\jpr@jauthorD}{\jpr@eauthorD}%
 \jpr@threeauthorsperline%
 {\jpr@jauthorE}{\jpr@eauthorE}{\jpr@jauthorF}{\jpr@eauthorF}%
 {\jpr@jauthorG}{\jpr@eauthorG}%
 \else% 8 authors
 \jpr@fourauthorsperline%
 {\jpr@jauthorA}{\jpr@eauthorA}{\jpr@jauthorB}{\jpr@eauthorB}%
 {\jpr@jauthorC}{\jpr@eauthorC}{\jpr@jauthorD}{\jpr@eauthorD}%
 \jpr@fourauthorsperline%
 {\jpr@jauthorE}{\jpr@eauthorE}{\jpr@jauthorF}{\jpr@eauthorF}%
 {\jpr@jauthorG}{\jpr@eauthorG}{\jpr@jauthorH}{\jpr@eauthorH}%
 \fi\fi\fi\fi\fi\fi\fi%
 \parbox{0.75\hsize}{%
 \ifx\jpr@keywordslist\@empty%
 \else%
 \parbox[t]{0.13\hsize}{\jpr@ixpteq Key Words:}%
 \parbox[t]{0.87\hsize}{\jpr@ixpteq\itshape\jpr@keywordslist}\par%
 \vspace{\Cvs}%
 \fi%
 \ifx\jpr@abstracttext\@empty%
 \else%
 {\jpr@ixpteq\jpr@abstracttext}\par%
 \vspace{\Cvs}%
 \fi%
 \vspace{1zh}%
 }%
\end{center}%
}%
%% sections
\renewcommand{\thesection}{\arabic{section}.}%
\renewcommand{\thesubsection}{\arabic{section}-\arabic{subsection}}%
\renewcommand{\thesubsubsection}{\thesubsection-\arabic{subsubsection}}%
\renewcommand{\section}{%
  \@startsection{section}{1}{\z@}%
  {\baselinestretch\Cvs}{0.00001pt}%
  {\reset@font\normalsize\sffamily\gtfamily}}%
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
  {0.00001pt}{-1zw}%
  {\reset@font\normalsize\sffamily\gtfamily}}%
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
  {0.00001pt}{-1zw}%
  {\reset@font\normalsize\sffamily\gtfamily}}%
\renewcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
  {0.00001pt}{-1zw}%
  {\reset@font\normalsize\sffamily\gtfamily}}%
\renewcommand{\subparagraph}{\@startsection{subparagraph}{5}{\z@}%
  {0.00001pt}{-1zw}%
  {\reset@font\normalsize\sffamily\gtfamily}}%
%% caption
\renewcommand{\figurename}{Fig.~}%
\renewcommand{\tablename}{Table~}%
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
\renewcommand{\@cite}[1]{\textsuperscript{(#1)}}%
\renewcommand{\@biblabel}[1]{(#1)}%
\renewenvironment{thebibliography}[1]
{\section*{\refname\@mkboth{\refname}{\refname}}%
   \list{\@biblabel{\@arabic\c@enumiv}}%
        {\settowidth\labelwidth{\@biblabel{#1}}%
         \leftmargin\labelwidth
         \advance\leftmargin\labelsep
         \setlength{\parsep}{0pt}% adjust margin
         \setlength{\partopsep}{0pt}%
         \setlength{\topsep}{0pt}%
         \setlength{\itemsep}{0pt}%
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
%%
\endinput%
%%
%% End of file `jsmeproc.cls'.
