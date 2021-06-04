%% 
%% This is the HCI Journal main article class file
%% 
%% Written by Scott Carter
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hcij}[2018/10/16 HCI Journal article template]
\LoadClass[10pt,onecolumn]{article}

\RequirePackage[title]{appendix}
\RequirePackage{xcolor}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage[pdftex]{graphicx}
\RequirePackage{array}
\RequirePackage[colorlinks=false,pdfborderstyle={/S/U/W 1}]{hyperref}
\RequirePackage{multirow}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{palatino}
\RequirePackage{enumitem}
\RequirePackage{etoolbox}
\RequirePackage{url}
\RequirePackage{comment}
\RequirePackage{forloop}
\RequirePackage{tocloft}
\RequirePackage{titlesec}
\RequirePackage[font=bf]{caption}
\RequirePackage{titlesec}
\RequirePackage{apacite}
\RequirePackage{tocloft}
\RequirePackage{booktabs}
\RequirePackage{float}
\RequirePackage[utf8]{inputenc}
%\RequirePackage[style=apa, backend=biber]{biblatex}
\RequirePackage{apacite}

\cftpagenumbersoff{section}
\cftpagenumbersoff{subsection}
\cftpagenumbersoff{subsubsection}
\renewcommand{\cftdot}{}
\setcounter{tocdepth}{3}
\renewcommand{\cftsecfont}{\scshape}
\renewcommand{\thesection}{\arabic{section}.}
\renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}.}

\captionsetup{figurename=FIGURE,singlelinecheck=false,labelsep=period}

\geometry{letterpaper,tmargin=70pt,bmargin=180pt,footskip=30pt}

\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions\relax

\renewcommand{\headrulewidth}{0pt}%
\renewcommand{\footrulewidth}{1.4pt}%
\renewcommand{\appendixname}{APPENDIX}

\newcommand\articlebodystart{
    \begingroup
    \articlebodystyle
}

\newcommand\articlebodyend{
    \endgroup
    \clearpage
}

\newcommand\thickhrrule{
    \noindent\makebox[\linewidth]{\rule{\textwidth}{1.5pt}}
}

\newcommand\thinhrrule{
    \noindent\makebox[\linewidth]{\rule{\textwidth}{.5pt}}
}

\newcommand\articlebodystyle{
    \titleformat{\section}
    {\normalfont\Large\bfseries\uppercase}{\thesection}{1em}{}
    \titleformat{\subsection}
    {\normalfont\large\bfseries}{\thesubsection}{1em}{}
    \titleformat{\subsubsection}
    {\normalfont\normalsize\bfseries}{\thesubsubsection}{1em}{}
    \titleformat{\paragraph}
    {\normalfont\normalsize\itshape}{\theparagraph}{1em}{}
    \titleformat{\subparagraph}[runin]
    {\normalfont\normalsize\bfseries\itshape}{\thesubparagraph}{1em}{}
}

\newcommand{\articletitle}[1]{%
  \begin{center}
    \textbf{\huge #1}
    \par
  \end{center}
  \medskip{}
}

\newcommand{\ctitle}[1]{%
  \noindent
    \textbf{\huge Commentary: #1}
    \par
  \medskip{}
}

\newcommand{\authorlist}[1]{%
  \begin{center}
    \textbf{\large #1}
    \par
  \end{center}
  \medskip{}
}

\newcommand{\cauthorlist}[1]{%
  \noindent
    \textbf{\large #1}
    \par
  \medskip{}
}

\newcommand{\affiliationlist}[1]{%
  \begin{center}
    \emph{\large #1}
    \par
  \end{center}
  \medskip{}
}

\newcommand{\caffiliationlist}[1]{%
  \noindent
    \emph{\large #1}
    \par
  \medskip{}
}

\newcommand{\miniauthorbio}[4]{%
  \noindent
    \textbf{#1} (#2, #3) #4
    \par
  \medskip{}
}

\newcommand{\runninghead}[1]{%
  \begin{flushleft}
    \textbf{Running Head: #1}
    \par
  \end{flushleft}
  \medskip{}
}

\newcommand{\articleabstract}[1]{%
  \begin{center}
    \textbf{\Large ABSTRACT}
    \par
  \end{center}
  \begin{flushleft}
    #1
    \par
  \end{flushleft}
  \medskip{}
}

\newcommand{\articlenotes}[1]{%
  \begin{center}
    \textbf{\Large NOTES}
    \par
  \end{center}
  \begin{flushleft}
    #1
    \par
  \end{flushleft}
  \medskip{}
}

\newcommand{\titlenotes}{%
  \begin{center}
    \textbf{Notes}
    \par
  \end{center}
  \medskip{}
}

\newcommand{\titleauthorminibios}{%
  \begin{flushleft}
    \textbf{\large Authors' Mini-bios:}
    \par
  \end{flushleft}
  \medskip{}
}

\newcommand{\titleeditorminibios}{%
  \begin{flushleft}
    \textbf{\large Editors' Mini-bios:}
    \par
  \end{flushleft}
  \medskip{}
}

\newcommand{\titlebackground}[1]{%
  \noindent
    \textbf{\emph{Background.}} #1
    \par
  \medskip{}
}

\newcommand{\titleacknowledgments}[1]{%
  \noindent
    \textbf{\emph{Acknowledgements.}} #1
    \par
  \medskip{}
}

\newcommand{\titlefunding}[1]{%
  \noindent
    \textbf{\emph{Funding.}} #1
    \par
  \medskip{}
}

\newcommand{\titlesupplementarydata}[1]{%
  \noindent
    \textbf{\emph{Supplementary Data.}} #1
    \par
  \medskip{}
}

\newcommand{\titlehcieditorialrecord}[1]{%
  \noindent
    \textbf{\emph{HCI Editorial Record.}} #1
    \par
  \medskip{}
}

%\let\mtcontentsname\contentsname
%\renewcommand\contentsname{\MakeUppercase\mtcontentsname}
\renewcommand{\contentsname}{\hfill\bfseries\Large CONTENTS\hfill}   
\renewcommand{\cftaftertoctitle}{\hfill}

\newcommand\subsubsectionnonum[1]{%
  \subsubsection*{#1}%
  \phantomsection\addcontentsline{toc}{subsubsection}{#1}}
  
\newcommand\sectionnonum[1]{%
  \section*{#1}%
  \phantomsection\addcontentsline{toc}{section}{#1}}

\newcommand\subsectionnonum[1]{%
  \subsection*{#1}%
  \phantomsection\addcontentsline{toc}{subsection}{#1}}

\newcounter{appendixsscounter}

\newcommand{\appendixsection}[1]{\vspace*{.05\textwidth}\begingroup\normalfont\Large\bfseries%
\setcounter{appendixsscounter}{0}
\refstepcounter{section}%
\addcontentsline{toc}{section}{\appendixname~\thesection.~~\texorpdfstring{\uppercase{#1}}{}}
\noindent\appendixname~\thesection.~\texorpdfstring{\uppercase{#1}}{}\par\endgroup}

\newcommand{\appendixsubsection}[1]{\vspace*{.025\textwidth}\begingroup\bfseries%
\refstepcounter{appendixsscounter}%
\addcontentsline{toc}{subsection}{\numberline{\thesection\theappendixsscounter.~#1}}
\noindent\thesection\theappendixsscounter.~#1\par\endgroup}

\newcommand{\appendixsubsubsection}[1]{\vspace*{.025\textwidth}\begingroup\bfseries%
\phantomsection\addcontentsline{toc}{subsubsection}{\numberline{#1}}
\noindent#1\par\endgroup}

