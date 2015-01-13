#
# Makefile for LaTeX
#
# Author: Yasunori Yusa
#

# compilers
TEX    = platex
BIBTEX = jbibtex
DVIPS  = dvips
DVIPDF = dvipdfmx

# options
TEXFLAGS    = -file-line-error -shell-escape -kanji=euc
BIBTEXFLAGS = -kanji=euc
DVIPSFLAGS  =
DVIPDFFLAGS =

# source and target
SOURCE  = main.tex
JOBNAME = master_midterm_abstract
# TARGET  = $(JOBNAME).pdf
# TARGET  = $(JOBNAME)-ipa.pdf
# TARGET  = $(JOBNAME)-ipavl.pdf
# TARGET  = $(JOBNAME)-koz.pdf
TARGET  = $(JOBNAME)-hir.pdf
# TARGET  = $(JOBNAME).ps

# fonts map
FONTSMAPDIR = ~/.fontsmap

# remote compile
REMOTEHOST = rin
REMOTEDIR  = ~/tmp/latex

# backup
BACKUPHOST = save
BACKUPDIR  = ~/backup/latex

########################################
# make all
########################################

.SUFFIXES: .pdf .ps .dvi .bbl .tex

.PHONY: all

all: $(TARGET)

########################################
# make PDF
########################################

$(JOBNAME).pdf: $(JOBNAME).dvi
	$(DVIPDF) $(DVIPDFFLAGS) -o $@ $<

$(JOBNAME)-%.pdf: $(JOBNAME).dvi
	$(DVIPDF) $(DVIPDFFLAGS) \
	-f $(FONTSMAPDIR)/$(patsubst -%, %, $*).map -o $@ $<

########################################
# make PostScript
########################################

$(JOBNAME).ps: $(JOBNAME).dvi
	$(DVIPS) $(DVIPSFLAGS) $<

########################################
# make DVI
########################################

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

########################################
# make clean
########################################

.PHONY: clean

clean:
	rm -f $(JOBNAME).dvi $(JOBNAME).ps  $(JOBNAME).pdf $(JOBNAME)-*.pdf
	rm -f $(JOBNAME).aux $(JOBNAME).log $(JOBNAME).out $(JOBNAME).toc
	rm -f $(JOBNAME).bbl $(JOBNAME).blg
	rm -f $(JOBNAME).lo?

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
	rsync -av . $(BACKUPHOST):$(BACKUPDIR)/$(JOBNAME)

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
