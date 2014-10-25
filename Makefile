
SOURCE=sidechains

all: $(SOURCE).tex
	# Inputting /dev/null stops pdflatex from hanging on bad input :)
	# Initial compile
	pdflatex $(SOURCE).tex < /dev/null > /dev/null
	# Build bibliography
	bibtex $(SOURCE).aux < /dev/null > /dev/null
	# Compile with bibliography links added
	pdflatex $(SOURCE).tex < /dev/null > /dev/null
	# Compile with bibliography links linked
	pdflatex $(SOURCE).tex < /dev/null > /dev/null

