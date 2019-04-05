\ProvidesClass{uofathesis}[2015/08/31 v0.9 wrapper to scrbook for thesis at UofA]
% Option for UofA colors:
\newif\if@uofacolor\@uofacolorfalse
\DeclareOption{uofacolor}{\@uofacolortrue}

% All other Options go to KOMA-Script
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\PassOptionsToPackage{bibliography=totoc}{biblatex}
\ProcessOptions\relax

\LoadClass[
  headsepline,            % line  between header and text body
  bibliography=totoc,     % bibliography as unnumbered chapter in toc
  numbers=noenddot,       % no dot after figure/table number
  captions=tableheading,  % correct spacing for table headings
  titlepage=firstiscover, % symmetrical margins on titlepage
  headings=normal,        % size of chapter headings slightly smaller
  DIV=12                  % by Sabrina, changes margins
]{scrbook}


% Define our UofA colours:
\RequirePackage{xcolor}
\xdefinecolor{uofadarkblue}{RGB}{10, 55, 113}
\xdefinecolor{uofablue}{RGB}{13, 69, 138}
\xdefinecolor{uofadarkred}{RGB}{181, 1, 27}
\xdefinecolor{uofared}{RGB}{228, 1, 34}
\xdefinecolor{uofadarkgold}{RGB}{133, 97, 2}
\xdefinecolor{uofagold}{RGB}{163, 117, 11}
\xdefinecolor{uofadarkgrey}{RGB}{155, 156, 157}
\xdefinecolor{uofagrey}{RGB}{179, 179, 181}

\RequirePackage{caption}
\RequirePackage{subcaption}

% add some Color to structural elements if option uofacolor was given
\RequirePackage{scrlayer-scrpage}
\pagestyle{scrheadings}

% add some Color to structural elements if option uofacolor was given
\RequirePackage{scrlayer-scrpage}
\pagestyle{scrheadings}

\KOMAoption{headsepline}{0.5pt:\textwidth}
\if@uofacolor%
  \addtokomafont{title}{\color{uofablue}}          % title on titlepage
  \addtokomafont{sectioning}{\color{uofablue}}     % headlines of the chapters, sections etc. 
  \addtokomafont{pagenumber}{\color{uofablue}}     % page number in the footer
  \addtokomafont{chapterentry}{\color{uofablue}}   % chapters in the table of contents
  \setkomafont{headsepline}{\color{uofablue}}        % line between header and text body
  \DeclareCaptionFont{uofablue}{\color{uofablue}}
  \captionsetup{%
              labelfont={bf,uofablue},     % bold label in tu colour
              format=plain,               % no indentation under the label
              width=0.9\textwidth,        % slightly smaller width than text
              font=small,                 % font slightly smaller than text
            }
\else
  \captionsetup{%
              labelfont=bf,               % bold label
              format=plain,               % no indentation under the label
              width=0.9\textwidth,        % slightly smaller width than text
              font=small,                 % font slightly smaller than text
            }
\fi

% equation numbers of form chapter.equationnumber
\RequirePackage{amsmath}%
\renewcommand{\theequation}{\thechapter{}.\arabic{equation}}%
\numberwithin{equation}{chapter}%

% store the title in \thetitle, so one can access it in the document
\let\oldtitle\title%
\renewcommand{\title}[1]{\oldtitle{#1}\newcommand{\thetitle}{#1}}

% initialize commands:
\newcommand\theschool{}
\newcommand\thefaculty{}
\newcommand\theuniversity{}
\newcommand\thedepartment{}

\newcommand\thethesisclass{}
\newcommand\thesubmissiondate{}
\newcommand\thefirstadvisor{}
\newcommand\thesecondadvisor{}

% new commands for information about the thesis
\newcommand\school[1]{\renewcommand\theschool{#1}}
\newcommand\faculty[1]{\renewcommand\thefaculty{#1}}
\newcommand\university[1]{\renewcommand\theuniversity{#1}}
\newcommand\department[1]{\renewcommand\thedepartment{#1}}

\newcommand\logo[1]{\renewcommand\thelogo{#1}}
\newcommand\thesisclass[1]{\renewcommand\thethesisclass{#1}}
\newcommand\submissiondate[1]{\renewcommand\thesubmissiondate{#1}}
\newcommand\firstadvisor[1]{\renewcommand\thefirstadvisor{#1}}
\newcommand\secondadvisor[1]{\renewcommand\thesecondadvisor{#1}}

% set title page elements
\subject{\myfont{\normalsize Thesis submitted for the degree of \\ \Large\thethesisclass}}
\titlehead{\thelogo \\ \myfont{\normalsize Thesis submitted for the degree of \\ \Large\thethesisclass}}
\publishers{\vspace{2.3cm}\large \myfont{Supervisors:\\ \thefirstadvisor\\\thesecondadvisor} \vspace{1cm} \\ \normalsize\normalfont\sffamily\thefaculty \\ \theschool \\ \thedepartment \\ \theuniversity}

\addtokomafont{subject}{\raggedright\normalfont\sffamily}
\addtokomafont{titlehead}{\raggedright\normalfont\sffamily}
\addtokomafont{title}{\raggedright}
\addtokomafont{subtitle}{\raggedright}
\addtokomafont{author}{\vspace{1cm}\raggedright\LARGE\sffamily\setlength{\tabcolsep}{0pt}}
\addtokomafont{date}{\raggedright\sffamily}
\addtokomafont{publishers}{\vspace{2cm}\raggedright}%\normalfont\sffamily}

% page for the advisors
\newcommand{\makeadvisorpage}{%
  \thispagestyle{empty}
  \vspace*{\fill}
  \begin{tabular}{@{}l@{\hspace{2em}}l@{}}
      Principal Superviso:  & \thefirstadvisor \\
      Co-Supervisor: & \thesecondadvisor \\
      Date of Submission:    & \thesubmissiondate
  \end{tabular}
  \newpage
}

