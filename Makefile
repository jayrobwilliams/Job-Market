all:	pdf png gif clean

pdf:
	-clear
	xelatex -interaction=nonstopmode card

png:
	convert -background white -density 550 card.pdf -quality 100 -resize 700x400 card.png
	file card.png
	eog card.png

gif:
	convert -background white -density 550 card.pdf -quality 100 -resize 700x400 card.gif
	file card.gif
	eog card.gif

clean:
	rm -vf card.aux card.log
