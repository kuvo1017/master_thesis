#
# Unofficial LaTeX Template for SIM Graduate Thesis Abstract
# Makefile
#

# compilers
TEX    = platex
BIBTEX = jbibtex
DVIPDF = dvipdfmx

# options
TEXFLAGS    = -file-line-error -shell-escape -kanji=euc
BIBTEXFLAGS = -kanji=euc
DVIPDFFLAGS =

# fonts
DVIPDFFLAGS += -f ~/.fontsmap/hir.map

# source and target
SOURCE  = main.tex simabstract.cls
JOBNAME = masters_thesis_abstract
TARGET  = $(JOBNAME).pdf

# remote compile
REMOTEHOST = rin
REMOTEDIR  = ~/tmp/latex

# backup
BACKUPHOST = save
BACKUPDIR  = ~/backup/latex

########################################

.SUFFIXES: .pdf .dvi .bbl .tex

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(JOBNAME).dvi
	$(DVIPDF) $(DVIPDFFLAGS) -o $@ $<

$(JOBNAME).dvi: $(SOURCE) $(JOBNAME).bbl
	while grep '^LaTeX Warning: Label(s) may have changed.' $*.log; \
	do \
		$(TEX) $(TEXFLAGS) -jobname=$* $<; \
	done
	touch $@

$(JOBNAME).bbl: $(SOURCE)
	$(TEX) $(TEXFLAGS) -jobname=$* $<
	if grep '^\\bibdata' $*.aux; \
	then \
		$(BIBTEX) $(BIBTEXFLAGS) $*; \
	else \
		touch $@; \
	fi

clean:
	rm -f $(TARGET) $(JOBNAME).dvi $(JOBNAME).aux $(JOBNAME).log $(JOBNAME).bbl $(JOBNAME).blg

########################################
# remote compile
########################################

.PHONY: remote

remote:
	ssh $(REMOTEHOST) "rm -rf $(REMOTEDIR)/$(JOBNAME) \
	&& mkdir -p $(REMOTEDIR)/$(JOBNAME)"
	scp -r . $(REMOTEHOST):$(REMOTEDIR)/$(JOBNAME)
	ssh $(REMOTEHOST) "cd $(REMOTEDIR)/$(JOBNAME) && make all"
	scp "$(REMOTEHOST):$(REMOTEDIR)/$(JOBNAME)/{$(TARGET),$(JOBNAME).dvi}" .
	ssh $(REMOTEHOST) "rm -rf $(REMOTEDIR)/$(JOBNAME)"

########################################
# backup
########################################

.PHONY: backup clean-backup

backup:
	rsync -avC . $(BACKUPHOST):$(BACKUPDIR)/$(JOBNAME)

clean-backup:
	ssh $(BACKUPHOST) "rm -rf $(BACKUPDIR)/$(JOBNAME)"

########################################
# check-syntax
########################################

.PHONY: check-syntax

check-syntax:
	chktex -g -r -l ~/.chktexrc \
	-n1 -n3 -n6 -n8 -n9 -n19 -n22 -n25 -n30 -n38 \
	-q -I -v0 $(SOURCE)
