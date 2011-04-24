\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hurocup}
              [2006/12/16 v1.0
 Jacky's HuroCup Laws class]

\LoadClass{article}
\usepackage{graphicx}

\newcounter{law}[section]
\newcounter{comment}

\newcommand{\law}[2][Law]{ %
  \refstepcounter{law} %
  \renewcommand\thesubsection{#1-\arabic{law}} %
  \subsection{\hfill #2} %
}  

\newenvironment{lawlist}[1][Law]{ %
  \begin{enumerate} %
    \renewcommand{\theenumi}{#1-\arabic{law}.\arabic{enumi}}} %
  {\end{enumerate}}

\newenvironment{decisions}{\underline{\makebox[\textwidth][l]{\textbf{Decisions}}}\begin{enumerate}\renewcommand{\theenumi}{Dec-\arabic{law}.\arabic{enumi}}}{\end{enumerate}}

\newcommand{\comment}[1]{\refstepcounter{comment}
  \marginpar{C-\arabic{comment}} \textit{Comment-\arabic{comment}:#1}}

