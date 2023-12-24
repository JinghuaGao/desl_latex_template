




%中文latax模版
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dselReport}
              [2023/12/24  Merry Christmas v1.0 The LaTeX template for Report in dsel]
\typeout{Document Class `deslReport' v0.1 by JinghuaGao}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax
% 引用ctexbook及基本设置
\LoadClass[onecolumn,twoside,a4paper,UTF8]{ctexart}


%%%%%% 导入包 %%%%%%
\usepackage{hyperref}
\usepackage{fancyhdr}
\usepackage{amsmath,amsfonts,amssymb,graphicx}    % EPS 图片支持
\usepackage{subfigure}   % 使用子图形
\usepackage{indentfirst} % 中文段落首行缩进
\usepackage{bm}          % 公式中的粗体字符(用命令\boldsymbol）
% \usepackage{multicol}    % 正文双栏
\usepackage{indentfirst} % 中文首段缩进
\usepackage{abstract}    % 2栏文档，一栏摘要及关键字宏包
\usepackage{amsthm}      % 使用定理
\usepackage{booktabs}    % 使用表格
\usepackage{siunitx}
\usepackage{tikz}
\usepackage{titlesec}
\usepackage{times}
\usepackage{wasysym}
\usepackage{pifont}
\usepackage[sort]{cite}
\usepackage{ccaption}
\usepackage{float}
\usepackage{calc}
\usetikzlibrary{calc}
\usepackage{environ}
\usepackage{xeCJK}
\usepackage{listings}
\usepackage{tabu}
\usepackage{longtable}
\usepackage{makecell}






% \usepackage[scheme=plain]{ctex}
\setmainfont{Times New Roman}
\setCJKmainfont{FZZDXJW.ttf}
\setCJKfamilyfont{hei}{SimHei}
\setCJKfamilyfont{kai}{KaiTi}
\setCJKfamilyfont{fang}{FangSong}
\newcommand{\hei}{\CJKfamily{hei}}
\newcommand{\kai}{\CJKfamily{kai}}
\newcommand{\fang}{\CJKfamily{fang}}


%%%%%% 设置字号 %%%%%%
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont}
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}

%%%% 设置 section 属性 %%%%
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {1.5ex }%
                                   {1.5ex}%
                                   {\normalfont\bfseries\hei\sihao}}

%%%% 设置 subsection 属性 %%%%
\renewcommand\subsection{\@startsection {subsection}{1}{\z@}%
                                   {-1pt }%
                                   {1pt}%
                                   {\normalfont\bfseries\hei\wuhao}}

%%%% 设置 subsubsection 属性 %%%%
\renewcommand\subsubsection{\@startsection {subsubsection}{1}{\z@}%
                                   {-1pt }%
                                   {1pt}%
                                   {\normalfont\bfseries\hei\wuhao}}




%%%% 段落首行缩进两个字 %%%%
\makeatletter
\let\@afterindentfalse\@afterindenttrue
\@afterindenttrue
\makeatother
\setlength{\parindent}{2em}  %中文缩进两个汉字位


%%%% 下面的命令重定义页面边距，使其符合中文刊物习惯 %%%%
 \usepackage{geometry}
 \newgeometry{
    top=25.4mm, bottom=22.5mm, left=20mm, right=20mm,
    headsep=5mm, headheight=10mm, footskip=10mm,
}
\savegeometry{mastergeometry}
\loadgeometry{mastergeometry}

%%%% 下面的命令设置行间距与段落间距 %%%%
\linespread{1.4}
% \setlength{\parskip}{1ex}
\setlength{\parskip}{0.5\baselineskip}


%%%% 定理类环境的定义 %%%%
\newtheorem{example}{例}             % 整体编号
\newtheorem{algorithm}{算法}
\newtheorem{theorem}{定理}[section]  % 按 section 编号
\newtheorem{definition}{定义}
\newtheorem{axiom}{公理}
\newtheorem{property}{性质}
\newtheorem{proposition}{命题}
\newtheorem{lemma}{引理}
\newtheorem{corollary}{推论}
\newtheorem{remark}{注解}
\newtheorem{condition}{条件}
\newtheorem{conclusion}{结论}
\newtheorem{assumption}{假设}

\newcommand\subtitle[1]{{\sanhao #1}}

%%%% 重定义 %%%%
\renewcommand{\contentsname}{目录}  % 将Contents改为目录
\renewcommand{\abstractname}{摘要}  % 将Abstract改为摘要
\renewcommand{\refname}{参考文献}   % 将References改为参考文献
\renewcommand{\indexname}{索引}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand{\appendixname}{附录}
\renewcommand{\algorithm}{算法}





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 首页页眉页脚定义
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\fancypagestyle{plain}{ \fancyhf{}\vspace{10pt}
\lhead{}
\chead{\vspace{0.6cm}\centering{{\CJKfamily{hei}\xiaowuhao 深空探测实验室文档}}}
\rhead{}
\lfoot{}
\cfoot{}
\rfoot{}
\renewcommand{\headrule}{%
\hrule height0.4pt width \headwidth \vskip1.0pt%
\hrule height0.4pt width \headwidth \vskip-2pt}}
%\renewcommand{\footrulewidth}{0.4pt}
%\setlength{\hoffset}{0.1pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy} 
\fancyhf{}
% \fancyhead[RE]{{\footnotesize 第~xx~卷~~~}} 
\fancyhead[C]{{\footnotesize 深空探测实验室文档}}
%\fancyhead[LE,RO]{~~~\footnotesize\thepage ~~~}
% \fancyhead[LO]{{\footnotesize ~~~第~x~期}}
\lfoot{}
\cfoot{\thepage}
\rfoot{}




%%%%%%%设置摘要格式
\renewcommand{\abstractnamefont}{\sanhao\hei}
\renewcommand{\abstracttextfont}{\wuhao\kai}

\def\avicitCLCNo{}
\newcommand{\CLCNo}[1]{%
    \def\avicitCLCNo{#1}
}

\def\avicitCKeyword{}
\newcommand{\CKeyword}[1]{%
    \def\avicitCKeyword{#1}
}

\def\avicitDcode{}
\newcommand{\Dcode}[1]{%
    \def\avicitDcode{#1}
}

\def\avicitPaperNo{}
\newcommand{\PaperNo}[1]{%
    \def\avicitPaperNo{#1}
}



%设施C++代码插入高亮方法
\lstset{
 columns=fixed,       
 numbers=left,                                        % 在左侧显示行号
 numberstyle=\tiny\color{gray},                       % 设定行号格式
 frame=none,                                          % 不显示背景边框
 backgroundcolor=\color[RGB]{245,245,244},            % 设定背景颜色
 keywordstyle=\color[RGB]{40,40,255},                 % 设定关键字颜色
 numberstyle=\footnotesize\color{darkgray},           
 commentstyle=\it\color[RGB]{0,96,96},                % 设置代码注释的格式
 stringstyle=\rmfamily\slshape\color[RGB]{128,0,0},   % 设置字符串格式
 showstringspaces=false,                              % 不显示字符串中的空格
 language=c++,                                        % 设置语言
}





