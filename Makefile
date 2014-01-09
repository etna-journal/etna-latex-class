# ./Makefile

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###

LATEX:=lualatex
LATEX_OPTIONS:=-shell-escape
BIBTEX:=bibtex

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###

TARGET:=etna.zip

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###
# 

default: release

doc:
	@cd doc/
	@make
	@cd -

release: doc
	@zip -r $(TARGET) \
		./README.md \
		./tex/ \
		./example/example.bib \
		./example/example.tex \
		./example/Makefile \
		./doc/guidelines.pdf

clean:
	@rm -f $(TARGET)
