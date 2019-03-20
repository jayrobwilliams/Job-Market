# Job Market Materials

This repo contains the templates and input files I use to create application
materials for academic job application materials.

## Overview

The [school.sty](Template/school.sty) file contains variables that you can use 
to customize an application to a specific school, including school anme and
address, and department name. You can reference a LaTeX variable in any `.tex`
file, and this behavior is demonstrated in [Cover.tex](Template/Cover.tex). This
file also includes images for a fake signature and the UNC College of Arts and
Sciences logos. You should replace them the images of you signature and
institution. The [Quotes.Rnw](Template/Quotes.Rnw) file reads in summary
statistics from [Eval Statistics.csv](Eval Statistics.csv) (this is a fake
file with randomly generated values; replace it with your actual evaluation
statistics) and uses them to generate summary statistics for a statement of
teaching effectiveness.

Finally, the [Makefile](Template/Makefile) uses GNU Make to compile all
statements, generates the summary statistics in
[Quotes.Rnw](Template/Quotes.Rnw) and then combines the statement of teaching
philosophy, evidence of teaching effectiveness, syllabi, and student
evaluations into a single file called `Portfolio.pdf` using
[Ghostscript](https://www.ghostscript.com). This template includes one fake
syllabus, two fake teaching evaluations, and one fake peer teaching evaluation.
Replace these names in the [Makefile](Template/Makefile) as appropriate for your
`.pdf` files.

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
type of position. You can create any additional documents that a position requires
by copying an existing statement template and adding the new statement as a target
in the Makefile.

## Contents

- `cas_logo.png`: UNC Arts and Sciences logo for cover letter header
- `Eval Statistics.csv`: Fake course evaluation statistics
- `Signature.png`: A fake signature image; replace with your own or omit from
[Cover.tex](Template/Cover.tex)
- `Template/Cover.tex`: Cover letter template; demonstrates how LaTeX variables
in [school.sty](Template/school.sty) can be used in any statement
- `Template/Diversity.tex`: Diversity statement template
- `Template/Quotes.Rnw`: Evidence of teaching effectiveness template; uses data
from [Eval Statistics.csv](Eval Statistics.csv) to generate summary statistics of
teaching evaluations, and includes free responses from teaching evaluations
- `Template/References.tex`: A list of references template
- `Template/Research.tex`: A research statement template
- `Template/Teaching.tex`: A teaching statement template
- `Template/Makefile`: A Makefile used to compile all `.pdf` files and combine the
`.pdf` files in the [Evals](Evals) directory into a single teaching portfolio
- `Evals/Fake Syllabus.pdf`: A fake syllabus included in the teaching portfolio
- `Evals/Fake Eval 1.pdf`: A fake teaching evaluation included in the teaching
portfolio
- `Evals/Fake Eval 2.pdf`: A fake teaching evaluation included in the teaching
portfolio
- `Evals/Fake Peer Eval.pdf`: A fake peer teaching evaluation included in the
teaching portfolio

## Questions and Errors

Please feel free to contact me if you use this template and encounter any
errors.