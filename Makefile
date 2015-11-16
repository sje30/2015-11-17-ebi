all: challenges_expectations.html

%.html: %.Rmd
	Rscript -e 'require(rmarkdown); require(revealjs); render("$^", revealjs_presentation(theme="beige",transition="fade"))'
