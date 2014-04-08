%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para a Universidade XXXX
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%%
%% The Current Maintainer of this work is RODRIGO SMARZARO, SMARZARO@GMAIL.BR
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%


% 2013-06-19 v0.1 - Primeira versão com capa e
% 2014-04-02 v0.2
% Substituído na capa (Campus Rio Paranaíba) -> (Campus de Rio Paranaíba)


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ufv}[2013/06/19 v0.1 Modelo da UFV baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2,
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}

% alterando a capa
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
    {\large UNIVERSIDADE FEDERAL DE VI\c{C}OSA}
    \par
    {\large \emph{CAMPUS} DE RIO PARANA\'{I}BA}
%    \par
%    {\large CURSO DE SISTEMAS DE INFORMAÇÃO}
    \vspace*{3cm}

    {\large \MakeUppercase{\imprimirautor}}

    \vspace*{\fill}
    {\bfseries\large \MakeUppercase{\imprimirtitulo}}
    \vspace*{\fill}

    {\large\MakeUppercase{\imprimirlocal}}
    \par
    {\large\imprimirdata}

    \vspace*{1cm}
  \end{capa}
}


% folha de rosto

\makeatletter

\renewcommand{\folhaderostocontent}{
\begin{center}
{\large\MakeUppercase{\imprimirautor}}
\vspace*{1cm}

\vspace*{\fill}\vspace*{\fill}

{\large\MakeUppercase{\imprimirtitulo}}

\vspace*{\fill}

\abntex@ifnotempty{\imprimirpreambulo}{%
  \hspace{.45\textwidth}
  \begin{minipage}{.5\textwidth}
  \SingleSpacing
  \imprimirpreambulo

  \smallskip
  {\imprimirorientadorRotulo~\imprimirorientador\par}

  \smallskip
  \abntex@ifnotempty{\imprimircoorientador}{%
    {\imprimircoorientadorRotulo~\imprimircoorientador}%
  }%

  \end{minipage}%
  \vspace*{\fill}
}%


\vspace*{\fill}


{\large\MakeUppercase{\imprimirlocal}}

\par

{\large\imprimirdata}
\vspace*{1cm}
\end{center}
}

\makeatother
