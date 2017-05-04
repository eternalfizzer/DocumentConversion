%% policy class
% initializes fields for Acceptable Use Policy and Information Security Policy
% generates content Title Page and Document Information Page and signature block

% REBUILDING
\def\fileversion{0.3}
\def\filedate{2017/05/04}
%% Changes:
% terminology: Revision or Version? Version
% Status displays value only (no table)
% removed Executive Summary from title page
% put organization name top of page

%% TO DO
% add option for company logo in header
% change to raggedright (use ragged2e package)

\typeout{%
	Document Class: policy \filedate \space v\fileversion \space (R. Boileau)}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{policy}[2017/05/04 policy LaTeX class]

\LoadClass{article}

%\RequirePackage{graphicx} % used in case of graphics
\RequirePackage[table]{xcolor}
\RequirePackage{booktabs}
\RequirePackage[letterpaper, left = 1.25in, right = 1.25in, top = 1.25in, bottom = 1.25in]{geometry}
\RequirePackage{fancyhdr} % for the fancy headers and footers AFTER geometry package
\RequirePackage{enumitem} % custom enumeration labels
\RequirePackage{parskip} % block formatting
\RequirePackage{titling} % \thetitle \theauthor
\RequirePackage{anyfontsize} % \fontsize{<size>}{<skip>}
\RequirePackage{sectsty} % format section headings \allsectionsfont 
\RequirePackage{hyperref} % for hypertext links in the PDF; should be at end of all packages

%% defaults
\renewcommand{\normalsize}{\fontsize{11.5}{14}\selectfont}
\setlength{\textwidth}{6in}
\setlength{\textheight}{8.5in}
\setcounter{secnumdepth}{0}%% sample.cls
\pagestyle{fancy}
%% font: sans serif
\renewcommand\sfdefault{phv}    % use Helvetica!
\renewcommand{\familydefault}{\sfdefault}
%

% define policy name
\DeclareOption{sec}{\newcommand\rb@policyname{Information Security}
	\newcommand\upperpolicyname{\uppercase{Information Security}}
	\definecolor{barColor}{RGB}{212, 35, 50} % blood red
	} 
\DeclareOption{use}{\newcommand\rb@policyname{Acceptable Use} 
	\newcommand\upperpolicyname{\uppercase{Acceptable Use}}
	\definecolor{barColor}{RGB}{98, 184, 14} % grass green	
	}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%% CUSTOM COLOURS
\definecolor{grey}{RGB}{137, 160, 81} % greenish grey for brackets
\definecolor{slate}{RGB}{71, 116, 161} % bluish grey for section headings

% REBUILDING

%% FIELDS
% required fields for \maketitle: title, author

% set organisation name
\newcommand{\@orgname}{default} % 
\newcommand{\orgname}[1]{%
	\gdef\@orgname{#1}
}

% reassign organization to author for use throughout document
\author{\@orgname}
\newcommand{\theOrganization}{\makeatletter \emph \@author \makeatother}

% set report title based on policy name
\title{\rb@policyname\ Policy}

% set document management information
\newcommand{\rb@policynum}{} % NEW
\newcommand{\policynum}[1]{%
	\renewcommand{\rb@policynum}{#1}
	}

\newcommand{\rb@effectivedate}{\emph{to be completed on final approval}} % default
\newcommand{\effectivedate}[1]{
	\renewcommand{\rb@effectivedate}{#1}
	} %

\newcommand{\rb@vernum}{} % NEW
\newcommand{\vernum}[1]{
	\renewcommand{\rb@vernum}{#1}
	} 

\newcommand{\rb@lastverdate}{} % NEW ()CHANGED)
\newcommand{\lastverdate}[1]{
	\renewcommand{\rb@lastverdate}{#1} 
}

\newcommand{\rb@responsible}{} % default
\newcommand{\responsible}[1]{
	\renewcommand{\rb@responsible}{#1}
	}

\newcommand{\rb@status}{Draft} % [Draft], Under Review, Approved or Obsolete
\newcommand{\status}[1]{
	\renewcommand{\rb@status}{#1}
	} % [Draft], Under Review, Approved or Obsolete

%% COMMON CONTENT

%% Report headers & footers
\fancypagestyle{plain}{% plain
	\fancyhf{} % clear all header and footer fields
	\fancyhead[R]{\helv \@orgname} 
	\fancyfoot[R]{\textbf{\helv Page \thepage}} % except page #
%	\renewcommand{\headrulewidth}{0pt} % remove top line
	\renewcommand{\footrulewidth}{0pt}
	} % end plain

\newcommand{\helv}{%
	\fontfamily{phv}\fontsize{10}{11}\selectfont}
\lhead{} \chead{} \rhead{\helv \@orgname}
\lfoot{\helv \@title}
\cfoot{\helv Version \rb@vernum}
\rfoot{\helv Page \thepage}

%% Sections
\let\stdsection\section
\renewcommand\section{\clearpage\stdsection}
\newcommand{\nobreaksection}{\stdsection}
 \allsectionsfont{\color{slate}\huge}
 \subsectionfont{\color{slate}\Large}

%% Title Page
\renewcommand{\maketitle}{%
	\thispagestyle{empty}
%	\newgeometry{left=1.25in,top=1.25in,right=1.25in,bottom=1.25in} % no change 
	\begin{tabular}{ll}
		\rowcolor{barColor}  & \\ [5ex]
		\rowcolor{barColor} \hspace{50pt} & \color{white} {\fontsize{36}{20} \textbf{2017}} \\ 
		\vspace{30pt} & \\
		& \huge \color{grey}{\bfseries\@author} \\ [1.2ex]
		& \color{grey}{Copyright \textcopyright 2017 Net Reaction, LLC}  \normalsize
	\end{tabular}

	\vspace{3cm}
		
	{\fontsize{32}{20} \bfseries \selectfont \lgrey\uppercase{\upperpolicyname
				
		Policy}\rgrey} 
	\clearpage
%	\restoregeometry
	} % end \maketitle

% title brackets
\newcommand{\lgrey}{{\color{grey}\lbrack}}
\newcommand{\rgrey}{{\color{grey}\rbrack}}

%% Document Information Page
% title at top of page 1
\newcommand{\titleline}{%
	\Huge \color{slate}{\bfseries{\thetitle}} \color{black}\normalsize \normalfont
	} % end \titleline

%% Document table
\newcommand{\doctable}{%
	\renewcommand{\arraystretch}{1.5}
	\begin{tabular*}{1.\textwidth}{ll@{\extracolsep{\fill}}ll}
%		\toprule
		Policy Number: & \rb@policynum & Version: & \rb@vernum \\
		Effective Date: & \rb@effectivedate & & \\
		Last Updated: & \rb@lastverdate & & \\
		Responsible Office: & \rb@responsible & & \\
		Status: & \rb@status & & \\
	\end{tabular*}
	} % end \doctable

%% signature block
\newcommand{\signblock}{%
	\begin{tabular*}{.6\textwidth}{l@{\extracolsep{\fill}}r}
		& \\ [10ex]
		\midrule
		&	Employee \\ [10ex]
		\midrule
		& Date \\
	\end{tabular*}
	} % end \signblock
	