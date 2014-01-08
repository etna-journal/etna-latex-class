# ./Makefile

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###

LATEX:=lualatex
LATEX_OPTIONS:=
BIBTEX:=biber

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###

TARGET:=example

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###
# 

default: example

example:
	@$(LATEX) $(LATEX_OPTIONS) $(TARGET)

bib:
	@$(BIBTEX) $(TARGET)

doc:
	@$(LATEX) $(LATEX_OPTIONS) guidelines.tex

.PHONY: clean

clean:
	@rm -f $(TARGET)-blx.bib \
	       $(TARGET).aux \
	       $(TARGET).bbl \
	       $(TARGET).log \
	       $(TARGET).nav \
	       $(TARGET).out \
	       $(TARGET).pdf \
	       $(TARGET).snm \
	       $(TARGET).thm \
	       $(TARGET).bcf \
	       $(TARGET).blg \
	       $(TARGET).run.xml \
	       missfont.log \
	       *~
