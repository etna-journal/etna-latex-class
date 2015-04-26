# ./Makefile

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###

LATEX:=lualatex
LATEX_OPTIONS:=-shell-escape
BIBTEX:=biber

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###

TARGET:=guidelines

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###
# 

default: doc

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
	@rm -rf _minted-guidelines/
