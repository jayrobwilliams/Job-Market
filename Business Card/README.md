# Business Card - in LaTeX

> Forked from [@Naereen/Business-Card](https://GitHub.com/Naereen/Business-Card).
> > Forked from [@JillJenn/Business-Card](https://github.com/JillJenn/Business-Card).

This directory contains a LaTeX file to produce a PDF business card.

![](card.png)

Feel free to fork, change, and adapt the [card](card.tex) file to suits your need, and use it! ([AGPLv3 licensed](https://www.gnu.org/licenses/agpl-3.0.en.html))

----



## Requirements
- Logo of your institution; you may need to tweak the size depending on the resolution of the file.
- [fontawesome](https://ctan.org/pkg/fontawesome?lang=en) for contact icons.
- [ImageMagick](https://www.imagemagick.org/) to convert the card PDF to PNG (this is only really necessary to get it to render nicely in this README).



## Build
The simplest way is to just compile the `card.tex` file with pdftex or your editor of choice:
```bash
pdflatex card
```

You can also use the [Makefile](Makefile), which compiles both sides to PDF and cleans up temporary files:
```bash
make
```


## License
[AGPLv3](https://www.gnu.org/licenses/agpl-3.0.en.html)

© 2017 [Jill-Jênn Vie](https://GitHub.com/JillJenn/business-card), adapted by [Lilian Besson](https://GitHub.com/Naereen/Business-Card) and me.

> *Note:* I do not have any rights to the institutional logos used for the business card.
