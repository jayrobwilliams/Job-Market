all:	Cover.pdf Research.pdf Teaching.pdf Portfolio.pdf \
		Diversity.pdf References.pdf clean

Cover.pdf: Cover.tex school.sty
	pdflatex -interaction=nonstopmode Cover

Research.pdf: Research.tex school.sty
	pdflatex -interaction=nonstopmode Research

Teaching.pdf: Teaching.tex school.sty
	pdflatex -interaction=nonstopmode Teaching

Portfolio.pdf: Teaching.pdf
	Rscript -e "require ('knitr'); knit ('Quotes.Rnw')"
	pdflatex -interaction=nonstopmode Quotes
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite \
		-sOutputFile=Portfolio.pdf Teaching.pdf \
		Quotes.pdf ../Evals/Fake\ Syllabus.pdf \
		../Evals/Fake\ Eval\ 1.pdf \
		../Evals/Fake\ Eval\ 2.pdf \
		../Evals/Fake\ Peer\ Eval.pdf

Diversity.pdf: Diversity.tex school.sty
	pdflatex -interaction=nonstopmode Diversity

References.pdf: References.tex
	pdflatex -interaction=nonstopmode References

clean: Cover.pdf Research.pdf Teaching.pdf Portfolio.pdf \
		Diversity.pdf References.pdf
	rm -vf *.aux *.log *.out *concordance.tex