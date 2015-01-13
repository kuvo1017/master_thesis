#
# Makefile for Master's Thesis
#
# Author: Yasunori Yusa
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
SOURCE  = main.tex chapter1.tex chapter2.tex chapter3.tex chapter4.tex chapter5.tex chapter6.tex acknowledgment.tex references.tex
JOBNAME = masters_thesis
TARGET  = $(JOBNAME).pdf

# remote compile
REMOTEHOST = rin
REMOTEDIR  = ~/tmp/latex

# backup
BACKUPHOST = save
BACKUPDIR  = ~/backup/latex

########################################
# make all
########################################

.SUFFIXES: .pdf .dvi .bbl .tex

.PHONY: all

all: $(TARGET)

########################################
# make PDF
########################################

$(TARGET): $(JOBNAME).dvi
	$(DVIPDF) $(DVIPDFFLAGS) -o $@ $<

########################################
# make DVI
########################################

$(JOBNAME).dvi: $(SOURCE) $(JOBNAME).bbl
	while grep '^LaTeX Warning: Label(s) may have changed.' $*.log; \
	do \
		$(TEX) $(TEXFLAGS) -jobname=$* $<; \
		sed -e 's/\\205/--/g' $*.out > $*.out.tmp && mv -f $*.out.tmp $*.out; \
	done
	touch $@

$(JOBNAME).bbl: $(SOURCE)
	$(TEX) $(TEXFLAGS) -jobname=$* $<
	sed -e 's/\\205/--/g' $*.out > $*.out.tmp && mv -f $*.out.tmp $*.out
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
	rm -f $(TARGET) $(JOBNAME).dvi
	rm -f $(JOBNAME).aux $(JOBNAME).out $(JOBNAME).log
	rm -f $(JOBNAME).toc $(JOBNAME).lof $(JOBNAME).lot
	rm -f $(JOBNAME).bbl $(JOBNAME).blg
	rm -f $(SOURCE:%.tex=%.aux)
	rm -f $(JOBNAME).maf $(JOBNAME).mtc*
	rm -f *.pbm *.stackdump

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
