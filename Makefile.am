## Process this file with automake to produce Makefile.in

LANG1=fin
BASENAME=apertium-$(LANG1)

# This include defines goals for install-modes, .deps/.d and .mode files:

TARGETS_COMMON=$(LANG1).rlx.bin



if WANT_LEXC
TARGETS_COMMON+=$(LANG1).automorf.hfst $(LANG1).autogen.hfst $(LANG1).autogen.att.gz $(LANG1).automorf.att.gz
endif
if WANT_LTPROC
TARGETS_COMMON+=$(LANG1).automorf.bin $(LANG1).autogen.bin
endif

.deps/.d:
	$(MKDIR_P) .deps
	touch $@

$(LANG1).autogen.bin: $(BASENAME).$(LANG1).dix .deps/.d
	apertium-validate-dictionary $<
	lt-comp rl $< $@ $(BASENAME).$(LANG1).acx

$(LANG1).automorf.bin: $(BASENAME).$(LANG1).dix .deps/.d
	apertium-validate-dictionary $<
	lt-comp lr $< $@ $(BASENAME).$(LANG1).acx

$(LANG1).autogen.att.gz: $(LANG1).autogen.hfst
	hfst-fst2txt $< | gzip -9 -c -n > $@

$(LANG1).automorf.att.gz: $(LANG1).automorf.hfst
	hfst-fst2txt $< | gzip -9 -c -n > $@

.deps/$(LANG1).gen.twol.hfst: $(BASENAME).$(LANG1).gen.twol .deps/.d
	hfst-twolc --resolve $< -o $@

.deps/$(LANG1).morf.twol.hfst: $(BASENAME).$(LANG1).morf.twol .deps/.d
	hfst-twolc --resolve $< -o $@

.deps/$(LANG1).lexc.hfst: $(BASENAME).$(LANG1).lexc .deps/.d
	hfst-lexc $< -o $@ --alignStrings

$(LANG1).autogen.hfst: .deps/$(LANG1).gen.twol.hfst .deps/$(LANG1).lexc.hfst $(BASENAME).$(LANG1).reweight
	hfst-compose-intersect -1 .deps/$(LANG1).lexc.hfst -2 .deps/$(LANG1).gen.twol.hfst |\
		hfst-reweight -T $(srcdir)/$(BASENAME).$(LANG1).reweight |\
		hfst-fst2fst -f olw -o $@

$(LANG1).automorf.hfst: .deps/$(LANG1).morf.twol.hfst .deps/$(LANG1).lexc.hfst $(BASENAME).$(LANG1).reweight
	hfst-compose-intersect -1 .deps/$(LANG1).lexc.hfst -2 .deps/$(LANG1).morf.twol.hfst |\
		hfst-invert |\
		hfst-reweight -T $(srcdir)/$(BASENAME).$(LANG1).reweight |\
		hfst-fst2fst -f olw -o $@

$(LANG1).rlx.bin: $(BASENAME).$(LANG1).rlx $(CGCOMP)
	$(CGCOMP) $< $@

## Distribution

EXTRA_DIST=$(BASENAME).$(LANG1).dix \
	   $(BASENAME).$(LANG1).acx \
	   $(BASENAME).$(LANG1).rlx \
	   $(BASENAME).$(LANG1).lexc \
	   $(BASENAME).$(LANG1).reweight \
	   $(BASENAME).$(LANG1).gen.twol $(BASENAME).$(LANG1).morf.twol \
	   coverages.bash lookups.bash lookdowns.bash \
	   modes.xml

## Installation

apertium_findir=$(prefix)/share/apertium/$(BASENAME)/
apertium_fin_srcdir=$(prefix)/share/apertium/$(BASENAME)/

apertium_fin_DATA=$(TARGETS_COMMON)
apertium_fin_src_DATA=$(BASENAME).$(LANG1).rlx $(BASENAME).$(LANG1).dix

pkgconfigdir = $(prefix)/share/pkgconfig
pkgconfig_DATA = $(BASENAME).pc

apertium_modesdir=$(prefix)/share/apertium/modes/
apertium_modes_DATA=modes/$(LANG1)-morph.mode

