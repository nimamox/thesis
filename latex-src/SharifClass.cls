%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%									Defining Class Parameters										%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	\NeedsTeXFormat{LaTeX2e}
	\ProvidesPackage{SharifClass}[2014/02/18 Sharif Thesis Package]

	\DeclareOption{xSide}{
		\PassOptionsToClass{\CurrentOption}{report}
		\PassOptionsToPackage{\CurrentOption}{geometry}
	}

	\DeclareOption*{\ClassWarning{SharifClass}{Unknown option '\CurrentOption'}}
	\ExecuteOptions{twoside}
	\ProcessOptions\relax
	\LoadClass[a4paper,12pt,openright]{report}

	\def\FaTitle#1{\gdef\@FaTitle{#1}}
	\def\FaAuthor#1{\gdef\@FaAuthor{#1}}
	\def\StudentNo#1{\gdef\@StudentNo{#1}}
	\def\DfeneceDateFa#1{\gdef\@DfeneceDateFa{#1}}
	\def\DfeneceDateEn#1{\gdef\@DfeneceDateEn{#1}}
	\newcommand{\FaSupervisorFirst}[1]{\def\@FaSupervisorFirst{#1}}
	\newcommand{\FaSupervisorSecond}[1]{\def\@FaSupervisorSecond{#1}}
	\newcommand{\FaAdvisorFirst}[1]{\def\@FaAdvisorFirst{#1}}
	\newcommand{\FaAdvisorSecond}[1]{\def\@FaAdvisorSecond{#1}}
	\newcommand{\MomtahenInFirst}[1]{\def\@MomtahenInFirst{#1}}
	\newcommand{\MomtahenInSecond}[1]{\def\@MomtahenInSecond{#1}}
	\newcommand{\MomtahenOutFirst}[1]{\def\@MomtahenOutFirst{#1}}
	\newcommand{\MomtahenOutSecond}[1]{\def\@MomtahenOutSecond{#1}}
	\def\FaDate#1{\gdef\@FaDate{#1}}
	\def\FaMajor#1{\gdef\@FaMajor{#1}}
	\def\FaLevel#1{\gdef\@FaLevel{#1}}
	\def\FaUni#1{\gdef\@FaUni{#1}}
	\def\FaDepart#1{\gdef\@FaDepart{#1}}

	\def\EnTitle#1{\gdef\@EnTitle{#1}}
	\def\EnAuthor#1{\gdef\@EnAuthor{#1}}
	\newcommand{\EnSupervisorFirst}[1]{\def\@EnSupervisorFirst{#1}}
	\newcommand{\EnSupervisorSecond}[1]{\def\@EnSupervisorSecond{#1}}
	\newcommand{\EnAdvisorFirst}[1]{\def\@EnAdvisorFirst{#1}}
	\newcommand{\EnAdvisorSecond}[1]{\def\@EnAdvisorSecond{#1}}
	\def\EnDate#1{\gdef\@EnDate{#1}}
	\def\EnMajor#1{\gdef\@EnMajor{#1}}
	\def\EnLevel#1{\gdef\@EnLevel{#1}}
	\def\EnUni#1{\gdef\@EnUni{#1}}
	\def\EnDepart#1{\gdef\@EnDepart{#1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%											Environment Definitions									 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Cover Farsi
	\newcommand{\CoverFa}[2][]{
		\thispagestyle{empty}
		\begin{center}
			\centerline{{\includegraphics[width=4.8cm]{#2}}}
			\vspace{2mm}
		\begin{Large}
			\@FaUni \vskip 2mm
			\@FaDepart \vskip 1.0cm
			\@FaLevel \vskip 2mm
			\@FaMajor
		\end{Large}
		\ifx\@FaAdvisorFirst\undefined
			\ifx\@FaAdvisorSecond\undefined
				\ifx\@FaSupervisorSecond\undefined
					\ifthenelse{\equal{#1}{}}{\vskip 1.8cm}{\vskip#1}
					\baselineskip=1cm
					\textbf{\LARGE \@FaTitle}
					\baselineskip=1.1cm\par
					\ifthenelse{\equal{#1}{}}{\vskip 1.8cm}{\vskip#1}
					\baselineskip=.5cm
					\large{نگارش}\vskip 2mm
					\Large{\@FaAuthor}
					\ifthenelse{\equal{#1}{}}{\vskip 2cm}{\vskip#1}
					\large{استاد راهنما}
					\vskip 3mm
					\Large{\@FaSupervisorFirst}
					\ifthenelse{\equal{#1}{}}{\vskip 1.5cm}{\vskip #1 minus 0.5cm}
				\else
					\ifthenelse{\equal{#1}{}}{\vskip 1.8cm}{\vskip#1}
					\baselineskip=1cm
					\textbf{\LARGE \@FaTitle}
					\baselineskip=1cm\par
					\ifthenelse{\equal{#1}{}}{\vskip 1.8cm}{\vskip#1}
					\baselineskip=.5cm
					\large{نگارش}\vskip 1mm
					\Large{\@FaAuthor}
					\ifthenelse{\equal{#1}{}}{\vskip 1.8cm}{\vskip#1}
					\large{اساتید راهنما}
					\vskip 2mm
					\Large{\@FaSupervisorFirst{} \vskip 2mm \@FaSupervisorSecond}
					\ifthenelse{\equal{#1}{}}{\vskip 1.3cm}{\vskip #1 minus 0.5cm}
				\fi
			\fi
		\else
			\ifx\@FaAdvisorSecond\undefined
				\ifx\@FaSupervisorSecond\undefined
					\ifthenelse{\equal{#1}{}}{\vskip 1.25cm}{\vskip#1}
					\baselineskip=1cm
					\textbf{\LARGE \@FaTitle}
					\baselineskip=1.1cm\par
					\ifthenelse{\equal{#1}{}}{\vskip 1.25cm}{\vskip#1}
					\baselineskip=.5cm
					\large{نگارش}\vskip 2mm
					\Large{\@FaAuthor}
					\ifthenelse{\equal{#1}{}}{\vskip 1.25cm}{\vskip#1}
					\large{استاد راهنما}
					\vskip 3mm
					\Large{\@FaSupervisorFirst}
					\ifthenelse{\equal{#1}{}}{\vskip 1.25cm}{\vskip#1}
					\large{استاد مشاور}
					\vskip 3mm
					\Large{\@FaAdvisorFirst}
					\ifthenelse{\equal{#1}{}}{\vskip 0.75cm}{\vskip #1 minus 0.5cm}
				\else
					\ifthenelse{\equal{#1}{}}{\vskip 1.0cm}{\vskip#1}
					\baselineskip=1cm
					\textbf{\LARGE \@FaTitle}
					\baselineskip=1.1cm\par
					\ifthenelse{\equal{#1}{}}{\vskip 1.0cm}{\vskip#1}
					\baselineskip=.5cm
					\large{نگارش}\vskip 2mm
					\Large{\@FaAuthor}
					\ifthenelse{\equal{#1}{}}{\vskip 1.0cm}{\vskip#1}
					\large{اساتید راهنما}
					\vskip 3mm
					\Large{\@FaSupervisorFirst{} \vskip 2mm \@FaSupervisorSecond}
					\ifthenelse{\equal{#1}{}}{\vskip 1.0cm}{\vskip#1}
					\large{استاد مشاور}
					\vskip 3mm
					\Large{\@FaAdvisorFirst}
					\ifthenelse{\equal{#1}{}}{\vskip 0.5cm}{\vskip #1 minus 0.5cm}
				\fi
			\else
				\ifx\@FaSupervisorSecond\undefined
					\ifthenelse{\equal{#1}{}}{\vskip 1.0cm}{\vskip#1}
					\baselineskip=1cm
					\textbf{\LARGE \@FaTitle}
					\baselineskip=1.1cm\par
					\ifthenelse{\equal{#1}{}}{\vskip 1.0cm}{\vskip#1}
					\baselineskip=.5cm
					\large{نگارش}\vskip 2mm
					\Large{\@FaAuthor}
					\ifthenelse{\equal{#1}{}}{\vskip 1.0cm}{\vskip#1}
					\large{استاد راهنما}
					\vskip 3mm
					\Large{\@FaSupervisorFirst}
					\ifthenelse{\equal{#1}{}}{\vskip 1.0cm}{\vskip#1}
					\large{اساتید مشاور}
					\vskip 3mm
					\Large{\@FaAdvisorFirst{} \vskip 2mm \@FaAdvisorSecond}
					\ifthenelse{\equal{#1}{}}{\vskip 0.5cm}{\vskip #1 minus 0.5cm}
				\else
					\ifthenelse{\equal{#1}{}}{\vskip 1.8cm}{\vskip#1}
					\baselineskip=1cm
					\textbf{\LARGE \@FaTitle}
					\baselineskip=1.1cm\par
					\ifthenelse{\equal{#1}{}}{\vskip 1.8cm}{\vskip#1}
					\baselineskip=.5cm
					\large{نگارش}\vskip 2mm
					\Large{\@FaAuthor}
					\ifthenelse{\equal{#1}{}}{\vskip 1.3cm}{\vskip #1 minus 0.5cm}
					\begin{table}[!h]
						\centering
						\begin{tabular}{c p{1.1cm} c}
							\large اساتید راهنما & & \large اساتید مشاور \\[3mm]
							\Large \@FaSupervisorFirst{} & & \Large \@FaAdvisorFirst{} \\[2mm]
							\Large \@FaSupervisorSecond & & \Large \@FaAdvisorSecond
						\end{tabular}
					\end{table}
					\ifthenelse{\equal{#1}{}}{\vskip 0.8cm}{\vskip #1 minus 0.5cm}
				\fi
			\fi
		\fi
		\null\vfill
		\large{\@FaDate}
		\end{center}
		\blankpage
		}
% EsalatFa
	\newcommand{\EsalatFa}[1][1.0cm]{
		\thispagestyle{empty}
		\begin{spacing}{2}
			\begin{center}
				بسمه تعالی
				\vskip 2cm
				\Large گواهی صحت و اصالت پایان‌نامه/ رساله و مجوز بهره‌برداری\\ \vskip 1.5cm
			\end{center}
اینجانب گواهی می‌نمایم كه كلیه نتایج این پایان‌نامه/ رساله حاصل كار اینجانب بوده و عاری از هرگونه ناراستی است و موارد استفاده شده از آثار دیگران با مشخصات كامل منبع ذكر گردیده است. همچنین، پاسخگویی و مسئولیت در قبال نتایج به عهده‌ی اینجانب خواهد بود.\\
كلیه حقوق مادی و معنوی این اثر متعلق به دانشگاه صنعتی شریف می‌باشد و هرگونه بهره‌برداری یا تكثیر بخشهایی يا كل آن با مجوز دانشگاه مجاز است.\vspace{1cm}\\
نام و نام‌خانوادگی: \@FaAuthor \hspace{#1} شماره دانشجویی: \@StudentNo \hspace{#1} تاریخ: \@DfeneceDateFa \\\\
   \text{ }\hspace{13cm}امضا
		\end{spacing}
		\blankpage
		}

% EsalatEn
	\newcommand{\EsalatEn}[1][2.5cm]{
		\thispagestyle{empty}
		\begin{latin}
		\begin{spacing}{2}
			\begin{center}
				In the name of God
				\vskip 2cm
				\Large Clarification and Copyright Declaration\\ \vskip 1.5cm
			\end{center}
I hereby declare that I am the sole author of this thesis. I take full responsibility of this work and declare that the results of this study are original and based on my personal work. All scientific materials used in this thesis are fully referenced.\\
All rights are transferred to Sharif University of Technology and the University is authorized to lend or reproduce this thesis, in total or in part.\vspace{1cm}\\
Name:  \@EnAuthor \hspace{#1} Student No: \@StudentNo \hspace{#1}Date: \@DfeneceDateEn \\\\
   \text{ }\hspace{12.5cm}Signature
		\end{spacing}
		\end{latin}
		\blankpage
		}


% Taeid
	\newcommand{\Taeid}{
		\thispagestyle{empty}
		\begin{center}
			\begin{Large}
				\@FaUni \vskip 2mm
				\@FaDepart \vskip 2cm
				\@FaLevel
			\end{Large}
		\vskip 2cm
		\baselineskip=1cm
		\textbf{\Large \@FaTitle}
		\baselineskip=1.1cm\par
		\ifx\@FaAdvisorFirst\undefined
			\ifx\@FaAdvisorSecond\undefined
				\ifx\@FaSupervisorSecond\undefined
					\ifx\@MomtahenInSecond\undefined
						\ifx\@MomtahenOutSecond\undefined
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[3cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[3cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\else
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\ [2cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[2cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء: \\[2cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutSecond \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\fi
					\else
						\ifx\@MomtahenOutSecond\undefined
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[2cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[2cm]
									\textbf{استاد ممتحن داخلی:} \@\@MomtahenInSecond \dotfill & امضاء: \\[2cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\else
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInSecond \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutSecond  \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\fi
					\fi
				\else
					\ifx\@MomtahenInSecond\undefined
						\ifx\@MomtahenOutSecond\undefined
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[2cm]
									\textbf{استاد راهنما همکار:} \@FaSupervisorSecond  \dotfill & امضاء: \\[2cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[2cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\else
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد راهنما همکار:} \@FaSupervisorSecond  \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutSecond  \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\fi
					\else
						\ifx\@MomtahenOutSecond\undefined
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد راهنما همکار:} \@FaSupervisorSecond  \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInSecond \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\else
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد راهنما همکار:} \@FaSupervisorSecond  \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInSecond \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutSecond  \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\fi
					\fi
				\fi
			\fi
		\else
			\ifx\@FaAdvisorSecond\undefined
				\ifx\@FaSupervisorSecond\undefined
					\ifx\@MomtahenInSecond\undefined
						\ifx\@MomtahenOutSecond\undefined
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[2cm]
									\textbf{استاد مشاور:} \@FaAdvisorFirst  \dotfill & امضاء: \\[2cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[2cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\else
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد مشاور:} \@FaAdvisorFirst  \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutSecond  \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\fi
					\else
						\ifx\@MomtahenOutSecond\undefined
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد مشاور:} \@FaAdvisorFirst  \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInSecond \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\else
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInSecond \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutSecond  \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\fi
					\fi
				\else
					\ifx\@MomtahenInSecond\undefined
						\ifx\@MomtahenOutSecond\undefined
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد راهنما همکار:} \@FaSupervisorSecond  \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد مشاور:} \@FaAdvisorFirst  \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\else
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد راهنما همکار:} \@FaSupervisorSecond  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutSecond  \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\fi
					\else
						\ifx\@MomtahenOutSecond\undefined
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد راهنما همکار:} \@FaSupervisorSecond  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInSecond \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\else
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد راهنما همکار:} \@FaSupervisorSecond  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInSecond \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutSecond  \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\fi
					\fi
				\fi
			\else
				\ifx\@FaSupervisorSecond\undefined
					\ifx\@MomtahenInSecond\undefined
						\ifx\@MomtahenOutSecond\undefined
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد مشاور:} \@FaAdvisorFirst  \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد مشاور:} \@FaAdvisorSecond  \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1.5cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\else
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorSecond  \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutSecond  \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\fi
					\else
						\ifx\@MomtahenOutSecond\undefined
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorSecond  \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInSecond \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\else
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorSecond  \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInSecond \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutSecond  \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\fi
					\fi
				\else
					\ifx\@MomtahenInSecond\undefined
						\ifx\@MomtahenOutSecond\undefined
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد راهنما همکار:} \@FaSupervisorSecond  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorSecond  \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\else
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد راهنما همکار:} \@FaSupervisorSecond  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorSecond  \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutSecond  \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\fi
					\else
						\ifx\@MomtahenOutSecond\undefined
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد راهنما همکار:} \@FaSupervisorSecond  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorSecond  \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInSecond \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\else
							\begin{table}[!bp]
								\centering
								\begin{tabular}{p{13.5cm}p{1cm}}
									\textbf{استاد راهنما:} \@FaSupervisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد راهنما همکار:} \@FaSupervisorSecond  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorFirst  \dotfill & امضاء: \\[1cm]
									\textbf{استاد مشاور:} \@FaAdvisorSecond  \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن داخلی:} \@MomtahenInSecond \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutFirst \dotfill & امضاء: \\[1cm]
									\textbf{استاد ممتحن خارجی:} \@MomtahenOutSecond  \dotfill & امضاء:
								\end{tabular}
							\end{table}
						\fi
					\fi
				\fi
			\fi
		\fi
		\end{center}
		\blankpage
		}

% Cover English
	\newcommand{\CoverEn}[2][]{
		\setLTR\latinfont
		\singlespacing
		\thispagestyle{empty}
		\begin{center}
			\centerline{{\includegraphics[width=4.8cm]{#2}}}
			\vspace{2mm}
			\begin{Large}
				\@EnUni \vskip 2mm
				\@EnDepart \vskip 1.0cm
				\@EnLevel \vskip 2mm
				\@EnMajor
			\end{Large}
		\ifx\@EnAdvisorFirst\undefined
			\ifx\@EnAdvisorSecond\undefined
				\ifx\@EnSupervisorSecond\undefined
					\ifthenelse{\equal{#1}{}}{\vskip 1.8cm}{\vskip#1}
					\baselineskip=1cm
					\textbf{\LARGE \@EnTitle}
					\baselineskip=1cm\par
					\ifthenelse{\equal{#1}{}}{\vskip 1.8cm}{\vskip#1}
					\baselineskip=.5cm
					\large{By}\vskip 2mm
					\Large{\@EnAuthor}
					\ifthenelse{\equal{#1}{}}{\vskip 2cm}{\vskip#1}
					\large{Supervisor}
					\vskip 2mm
					\Large{\@EnSupervisorFirst}
					\ifthenelse{\equal{#1}{}}{\vskip 1.5cm}{\vskip #1 minus 0.5cm}
				\else
					\ifthenelse{\equal{#1}{}}{\vskip 1.8cm}{\vskip#1}
					\baselineskip=.8cm
					\textbf{\LARGE \@EnTitle}
					\baselineskip=1cm\par
					\ifthenelse{\equal{#1}{}}{\vskip 1.8cm}{\vskip#1}
					\baselineskip=.5cm
					\large{By}\vskip 2mm
					\Large{\@EnAuthor}
					\ifthenelse{\equal{#1}{}}{\vskip 1.8cm}{\vskip#1}
					\large{Supervisors}
					\vskip 3mm
					\Large{\@EnSupervisorFirst{} \vskip 2mm \@EnSupervisorSecond}
					\ifthenelse{\equal{#1}{}}{\vskip 1.3cm}{\vskip #1 minus 0.5cm}
				\fi
			\fi
		\else
			\ifx\@EnAdvisorSecond\undefined
				\ifx\@EnSupervisorSecond\undefined
					\ifthenelse{\equal{#1}{}}{\vskip 1.25cm}{\vskip#1}
					\baselineskip=1cm
					\textbf{\LARGE \@EnTitle}
					\baselineskip=1.1cm\par
					\ifthenelse{\equal{#1}{}}{\vskip 1.25cm}{\vskip#1}
					\baselineskip=.5cm
					\large{By}\vskip 2mm
					\Large{\@EnAuthor}
					\ifthenelse{\equal{#1}{}}{\vskip 1.25cm}{\vskip#1}
					\large{Supervisor}
					\vskip 3mm
					\Large{\@EnSupervisorFirst}
					\ifthenelse{\equal{#1}{}}{\vskip 1.25cm}{\vskip#1}
					\large{Advisor}
					\vskip 3mm
					\Large{\@EnAdvisorFirst}
					\ifthenelse{\equal{#1}{}}{\vskip 0.75cm}{\vskip #1 minus 0.5cm}
				\else
					\ifthenelse{\equal{#1}{}}{\vskip 1.0cm}{\vskip#1}
					\baselineskip=1cm
					\textbf{\LARGE \@EnTitle}
					\baselineskip=1.1cm\par
					\ifthenelse{\equal{#1}{}}{\vskip 1.0cm}{\vskip#1}
					\baselineskip=.5cm
					\large{By}\vskip 2mm
					\Large{\@EnAuthor}
					\ifthenelse{\equal{#1}{}}{\vskip 1.0cm}{\vskip#1}
					\large{Supervisors}
					\vskip 3mm
					\Large{\@EnSupervisorFirst{} \vskip 2mm \@EnSupervisorSecond}
					\ifthenelse{\equal{#1}{}}{\vskip 1.0cm}{\vskip#1}
					\large{Advisor}
					\vskip 3mm
					\Large{\@EnAdvisorFirst}
					\ifthenelse{\equal{#1}{}}{\vskip 0.5cm}{\vskip #1 minus 0.5cm}
				\fi
			\else
				\ifx\@EnSupervisorSecond\undefined
					\ifthenelse{\equal{#1}{}}{\vskip 1.0cm}{\vskip#1}
					\baselineskip=1cm
					\textbf{\LARGE \@EnTitle}
					\baselineskip=1.1cm\par
					\ifthenelse{\equal{#1}{}}{\vskip 1.0cm}{\vskip#1}
					\baselineskip=.5cm
					\large{By}\vskip 2mm
					\Large{\@EnAuthor}
					\ifthenelse{\equal{#1}{}}{\vskip 1.0cm}{\vskip#1}
					\large{Supervisor}
					\vskip 3mm
					\Large{\@EnSupervisorFirst}
					\ifthenelse{\equal{#1}{}}{\vskip 1.0cm}{\vskip#1}
					\large{Advisors}
					\vskip 3mm
					\Large{\@EnAdvisorFirst{} \vskip 2mm \@EnAdvisorSecond}
					\ifthenelse{\equal{#1}{}}{\vskip 0.5cm}{\vskip #1 minus 0.5cm}
				\else
					\ifthenelse{\equal{#1}{}}{\vskip 1.8cm}{\vskip#1}
					\baselineskip=1cm
					\textbf{\LARGE \@EnTitle}
					\baselineskip=1.1cm\par
					\ifthenelse{\equal{#1}{}}{\vskip 1.8cm}{\vskip#1}
					\baselineskip=.5cm
					\large{By}\vskip 2mm
					\Large{\@EnAuthor}
					\ifthenelse{\equal{#1}{}}{\vskip 1.3cm}{\vskip #1 minus 0.5cm}
					\begin{table}[!h]
						\centering
						\begin{tabular}{c p{1.6cm} c}
							\large Supervisors & & \large Advisors \\[3mm]
							\Large \@EnSupervisorFirst{} & & \Large \@EnAdvisorFirst{} \\[2mm]
							\Large \@EnSupervisorSecond & & \Large \@EnAdvisorSecond
						\end{tabular}
					\end{table}
					\ifthenelse{\equal{#1}{}}{\vskip 0.8cm}{\vskip #1 minus 0.5cm}
				\fi
			\fi
		\fi
		\null\vfill
		\large{\@EnDate}
		\end{center}
		\blankpage
	}

	 \newcommand{\Lists}[1][0.7cm]{
	 	\doublespacing
		\cftsetrmarg{#1}
		\tableofcontents
		\listoffigures
		\listoftables
		\blankpage
		\pagenumbering{arabic}
	 }


% Abstract farsi
	\newenvironment{abstract_fa}{
		\pagenumbering{harfi}
		\phantomsection
		\addcontentsline{toc}{chapter}{چکیده}
		\thispagestyle{empty}
		\setlength{\parindent}{0pt}
		\centerline{\textbf{\Large{چکیده}}}\vspace{1cm}
		\begin{spacing}{1.5}
			\setlength{\parindent}{0pt}
	 }{\end{spacing}\vspace{0.75cm}}


% Keyword farsi
	\newenvironment{keyword_fa}{
		\setlength{\parindent}{0pt}
		\textbf{کلمات کلیدی:}
		\begin{spacing}{1.5}
			\setlength{\parindent}{0cm}
			\itshape
			\def\sep{-- }
	 }{\end{spacing} \blankpage}


% Thanks to
	\newenvironment{Thanks_to}{
		\phantomsection
		\addcontentsline{toc}{chapter}{سپاس‌گزاری}
		\begin{spacing}{1.5}
		\thispagestyle{empty}
	 }{\end{spacing} \blankpage}


% Abstract english
	\newenvironment{abstract_en}{
		\blankpageAbsEn
		\setLTR\latinfont
		\phantomsection
		\addcontentsline{toc}{chapter}{چکیده انگلیسی}
		\thispagestyle{empty}
		\centerline{\textbf{\Large{Abstract}}} \vspace{1cm}
		\begin{spacing}{1.3}
			\setlength{\parindent}{0pt}
	 }{\end{spacing}\vspace{0.75cm}}


% Keyword english
	\newenvironment{keyword_en}{
		\setLTR\latinfont
		\setlength{\parindent}{0pt}
		\textbf{Keywords:}
		\begin{spacing}{1.3}
			\setlength{\parindent}{0pt}
			\itshape
			\def\sep{-- }
	}{\end{spacing}\blankpage}


% Bibliography
	\newenvironment{BiblioMargins}[2]{
		\begin{list}{}{
			\let\clearpage\relax
		 	\setlength{\leftmargin}{#1}
		 	\setlength{\rightmargin}{#2}
	 		\let\oldbibliography\thebibliography
	 		\renewcommand{\thebibliography}[1]{
	 			\oldbibliography{#1}
	 			\setlength{\itemsep}{8pt}
	 		}
	 	}
	 	\item[]
	}{\end{list} \newpage}
	\newcommand{\Bibliography}[2][unsrt-fa]{
		\phantomsection
		\fancyhead[RO]{\textit{کتاب‌نامه}}
		\addcontentsline{toc}{chapter}{کتاب‌نامه}
		\renewcommand{\bibname}{\qquad کتاب‌نامه}
		\begin{spacing}{1.0}
		\bibliographystyle{#1}
		\appendix
		\begin{BiblioMargins}{-2.0cm}{0.8cm}
			\bibliography{#2}
	 	\end{BiblioMargins}
	 	\end{spacing}
	}


% Farsi PaPer
	\newenvironment{FaPaper}{
		\doublespacing
		\twocolumn
		\pagestyle{empty}
		%\setcounter{page}{1}
		%\chead{\thepage}
		%\fancyhead[LO,RE]{\thepage}
		%\setlength{\columnsep}{10pt}
		\setlength\parindent{0cm}
		%\renewcommand{\\}{
		%\newline \setlength\parindent{0cm}
		%}
	}{\onecolumn}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%												End of Class												%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	%\endinput
