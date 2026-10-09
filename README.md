# University

**English** · [Italiano](README.it.md)

What I wrote, built and handed in during my Management Engineering degree at the University of Bologna (2023–2026), including my Erasmus semester at Universidad Alfonso X el Sabio, Madrid. My earlier year in Computer Engineering lives in two separate repositories: [C](https://github.com/CometaSensitiva/fondamenti-di-informatica-t-1) and [Java](https://github.com/CometaSensitiva/fondamenti-di-informatica-t-2).

Most of it is study material: LaTeX notes and formula sheets I wrote to understand a subject, not polished publications. The materials are in Italian (Spanish for Madrid). Each document is marked with its real state:

**complete** — finished and used for the exam · **partial** — covers part of the course · **draft** — started and left early

> [!NOTE]
> These are personal notes and may contain mistakes. Some TikZ and PGFPlots figures started from examples found online and were adapted. Course handouts, professors' materials and other students' work are not included.

## Highlights

| | |
| --- | --- |
| **[Bachelor's thesis](3-anno/tesi/)** | Design and validation of a multimodal pipeline for industrial technical manuals, supporting RAG systems. The software is in [industrial-manual-ingestion](https://github.com/CometaSensitiva/industrial-manual-ingestion). |
| **[Optimization lab](3-anno/laboratorio-strumenti-ottimizzazione/)** | Python/Pyomo notebooks (knapsack, bin packing, graph colouring, Prim, Dijkstra) and Arena discrete-event simulations. |
| **[Plant layout project](2-anno/impianti-industriali-layout/)** | Group project: department sizing, From–To flows, SLP and TCR layout methods. |
| **[Fisica Generale T-A](1-anno/fisica-generale-t-a/)** | My most complete notes: 44 pages of theory with TikZ diagrams of every mechanics topic, plus worked exercises. |

## How the notes evolved

I started using LaTeX in my first semester of Management Engineering. [Analisi Matematica T-A](1-anno/analisi-matematica-t-a/teoria/) was the first attempt: 95 pages written chapter by chapter while learning the tool itself. By [Fisica Generale T-A](1-anno/fisica-generale-t-a/) I was drawing TikZ figures for forces, rotations and oscillations, and the document became the most complete of the set. Later notes got shorter as exams came closer: Fisica T-B and Chimica stopped early, and the business economics notes turned into formula sheets and summaries that I kept extending across two courses.

## 1st year · 2023–24

<details open>
<summary>Mathematics, physics, chemistry, business economics</summary>

| Course | Document | Pages | State |
| --- | --- | ---: | --- |
| Analisi Matematica T-A | [Theory](1-anno/analisi-matematica-t-a/teoria/Analisi%20Matematica%20T-A.pdf) — also split by chapter | 95 | complete |
| | [Exercises](1-anno/analisi-matematica-t-a/esercizi/Esercizi.pdf) | 9 | partial |
| | [Oral exam questions](1-anno/analisi-matematica-t-a/orale/Quesiti%20parte%20orale.pdf) | 11 | partial |
| Analisi Matematica T-B | [Notes](1-anno/analisi-matematica-t-b/Analisi%202.pdf) | 6 | draft |
| Fisica Generale T-A | **[Theory](1-anno/fisica-generale-t-a/teoria/Fisica%20Generale%20T-A.pdf)** | 44 | complete |
| | [Exercises](1-anno/fisica-generale-t-a/esercizi/Esercizi%20Fisica%20Generale%20T-A.pdf) | 19 | partial |
| Fisica Generale T-B | [Theory](1-anno/fisica-generale-t-b/Fisica%20Generale%20T-B.pdf) | 29 | partial |
| Fondamenti di Chimica | [Notes](1-anno/fondamenti-di-chimica/Fondamenti%20di%20Chimica.pdf) | 5 | draft |
| Economia e Organizzazione Aziendale | [Formula sheet, first version](1-anno/economia-aziendale/formulario-2023/Formulario.pdf) | 19 | complete |
| | [Financial statements and ratios](1-anno/economia-aziendale/il-bilancio/Il%20bilancio.pdf) | 15 | complete |
| | [Management control systems](1-anno/economia-aziendale/sistemi-di-controllo/Sistemi%20di%20Controllo(lm).pdf) | 19 | complete |

</details>

## 2nd year · 2024–25

<details open>
<summary>Erasmus in Madrid, control systems, business management, industrial plants</summary>

| Course | Document | Pages | State |
| --- | --- | ---: | --- |
| Investigación Operativa (UAX) | [Ferrari distribution network optimization](https://github.com/CometaSensitiva/ferrari-distribution-optimization) — separate repository | | complete |
| Dirección Estratégica (UAX) | [Strategic communication analysis](2-anno/erasmus-uax/strategic-communication-analysis.md) — group project, summary only | | complete |
| Controlli Automatici | [Formula sheet](2-anno/controlli-automatici/Formulario.pdf) | 4 | complete |
| Gestione Aziendale | [Business economics, combined notes](2-anno/gestione-aziendale/Economia%20e%20Organizzazione%20Aziendale/Economia.pdf) | 59 | partial |
| | [The firm](2-anno/gestione-aziendale/L'impresa/L'impresa.pdf) | 9 | partial |
| | [Summary tables](2-anno/gestione-aziendale/Riassunto/tabelle.pdf) | 6 | complete |
| Impianti Industriali | [Plant layout project](2-anno/impianti-industriali-layout/Progetto%20v.01.pdf) — with Gabriele Rossi and Tommaso Veldhuyzen | 20 | complete |

The business economics notes grew across two courses: the first-year formula sheet and summaries were later merged and extended into the combined Gestione Aziendale document.

</details>

## 3rd year · 2025–26

<details open>
<summary>Optimization, information systems, thesis</summary>

| Course | Contents | State |
| --- | --- | --- |
| Laboratorio di Strumenti di Ottimizzazione | [Python/Pyomo notebooks](3-anno/laboratorio-strumenti-ottimizzazione/modulo-1-python/) and [Arena models](3-anno/laboratorio-strumenti-ottimizzazione/modulo-2-arena/) | complete |
| Sistemi Informativi | [Gym database: SQL schema and queries](3-anno/sistemi-informativi/) | complete |
| Prova finale | [Thesis (PDF)](3-anno/tesi/Tesi%20Michele%20Mazza.pdf) · [software](https://github.com/CometaSensitiva/industrial-manual-ingestion) | complete |

</details>

## Building the LaTeX sources

Each document compiles on its own from its folder, with figures in `src/` or `tikz/`:

```sh
latexmk -pdf "Fisica Generale T-A.tex"
```
