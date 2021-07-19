
SUBDIRS=docs

LANG1=fin
BASENAME=apertium-$(LANG1)

# This include defines goals for install-modes, .deps/.d and .mode files:

TARGETS_COMMON=$(LANG1).rlx.bin

@ap_include@

if WANT_LEXC
TARGETS_COMMON+=$(LANG1).automorf.hfst $(LANG1).autogen.hfst $(LANG1).autogen.att.gz $(LANG1).automorf.att.gz
endif
if WANT_LTPROC
TARGETS_COMMON+=$(LANG1).automorf.bin $(LANG1).autogen.bin
endif

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
	hfst-lexc $< -o $@

.deps/$(LANG1).tag-relax.hfst: $(BASENAME).$(LANG1).tag-relax.regex .deps/.d
	hfst-regexp2fst -S -i $< -o $@

$(LANG1).autogen.hfst: .deps/$(LANG1).gen.twol.hfst .deps/$(LANG1).lexc.hfst \
		.deps/$(LANG1).tag-relax.hfst $(BASENAME).$(LANG1).reweight 
	hfst-compose-intersect -1 .deps/$(LANG1).lexc.hfst -2 .deps/$(LANG1).gen.twol.hfst |\
		hfst-compose -1 .deps/$(LANG1).tag-relax.hfst - |\
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
apertium_fin_src_DATA=$(BASENAME).$(LANG1).rlx $(BASENAME).$(LANG1).dix $(LANG1).autogen.att.gz

pkgconfigdir = $(prefix)/share/pkgconfig
pkgconfig_DATA = $(BASENAME).pc

apertium_modesdir=$(prefix)/share/apertium/modes/

noinst_DATA=modes/$(LANG1)-morph.mode

install-data-local: install-modes

## Cleanup

CLEANFILES = $(TARGETS_COMMON)
clean-local:
	-rm -rf .deps modes *.mode misses.freqs
	if test  x$(srcdir) != x$(builddir) ; then \
		rm -f $(builddir)/modes.xml ;\
	fi

## Tests

TESTS=coverages.bash lookups.bash lookdowns.bash


test: all
	apertium-regtest test
