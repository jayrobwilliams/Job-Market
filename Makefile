pdf:
	-clear
	xelatex -interaction=nonstopmode card

png:
	convert -density 550 card.pdf -quality 100 -resize 700x400 card.png
	file card.png
	eog card.png

clean:
	rm -vf card.aux card.log
