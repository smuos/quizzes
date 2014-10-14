## This Makefile is largely based on kjhealy's available at
## https://github.com/kjhealy/pandoc-templates/blob/master/examples/Makefile

## Additionally the following Stack Overflow question was used
## https://stackoverflow.com/questions/7004702/how-can-i-create-a-makefile-for-c-projects-with-src-obj-and-bin-subdirectories

# Directories
SRCDIR = src
BLDDIR = build

# Location of Pandoc support files.
TEMPLATES = ./templates
TEXFLAGS = -output-directory=$(BLDDIR) --halt-on-error

# All yaml files in the SRCDIR directory
SOURCES = $(wildcard $(SRCDIR)/*.yaml)

# All target files in the BLDDIR directory
TARGETS = $(patsubst $(SRCDIR)/%,$(BLDDIR)/%,$(SOURCES))

# Create filetype references using pattern substitutions
PDF=$(patsubst %.yaml,%.pdf,$(TARGETS))
TEX=$(patsubst %.yaml,%.tex,$(TARGETS))

# Define build types
all:	$(PDF) $(TEX)
pdf:	clean $(PDF) clean-tex
tex:	clean-tex $(TEX)


## Define rules for filetypes:

# .tex
$(BLDDIR)/%.tex: $(SRCDIR)/%.yaml
	pandoc --template=$(TEMPLATES)/quiz.xelatex.template -o $@ $<

# .pdf
$(BLDDIR)/%.pdf: $(BLDDIR)/%.tex
	xelatex $(TEXFLAGS) $< 1>/dev/null; \
	xelatex $(TEXFLAGS) $< 1>/dev/null

clean:
	rm -f $(BLDDIR)/*.log $(BLDDIR)/*.aux $(BLDDIR)/*.tex $(BLDDIR)/*.pdf

clean-tex:
	rm -f $(BLDDIR)/*.log $(BLDDIR)/*.aux $(BLDDIR)/*.tex
