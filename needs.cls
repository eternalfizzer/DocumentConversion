% needs class
% initializes fields for Needs Assessment Report
% generates title page, tables

%% QUESTIONS:
% author? Net Reaction, LLC?
% watch out for ampersands in inputs (use \& instead)
% focus areas don't correspond to big table headings
% content needs editing for parallel construction
% are regs generic or specific to clients?

\def\fileversion{0.2} % draft version (listparser fixed)
\def\filedate{2017/05/05}
\typeout{%
	Document Class: needs \filedate \space v\fileversion \space (R. Boileau)}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{needs}[2017/05/05 needs LaTeX class]

\LoadClass[12pt]{article}

\RequirePackage{graphicx} % used for all of the graphics
\RequirePackage[table]{xcolor}
\RequirePackage{booktabs}
\RequirePackage{longtable}
\RequirePackage[letterpaper,left=1.25in,top=1.25in,right=1.25in,bottom=1.25in]{geometry}
\RequirePackage{fancyhdr} % for the fancy headers and footers AFTER geometry package
\RequirePackage{enumitem,amssymb} % custom enumeration labels
\RequirePackage{parskip} % block formatting
\RequirePackage{titling} % \thetitle \theauthor
\RequirePackage{anyfontsize} % \fontsize{<size>}{<skip>}
\RequirePackage{sectsty} % format section headings \allsectionsfont 
\RequirePackage{array,multirow} % for \multirow
\RequirePackage{etoolbox} % for parsing list
\RequirePackage[linkcolor = red, urlcolor = blue, urlbordercolor = red]{hyperref} % for hypertext links in the PDF; should be at end of all packages (see docs)

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% create a bullet list from a delimited string
\DeclareListParser{\MyListParser}{|} % set pipe symbol as delimiter
\newcommand{\buildList}[1]{%
	\begin{checklist}
		\renewcommand*{\do}[1]{\item ##1}%
		\expandafter\MyListParser\expandafter{#1}%
	\end{checklist}
}

\graphicspath{{./graphics/}}
			
%% defaults
%\renewcommand{\normalsize}{\fontsize{11.5}{14}\selectfont}
\setlength{\textwidth}{6in}
\setlength{\textheight}{8.5in}
\setcounter{secnumdepth}{0}%% sample.cls
\pagestyle{fancy}
%% font: sans serif
\renewcommand\sfdefault{phv}    % use Helvetica!
\renewcommand{\familydefault}{\sfdefault}
%

%% CUSTOM COLOURS
\definecolor{red}{RGB}{197, 18, 50} % Net Reaction, LLC for title
\definecolor{grey}{RGB}{137, 160, 81} % greenish grey for brackets
\definecolor{slate}{RGB}{71, 116, 161} % bluish grey for section headings

%% FIELDS
\newcommand\@docname{Needs Assessment}
\newcommand\upperdocname{\uppercase{Needs Assessment}}

\title{Needs Assessment Report}
\author{Net~Reaction, LLC} % CHECK
\renewcommand{\theauthor}{\color{red}\itshape Net~Reaction \normalfont \color{black}}

% release date
\newcommand{\@reldate}{\emph to be determined} % NEW ()CHANGED)
\newcommand{\reldate}[1]{
	\renewcommand{\@reldate}{#1} 
	}

% set organisation name
\newcommand{\@orgname}{default} % 
\newcommand{\orgname}[1]{%
	\gdef\@orgname{#1}
	}

%% Overview
\newcommand{\@chartfile}{./graphics/chart.png} % chart filename with path
\newcommand{\chartfile}[1]{
	\renewcommand{\@chartfile}{#1} 
	}

\newcommand{\@totRiskLevel}{tbd} % Low, Medium, High
\newcommand{\totRiskLevel}[1]{
	\renewcommand{\@totRiskLevel}{#1} 
	}

\newcommand{\@totRiskScore}{tbd} % [%] 0-100
\newcommand{\totRiskScore}[1]{
	\renewcommand{\@totRiskScore}{#1} 
	}

% Information Security Fundamentals table
\newcommand{\@fOne}{tbd} 
\newcommand{\fOne}[1]{
	\renewcommand{\@fOne}{#1}
	}
	
\newcommand{\@fTwo}{tbd} 
\newcommand{\fTwo}[1]{
	\renewcommand{\@fTwo}{#1} 
	}

\newcommand{\@fThree}{tbd} 
\newcommand{\fThree}[1]{
	\renewcommand{\@fThree}{#1} 
	}

\newcommand{\@fFour}{tbd} 
\newcommand{\fFour}[1]{
	\renewcommand{\@fFour}{#1} 
	}

\newcommand{\@fFive}{tbd} 
\newcommand{\fFive}[1]{
	\renewcommand{\@fFive}{#1} 
	}

\newcommand{\@fSix}{tbd} 
\newcommand{\fSix}[1]{
	\renewcommand{\@fSix}{#1} 
	}

\newcommand{\@fSeven}{tbd} 
\newcommand{\fSeven}[1]{
	\renewcommand{\@fSeven}{#1} 
	}

\newcommand{\@fEight}{tbd} 
\newcommand{\fEight}[1]{
	\renewcommand{\@fEight}{#1} 
	}

\newcommand{\@fNine}{tbd} 
\newcommand{\fNine}[1]{
	\renewcommand{\@fNine}{#1} 
	}

\newcommand{\@fTen}{tbd} 
\newcommand{\fTen}[1]{
	\renewcommand{\@fTen}{#1} 
	}

\newcommand{\@fEleven}{tbd} 
\newcommand{\fEleven}[1]{
	\renewcommand{\@fEleven}{#1} 
	}

\newcommand{\@fTwelve}{tbd} 
\newcommand{\fTwelve}[1]{
	\renewcommand{\@fTwelve}{#1} 
	}

\newcommand{\@fThirteen}{tbd} 
\newcommand{\fThirteen}[1]{
	\renewcommand{\@fThirteen}{#1} 
	}

\newcommand{\@fFourteen}{tbd} 
\newcommand{\fFourteen}[1]{
	\renewcommand{\@fFourteen}{#1} 
	}

\newcommand{\@fFifteen}{tbd} 
\newcommand{\fFifteen}[1]{
	\renewcommand{\@fFifteen}{#1} 
	}

%% Focus Area Tables
% Focus Area 01 table
\newcommand{\@areaOneRiskLevel}{tbd} 
\newcommand{\areaOneRiskLevel}[1]{
	\renewcommand{\@areaOneRiskLevel}{#1} 
	}

\newcommand{\@areaOneScore}{tbd} 
\newcommand{\areaOneScore}[1]{
	\renewcommand{\@areaOneScore}{#1} 
	}

\newcommand{\@areaOneRec}{tbd} 
\newcommand{\areaOneRec}[1]{
	\renewcommand{\@areaOneRec}{#1} 
	}

% Focus Area 02 table
\newcommand{\@areaTwoRiskLevel}{tbd} 
\newcommand{\areaTwoRiskLevel}[1]{
	\renewcommand{\@areaTwoRiskLevel}{#1} 
	}
	
	\newcommand{\@areaTwoScore}{tbd} 
	\newcommand{\areaTwoScore}[1]{
		\renewcommand{\@areaTwoScore}{#1} 
	}
		
		\newcommand{\@areaTwoRec}{tbd} 
		\newcommand{\areaTwoRec}[1]{
			\renewcommand{\@areaTwoRec}{#1} 
	}
			
% Focus Area 03 table
\newcommand{\@areaThreeRiskLevel}{tbd} 
\newcommand{\areaThreeRiskLevel}[1]{
	\renewcommand{\@areaThreeRiskLevel}{#1} 
	}
	
	\newcommand{\@areaThreeScore}{tbd} 
	\newcommand{\areaThreeScore}[1]{
		\renewcommand{\@areaThreeScore}{#1} 
	}
		
		\newcommand{\@areaThreeRec}{tbd} 
		\newcommand{\areaThreeRec}[1]{
			\renewcommand{\@areaThreeRec}{#1} 
	}
			
% Focus Area 04 table
\newcommand{\@areaFourRiskLevel}{tbd} 
\newcommand{\areaFourRiskLevel}[1]{
	\renewcommand{\@areaFourRiskLevel}{#1} 
	}
	
	\newcommand{\@areaFourScore}{tbd} 
	\newcommand{\areaFourScore}[1]{
		\renewcommand{\@areaFourScore}{#1} 
	}
		
		\newcommand{\@areaFourRec}{tbd} 
		\newcommand{\areaFourRec}[1]{
			\renewcommand{\@areaFourRec}{#1} 
	}
			
% Focus Area 05 table
\newcommand{\@areaFiveRiskLevel}{tbd} 
\newcommand{\areaFiveRiskLevel}[1]{
	\renewcommand{\@areaFiveRiskLevel}{#1} 
	}
	
	\newcommand{\@areaFiveScore}{tbd} 
	\newcommand{\areaFiveScore}[1]{
		\renewcommand{\@areaFiveScore}{#1} 
	}
		
		\newcommand{\@areaFiveRec}{tbd} 
		\newcommand{\areaFiveRec}[1]{
			\renewcommand{\@areaFiveRec}{#1} 
	}
			
% Focus Area 06 table
\newcommand{\@areaSixRiskLevel}{tbd} 
\newcommand{\areaSixRiskLevel}[1]{
	\renewcommand{\@areaSixRiskLevel}{#1} 
	}
	
	\newcommand{\@areaSixScore}{tbd} 
	\newcommand{\areaSixScore}[1]{
		\renewcommand{\@areaSixScore}{#1} 
	}
		
		\newcommand{\@areaSixRec}{tbd} 
		\newcommand{\areaSixRec}[1]{
			\renewcommand{\@areaSixRec}{#1} 
	}
			
% Focus Area 07 table
\newcommand{\@areaSevenRiskLevel}{tbd} 
\newcommand{\areaSevenRiskLevel}[1]{
	\renewcommand{\@areaSevenRiskLevel}{#1} 
	}
	
	\newcommand{\@areaSevenScore}{tbd} 
	\newcommand{\areaSevenScore}[1]{
		\renewcommand{\@areaSevenScore}{#1} 
	}
		
		\newcommand{\@areaSevenRec}{tbd} 
		\newcommand{\areaSevenRec}[1]{
			\renewcommand{\@areaSevenRec}{#1} 
	}
			
% Focus Area 08 table
\newcommand{\@areaEightRiskLevel}{tbd} 
\newcommand{\areaEightRiskLevel}[1]{
	\renewcommand{\@areaEightRiskLevel}{#1} 
	}
	
	\newcommand{\@areaEightScore}{tbd} 
	\newcommand{\areaEightScore}[1]{
		\renewcommand{\@areaEightScore}{#1} 
	}
		
		\newcommand{\@areaEightRec}{tbd} 
		\newcommand{\areaEightRec}[1]{
			\renewcommand{\@areaEightRec}{#1} 
	}
			
% Focus Area 09 table
\newcommand{\@areaNineRiskLevel}{tbd} 
\newcommand{\areaNineRiskLevel}[1]{
	\renewcommand{\@areaNineRiskLevel}{#1} 
	}
	
	\newcommand{\@areaNineScore}{tbd} 
	\newcommand{\areaNineScore}[1]{
		\renewcommand{\@areaNineScore}{#1} 
	}
		
		\newcommand{\@areaNineRec}{tbd} 
		\newcommand{\areaNineRec}[1]{
			\renewcommand{\@areaNineRec}{#1} 
	}
			
% Focus Area 10 table
\newcommand{\@areaTenRiskLevel}{tbd} 
\newcommand{\areaTenRiskLevel}[1]{
	\renewcommand{\@areaTenRiskLevel}{#1} 
	}
	
	\newcommand{\@areaTenScore}{tbd} 
	\newcommand{\areaTenScore}[1]{
		\renewcommand{\@areaTenScore}{#1} 
	}
		
		\newcommand{\@areaTenRec}{tbd} 
		\newcommand{\areaTenRec}[1]{
			\renewcommand{\@areaTenRec}{#1} 
	}
			
% Focus Area 11 table
\newcommand{\@areaElevenRiskLevel}{tbd} 
\newcommand{\areaElevenRiskLevel}[1]{
	\renewcommand{\@areaElevenRiskLevel}{#1} 
	}
	
	\newcommand{\@areaElevenScore}{tbd} 
	\newcommand{\areaElevenScore}[1]{
		\renewcommand{\@areaElevenScore}{#1} 
	}
		
		\newcommand{\@areaElevenRec}{tbd} 
		\newcommand{\areaElevenRec}[1]{
			\renewcommand{\@areaElevenRec}{#1} 
	}
			
% Focus Area 12 table
\newcommand{\@areaTwelveRiskLevel}{tbd} 
\newcommand{\areaTwelveRiskLevel}[1]{
	\renewcommand{\@areaTwelveRiskLevel}{#1} 
}

	\newcommand{\@areaTwelveScore}{tbd} 
	\newcommand{\areaTwelveScore}[1]{
		\renewcommand{\@areaTwelveScore}{#1} 
	}
		
		\newcommand{\@areaTwelveRec}{tbd} 
		\newcommand{\areaTwelveRec}[1]{
			\renewcommand{\@areaTwelveRec}{#1} 
	}

% Next Steps
\newcommand{\@nextSteps}{tbd} 
\newcommand{\nextSteps}[1]{
	\renewcommand{\@nextSteps}{#1} 
	}


%% COMMON CONTENT

%% Report headers & footers
%\setlength\footheight{15pt}%
\newcommand{\helv}{%
	\fontfamily{phv}\fontsize{10}{11}\selectfont}
\lhead{} \chead{} \rhead{\helv \copyright \@author}
\lfoot{\helv \@title}
\cfoot{\helv \@reldate}
\rfoot{\helv Page \thepage}

%% Sections
\let\stdsection\section
\renewcommand\section{\clearpage\stdsection}
\newcommand{\nobreaksection}{\stdsection}
\allsectionsfont{\color{slate}\huge}
\subsectionfont{\color{slate}\Large}

%% Custom formats
\newcommand{\heading}[1]{\bfseries{#1}\normalfont}
% list with check boxes
\newlist{checklist}{itemize}{2}
\setlist[checklist]{label=$\square$}

%% Title Page
\renewcommand{\maketitle}{%
	\thispagestyle{empty} % included in titlingpage 
	\begin{tabular}{r}
%		\rowcolor{red}  \\ [5ex]
		\includegraphics[width = 0.8\textwidth]{logo}\\ 
		 \huge \color{slate}{for \bfseries\itshape\@orgname} \\ [1.2ex]
	\end{tabular}
	\vspace{3cm}
	
	{\fontsize{32}{20} \selectfont \itshape \uppercase{Your \upperdocname
			
			Report} } 
	
	\vfill
	\footnotesize Copyright \textcopyright 2017 Net Reaction, LLC  \normalsize
	
	\clearpage
	} % end \maketitle

%% title brackets
%\newcommand{\lgrey}{{\color{grey}\lbrack}}
%\newcommand{\rgrey}{{\color{grey}\rbrack}}

%% title at top of page 1
%\newcommand{\titleline}{%
%	\vspace{-.5cm}
%	\Huge \color{slate}{\bfseries{\thetitle}} \color{black}\normalsize \normalfont
%	} % end \titleline

%% Overview Results
\newcommand{\overallResults}{%
	\heading{Overall Risk Level:} \@totRiskLevel
	
	\heading{Overall Risk Score:} \@totRiskScore \%
	} % end \overallResults

%% Information table
\newcommand{\rotate}[2]{%
	\parbox[t]{2mm}{\multirow{#1}{*}{\rotatebox[origin=c]{90}{\centering \emph{#2}}}}
	} % end \rotate
	
\newcommand{\point}[1]{%
	{\footnotesize %\vspace{-10pt} 
%	\begin{itemize}[noitemsep]
		#1
%	\end{itemize} 
	}
	} % end \point

\newcommand{\infoTable}{%
	\bgroup
	\def\arraystretch{1.2}
		\begin{longtable}{lp{0.75\textwidth}c}
			\toprule
			& \emph{Area} &  \emph{Your Rating}\\
			\midrule \endhead
			\bottomrule \endfoot
			\rotate{2}{Assessment} & Risk Assessment & \\
			& \point{\textbullet\, Risk Assessment is the critical tool for understanding the threats to your organization.  You can’t protect what you don’t understand. Risk Assessment is the first step that any organization should take in developing an Information Security Program.}
			 & \@fOne \\
			\midrule
			\rotate{10}{Policies \& Procedures}& Information Security Policy & \\
			& \point{\textbullet\,  Describes what information needs to be protected and why, expresses management’s commitment to protecting the information and describes to the reader how the information is to be protected.} & \@fTwo \\
			\cmidrule{2-3}
			&	Acceptable Use Policy & \\
			& \point{\textbullet\,  Describes what actions the reader may and may not take in working with and handling the organization’s information} & \@fThree \\
			\cmidrule{2-3}
			&	Employee Handbook & \\
			& \point{\textbullet\,  Expresses the organization’s expectations of the reader as conditions of their employment} & \@fFour \\
			\cmidrule{2-3}
			&	Background Screening Policy & \\
			& \point{\textbullet\,  Gives the organization the employee’s permission to conduct appropriate background checks as a condition of their employment} & \@fFive \\
			\cmidrule{2-3}
			&	Confidentiality Policy & \\
			& \point{\textbullet\,  Explicitly states to the reader that all information encountered during their employment is the property of the organization} & \@fSix \\
			\pagebreak
%			\midrule
			\rotate{12}{Technical Controls}&	Firewall Policy & \\
			& \point{\textbullet\,  Firewalls are necessary for anyone storing sensitive information on their corporate networks} & \@fSeven \\
			\cmidrule{2-3}
			&	Wireless Policy & \\
			& \point{\textbullet\,  Wireless networks should be appropriately secured on networks where sensitive information is present} & \@fEight \\
			\cmidrule{2-3}
			&	Password Policy & \\
			& \point{\textbullet\,  The selection of appropriately strong passwords is one of the most fundamental, yet effective information security controls} & \@fNine \\
			\cmidrule{2-3}
			&	Data Classification & \\
			& \point{\textbullet\,  Data should be classified according to sensitivity and protected accordingly} & \@fTen \\
			\cmidrule{2-3}
			&	Remote Access & \\
			& \point{\textbullet\,  When used, remote access points need to be appropriately configured and secured} & \@fEleven \\
			\cmidrule{2-3}
			&	Secure Disposal of Information & \\
			& \point{\textbullet\,  Information and media must be appropriately destroyed before disposal or reuse} & \@fTwelve \\
			\midrule
			\rotate{6}{Other Controls}&	Vendor Integrity Assessment & \\
			& \point{\textbullet\,  The vendors and third parties you work with are critical in the protection of your information.  Your security doesn’t matter if they don’t have appropriate controls in place.} & \@fThirteen \\
			\cmidrule{2-3}
			&	Incident Response Plan & \\
			& \point{\textbullet\,  	Incidents happen to even the most prepared organizations.  An incident response plan is critical in minimizing the damage to your organization} & \@fFourteen \\
			\cmidrule{2-3}
			&	Employee Training & \\
			& \point{\textbullet\,  You can’t do what you don’t know.  Your organization must communicate its expectations to your employees through training.} & \@fFifteen \\				
		\end{longtable}
	\egroup
%		\input{bigtable}
	}% end \infoTable

\newcommand\tableStart{ \vspace{20pt} \hrulefill \vspace{7pt}
	}
\newcommand\tableEnd{ \hrulefill
	}
% Focus Area tables
\newcommand{\fOneTable}{%
%	\begin{tabular}{l} %{>{\bfseries}r>{\normalfont}p{0.7\textwidth}}
%		\toprule
%		Risk Level: & \@areaOneRiskLevel \\
%		Your Score: & \@areaOneScore\% \\
%		Our Recommendations: & \buildList{\@areaOneRec}\\
%	\end{itemize}
%	\end{tabular}
%	\begin{tabular}{l}
%		\toprule
%		\buildList{\@areaOneRec} 
%		\bottomrule
%	\end{tabular}
	\tableStart
    	\begin{description}
    		\item [Risk Level:]  \@areaOneRiskLevel 
    		\item [Your Score:] \@areaOneScore\% 
    		\item [Our Recommendations:] 	
    	\end{description}
		\buildList{\@areaOneRec} 
	\tableEnd
	}% end\fOneTable

\newcommand{\fTwoTable}{
	\tableStart
    	\begin{description}
    		\item [Risk Level:]  \@areaTwoRiskLevel 
    		\item [Your Score:] \@areaTwoScore\% 
    		\item [Our Recommendations:] 			
		\end{description}
	\buildList{\@areaTwoRec} 
	\tableEnd
	}% end\fTwoTable

\newcommand{\fThreeTable}{
	\tableStart
	\begin{description}
		\item [Risk Level:]  \@areaThreeRiskLevel 
		\item [Your Score:] \@areaThreeScore\% 
		\item [Our Recommendations:] 			
	\end{description}
	\buildList{\@areaThreeRec} 
	\tableEnd
}% end\fThreeTable

\newcommand{\fFourTable}{
	\tableStart
	\begin{description}
		\item [Risk Level:]  \@areaFourRiskLevel 
		\item [Your Score:] \@areaFourScore\% 
		\item [Our Recommendations:] 			
	\end{description}
	\buildList{\@areaFourRec} 
	\tableEnd
}% end\fFourTable

\newcommand{\fFiveTable}{
	\tableStart
	\begin{description}
		\item [Risk Level:]  \@areaFiveRiskLevel 
		\item [Your Score:] \@areaFiveScore\% 
		\item [Our Recommendations:] 	
	\end{description}
	\buildList{\@areaFiveRec} 
	\tableEnd
}% end\fFiveTable

\newcommand{\fSixTable}{
	\tableStart
	\begin{description}
		\item [Risk Level:]  \@areaSixRiskLevel 
		\item [Your Score:] \@areaSixScore\% 
		\item [Our Recommendations:] 	
	\end{description}
	\buildList{\@areaSixRec} 
	\tableEnd
}% end\fSixTable

\newcommand{\fSevenTable}{
	\tableStart
	\begin{description}
		\item [Risk Level:]  \@areaSevenRiskLevel 
		\item [Your Score:] \@areaSevenScore\% 
		\item [Our Recommendations:] 	
	\end{description}
	\buildList{\@areaSevenRec} 
	\tableEnd
}% end\fSevenTable

\newcommand{\fEightTable}{
	\tableStart
	\begin{description}
		\item [Risk Level:]  \@areaEightRiskLevel 
		\item [Your Score:] \@areaEightScore\% 
		\item [Our Recommendations:] 	
	\end{description}
	\buildList{\@areaEightRec} 
	\tableEnd
}% end\fEightTable

\newcommand{\fNineTable}{
	\tableStart
	\begin{description}
		\item [Risk Level:]  \@areaNineRiskLevel 
		\item [Your Score:] \@areaNineScore\% 
		\item [Our Recommendations:] 	
	\end{description}
	\buildList{\@areaNineRec} 
	\tableEnd
}% end\fNineTable

\newcommand{\fTenTable}{
	\tableStart
	\begin{description}
		\item [Risk Level:]  \@areaTenRiskLevel 
		\item [Your Score:] \@areaTenScore\% 
		\item [Our Recommendations:] 	
	\end{description}
	\buildList{\@areaTenRec} 
	\tableEnd
}% end\fTenTable

\newcommand{\fElevenTable}{
	\tableStart
	\begin{description}
		\item [Risk Level:]  \@areaElevenRiskLevel 
		\item [Your Score:] \@areaElevenScore\% 
		\item [Our Recommendations:] 	
	\end{description}
	\buildList{\@areaElevenRec} 
	\tableEnd
}% end\fElevenTable

\newcommand{\fTwelveTable}{
	\tableStart
	\begin{description}
		\item [Risk Level:]  \@areaTwelveRiskLevel 
		\item [Your Score:] \@areaTwelveScore\% 
		\item [Our Recommendations:] 	
	\end{description}
	\buildList{\@areaTwelveRec} 
	\tableEnd
}% end\fTwelveTable

%% UNUSED TABLES
%\newcommand{\fThirteenTable}{
%}% end\fThirteenTable
%
%\newcommand{\fFourteenTable}{
%}% end\fFourteenTable
%
%\newcommand{\fFifteenTable}{
%}% end\fFifteenTable

\newcommand{\listSteps}{%
%	\begin{itemize}
%		\renewcommand*{\do}[1]{\item #1}%
%		\expandafter\MyListParser\expandafter{\@nextSteps}%
%	\end{itemize}
    	\begin{description}
    		\item [Risk Level:]  \@areaOneRiskLevel 
    		\item [Your Score:] \@areaOneScore\% 
    		\item [Our Recommendations:] 	\begin{itemize}
    %			\renewcommand*{\do}[1]{\item #1}%
    %			\expandafter\MyListParser\expandafter{\@areaOneRec}%
    			\item test
    			\end{itemize}
    	\end{description}
	}
%	\expandafter\buildList\expandafter{\@nextSteps}


%% Document table
%\newcommand{\fw}{{\extracolsep{\fill}}}
%\newcommand{\doctable}{%
%	\renewcommand{\arraystretch}{1.5}
%	%	\begin{tabular*}{1.\linewidth}{ @\fw llll}
%	\begin{tabular*}{1.\textwidth}{ll@{\extracolsep{\fill}}ll}
%		\toprule
%		Policy Number: & \@policynum & Version: & \@vernum \\
%		Effective Date: & \@effectivedate & & \\
%		Last Revised Date: & \@lastrevdate & & \\
%		Responsible Office: & \@responsible & & \\
%		Status: & \@status & & \\
%	\end{tabular*}
%} % end \doctable
%
