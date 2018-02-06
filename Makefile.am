RELEASE=0.0
VERSION=0.0.0
LANG1=fin
BASENAME=apertium-$(LANG1)

# This include defines goals for install-modes, .deps/.d and .mode files:
@ap_include@

TARGETS_COMMON=$(LANG1).rlx.bin



if WANT_LEXC
TARGETS_COMMON+=$(LANG1).automorf.hfst $(LANG1).autogen.hfst
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

.deps/$(LANG1).gen.twol.hfst: $(BASENAME).$(LANG1).gen.twol .deps/.d
	hfst-twolc --resolve $< -o $@

.deps/$(LANG1).morf.twol.hfst: $(BASENAME).$(LANG1).morf.twol .deps/.d
	hfst-twolc --resolve $< -o $@

.deps/$(LANG1).lexc.hfst: $(BASENAME).$(LANG1).lexc .deps/.d
	hfst-lexc $< -o $@ --alignStrings

$(LANG1).autogen.hfst: .deps/$(LANG1).gen.twol.hfst .deps/$(LANG1).lexc.hfst $(BASENAME).$(LANG1).reweight
	hfst-compose-intersect -1 .deps/$(LANG1).lexc.hfst -2 .deps/$(LANG1).gen.twol.hfst |\
		hfst-reweight -T $(BASENAME).$(LANG1).reweight |\
		hfst-fst2fst -f olw -o $@

$(LANG1).automorf.hfst: .deps/$(LANG1).morf.twol.hfst .deps/$(LANG1).lexc.hfst $(BASENAME).$(LANG1).reweight
	hfst-compose-intersect -1 .deps/$(LANG1).lexc.hfst -2 .deps/$(LANG1).morf.twol.hfst |\
		hfst-invert |\
		hfst-reweight -T $(BASENAME).$(LANG1).reweight |\
		hfst-fst2fst -f olw -o $@

$(LANG1).rlx.bin: $(BASENAME).$(LANG1).rlx $(CGCOMP)
	$(CGCOMP) $< $@

## Distribution

EXTRA_DIST=$(BASENAME).$(LANG1).dix \
	   $(BASENAME).post-$(LANG1).dix \
	   $(BASENAME).$(LANG1).acx \
	   $(BASENAME).$(LANG1).rlx \
	   $(LANG1).prob \
	   spellrelax.xsl \
	   modes.xml

## Installation

apertium_findir=$(prefix)/share/apertium/$(BASENAME)/
apertium_fin_srcdir=$(prefix)/share/apertium/$(BASENAME)/

apertium_fin_DATA=$(TARGETS_COMMON)

pkgconfigdir = $(prefix)/share/pkgconfig
pkgconfig_DATA = $(BASENAME).pc

apertium_modesdir=$(prefix)/share/apertium/modes/
apertium_modes_DATA=modes/$(LANG1)-morph.mode

install-data-local:
	test -d $(DESTDIR)$(apertium_fin_srcdir) || mkdir -p $(DESTDIR)$(apertium_fin_srcdir)
	$(INSTALL_DATA) $(BASENAME).$(LANG1).dix $(DESTDIR)$(apertium_fin_srcdir)
	$(INSTALL_DATA) $(BASENAME).$(LANG1).rlx $(DESTDIR)$(apertium_fin_srcdir)

## Cleanup

CLEANFILES = $(TARGETS_COMMON)
clean-local:
	-rm -rf .deps modes

## Tests

TESTS=coverages.bash lookups.bash lookdowns.bash

if CAN_SAXON
$(BASENAME).$(LANG1).dix.html: $(BASENAME).$(LANG1).dix dix2html.xsl
	$(SAXON) -s:$< dix2html.xsl lang=Finnish  > $@


endif
