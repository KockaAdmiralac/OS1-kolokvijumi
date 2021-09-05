---
title: OS1 kolokvijumi
author: pripremili Luka Simić i Aleksa Marković
subtitle: kategorisani zadaci sa kolokvijuma 2006-2021 sa stranice predmeta
date: Jul 2021
geometry: margin=2cm
output: pdf_document
classoption: twoside
header-includes: \usepackage[croatian]{babel}\usepackage{subfig}\usepackage{float}\usepackage{fancyhdr}\usepackage{imakeidx}\usepackage{svg}\makeindex[intoc]\graphicspath{{./}}
urlcolor: blue
toc: true
toc-depth: 2
pdf-engine: pdflatex
---
\raggedbottom
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{\rightmark}
\fancyhead[LO,RE]{\leftmark}
\fancyfoot[C]{\thepage}
\renewcommand\indexname{Indeks}

\newcommand{\specialcell}[2][c]{%
  \begin{tabular}[#1]{@{}c@{}}#2\end{tabular}}

\newpage
# Predgovor
Svrha ovog dokumenta jeste da objedini sve do sada dostupne kolokvijume iz Operativnih sistema 1 iz nekoliko razloga:

- Na kolokvijumima iz OS1 je dozvoljena literatura, i studenti često pristupaju tome tako što odštampaju kolokvijume i njihova rešenja pa se na kolokvijumu snalaze kroz taj odštampani materijal ako vide neki sličan zadatak. Ovim objedinjenim dokumentom postiže se organizacija takvih materijala radi lakšeg snalaženja na kolokvijumu i ušteda u papirima potrebnim za štampanje svih tih rokova.
- Zadaci su kategorisani po oblastima i sličnosti kako bi se lakše vežbali određeni tipovi zadataka na kolokvijumu.

Greške u formatiranju i kategorizaciji su sigurno prisutne. Ukoliko ih uočite, možete se javiti jednom od autora ili poslati *pull request* na repozitorijum projekta: \url{https://github.com/KockaAdmiralac/OS1-kolokvijumi}. Ispravljeni dokumenti će biti dostupni u [Releases](https://github.com/KockaAdmiralac/OS1-kolokvijumi/releases/latest). Svaka pomoć je dobrodošla.

Srećno na kolokvijumu.

\begin{flushright}
Autori
\end{flushright}

\newpage