modes/fin-morph.mode: modes.xml
	if test  x$(srcdir) != x$(builddir) ; then \
		cp -v $< . ;\
	fi
	apertium-gen-modes modes.xml
	mv -v *.mode modes/


## Cleanup

CLEANFILES = $(TARGETS_COMMON)
clean-local:
	-rm -rf .deps modes *.mode misses.freqs
	if test  x$(srcdir) != x$(builddir) ; then \
		rm -f $(builddir)/modes.xml ;\
	fi

## Tests

TESTS=coverages.bash lookups.bash lookdowns.bash

if CAN_SAXON
# upstream d/l
monodix2html.xslt:
	wget https://raw.githubusercontent.com/flammie/apevis-xslt/$@

monodix2html-split.xslt:
	wget https://raw.githubusercontent.com/flammie/apevis-xslt/$@

docs/$(BASENAME).$(LANG1).dix.html: $(BASENAME).$(LANG1).dix monodix2html.xslt
	$(SAXON) -s:$< monodix2html.xslt language=Finnish langcode=fin  > $@

docs/$(BASENAME).$(LANG1).dix-a.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=a  > $@

docs/$(BASENAME).$(LANG1).dix-b.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=b  > $@

docs/$(BASENAME).$(LANG1).dix-c.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=c  > $@

docs/$(BASENAME).$(LANG1).dix-d.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=d  > $@

docs/$(BASENAME).$(LANG1).dix-e.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=e  > $@

docs/$(BASENAME).$(LANG1).dix-f.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=f  > $@

docs/$(BASENAME).$(LANG1).dix-g.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=g  > $@

docs/$(BASENAME).$(LANG1).dix-h.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=h  > $@

docs/$(BASENAME).$(LANG1).dix-i.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=i  > $@

docs/$(BASENAME).$(LANG1).dix-j.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=j  > $@

docs/$(BASENAME).$(LANG1).dix-k.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=k  > $@

docs/$(BASENAME).$(LANG1).dix-l.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=l  > $@

docs/$(BASENAME).$(LANG1).dix-m.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=m  > $@

docs/$(BASENAME).$(LANG1).dix-n.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=n  > $@

docs/$(BASENAME).$(LANG1).dix-o.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=o  > $@

docs/$(BASENAME).$(LANG1).dix-p.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=p  > $@

docs/$(BASENAME).$(LANG1).dix-q.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=q  > $@

docs/$(BASENAME).$(LANG1).dix-r.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=r  > $@

docs/$(BASENAME).$(LANG1).dix-s.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=s  > $@

docs/$(BASENAME).$(LANG1).dix-t.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=t  > $@

docs/$(BASENAME).$(LANG1).dix-u.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=u  > $@

docs/$(BASENAME).$(LANG1).dix-v.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=v  > $@

docs/$(BASENAME).$(LANG1).dix-w.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=w  > $@

docs/$(BASENAME).$(LANG1).dix-x.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=x  > $@

docs/$(BASENAME).$(LANG1).dix-y.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=y  > $@

docs/$(BASENAME).$(LANG1).dix-z.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=z  > $@

docs/$(BASENAME).$(LANG1).dix-å.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=å  > $@

docs/$(BASENAME).$(LANG1).dix-ä.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=ä  > $@

docs/$(BASENAME).$(LANG1).dix-ö.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish langcode=fin letter=ö  > $@

endif

docs/statistics.md: apertium-fin.fin.lexc
	echo "# Apertium-fin statistics" > $@
	echo >> $@
	echo "## Alphabets" >> $@
	echo >> $@
	$(AWK) '/Multichar_Symbols/,/LEXICON/ {print;}' $< |\
		egrep -v '^!.*' |\
		egrep -v '^$$' |\
		fgrep -v LEXICON |\
		fgrep -v Multichar_Symbols |\
		wc -l >> $@
	echo " symbols for tags." >> $@
	echo >> $@
	echo "## Lexemes" >> $@
	echo "Approximately " >> $@
	awk '/^LEXICON ADJ/,/^LEXICON ADJ_/ {print;}' $< |\
		egrep -v '^!.*' |\
		egrep -v '^$$' |\
		fgrep -v LEXICON |\
		wc -l >> $@
	echo " lexemes in there." >> $@
