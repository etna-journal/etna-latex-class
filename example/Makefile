# ./Makefile

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###

LATEX:=lualatex
LATEX_OPTIONS:=-shell-escape
BIBTEX:=bibtex

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###

TARGET:=example

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###
# 

default: example

example:
	@$(LATEX) $(LATEX_OPTIONS) $(TARGET)

bib:
	@$(BIBTEX) $(TARGET)

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
	       $(TARGET).xwm \
	       $(TARGET).run.xml \
	       missfont.log \
	       *~
