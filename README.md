# Job Market Materials

This repo contains the templates and input files I use to create application
materials for academic job application materials.

## Contents

The [school.sty](Template/schoo.sty) file contains variables that you can use 
to customize an application to a specific school, including school anme and
address, and department name. You can reference a LaTeX variable in any `.tex`
file, and this behavior is demonstrated in [Cover.tex](Template/Cover.tex). The
[Quotes.Rnw](Template/Quotes.Rnw) file reads in summary statistics from the
Evals.xlsx file and uses them to generate summary statistics for a statement of
teaching effectiveness.

Finally, the [Makefile](Template/Makefile) uses GNU Make to compile all
statements, generate the summary statistics in
[Quotes.Rnw](Template/Quotes.Rnw) and then combine the statement of teaching
philosophy, evidence of teaching effectiveness, syllabi, and student
evaluations into a single file called `Portfolio.pdf` using
[Ghostscript](https://www.ghostscript.com).

## Workflow

My workflow is as follows when creating a job application:

1. Copy the `Template` folder and rename it with the school/position name
2. Fill in the LaTeX variables in [school.sty](Template/school.sty] with the
appropriate names
3. Customize each statement as warranted
4. Run `make` in the application directory

## Notes

I make several different template variations for job listings in different
subfields, tenure track jobs vs. postdocs, etc. Each one gets its own template
directory, and I modify the files as appropriate to the requirements of each
type of position.

## Questions and Errors

Please feel free to contact me if you use this template and encounter any
error.