all: challenges_expectations.html

%.html: %.Rmd
	Rscript -e 'require(rmarkdown); require(revealjs); render("$^", revealjs_presentation(theme="beige",transition="none"))'


.PHONY: clean

clean:
	rm -f challenges_expectations.html
