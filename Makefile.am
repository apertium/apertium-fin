RELEASE=0.0
VERSION=0.0.0
LANG1=fin
BASENAME=apertium-$(LANG1)

# This include defines goals for install-modes, .deps/.d and .mode files:
@ap_include@

TARGETS_COMMON=$(LANG1).automorf.att.gz $(LANG1).autogen.att.gz \
        $(LANG1).rlx.bin



if !WANT_TRUE_APERTIUM
TARGETS_COMMON+=$(LANG1).automorf.hfst $(LANG1).autogen.hfst
else
TARGETS_COMMON+=$(LANG1).automorf.bin $(LANG1).autogen.bin
endif



if WANT_TRUE_APERTIUM
$(LANG1).autogen.bin: $(BASENAME).$(LANG1).dix .deps/.d
	apertium-validate-dictionary $<
	lt-comp rl $< $@ $(BASENAME).$(LANG1).acx

$(LANG1).automorf.bin: $(BASENAME).$(LANG1).dix .deps/.d
	apertium-validate-dictionary $<
	lt-comp lr $< $@ $(BASENAME).$(LANG1).acx

$(LANG1).autogen.att.gz: $(LANG1).autogen.bin
	lt-print $< | gzip -9 -c > $@

$(LANG1).automorf.att.gz: $(LANG1).automorf.bin
	lt-print $< | gzip -9 -c > $@


else

.deps/$(LANG1).twol.hfst: $(BASENAME).$(LANG1).twol .deps/.d
	hfst-twolc $< -o $@

.deps/$(LANG1).lexc.hfst: $(BASENAME).$(LANG1).lexc .deps/.d
	hfst-lexc $< -o $@

$(LANG1).autogen.hfst: .deps/$(LANG1).twol.hfst .deps/$(LANG1).lexc.hfst $(BASENAME).$(LANG1).reweight
	hfst-compose-intersect -1 .deps/$(LANG1).lexc.hfst -2 .deps/$(LANG1).twol.hfst |\
		hfst-reweight -T $(BASENAME).$(LANG1).reweight |\
		hfst-fst2fst -f olw -o $@

$(LANG1).autogen.att.gz: $(LANG1).autogen.hfst
	hfst-fst2txt $< -o $(LANG1).autogen.att
	gzip -f -9 $(LANG1).autogen.att

$(LANG1).autogen.bin: $(LANG1).autogen.att.gz
	zcat $< > $(LANG1).autogen.att
	lt-comp rl $(LANG1).autogen.att $@
	rm $(LANG1).autogen.att

$(LANG1).automorf.hfst: $(LANG1).autogen.hfst .deps/.d
	hfst-compose-intersect -1 .deps/$(LANG1).lexc.hfst -2 .deps/$(LANG1).twol.hfst |\
		hfst-invert |\
		hfst-reweight -T $(BASENAME).$(LANG1).reweight |\
		hfst-fst2fst -f olw -o $@

$(LANG1).automorf.att.gz: $(LANG1).automorf.hfst
	hfst-fst2txt $< -o $(LANG1).automorf.att
	gzip -f -9 $(LANG1).automorf.att

$(LANG1).automorf.bin: $(LANG1).automorf.att.gz
	zcat $< > $(LANG1).automorf.att
	lt-comp rl $(LANG1).automorf.att $@
	rm $(LANG1).automorf.att
endif

$(LANG1).rlx.bin: $(BASENAME).$(LANG1).rlx $(CGCOMP)
	$(CGCOMP) $< $@

###############################################################################
## Distribution
###############################################################################

EXTRA_DIST=$(BASENAME).$(LANG1).dix \
	   $(BASENAME).post-$(LANG1).dix \
	   $(BASENAME).$(LANG1).acx \
	   $(BASENAME).$(LANG1).rlx \
	   $(LANG1).prob \
	   spellrelax.xsl \
	   modes.xml

###############################################################################
## Installation
###############################################################################

apertium_findir=$(prefix)/share/apertium/$(BASENAME)/
apertium_fin_srcdir=$(prefix)/share/apertium/$(BASENAME)/

apertium_fin_DATA=$(TARGETS_COMMON)

pkgconfigdir = $(prefix)/share/pkgconfig
pkgconfig_DATA = $(BASENAME).pc

noinst_DATA=modes/$(LANG1)-morph.mode

install-data-local:
	test -d $(DESTDIR)$(apertium_fin_srcdir) || mkdir -p $(DESTDIR)$(apertium_fin_srcdir)
	$(INSTALL_DATA) $(BASENAME).$(LANG1).dix $(DESTDIR)$(apertium_fin_srcdir)
	$(INSTALL_DATA) $(BASENAME).$(LANG1).rlx $(DESTDIR)$(apertium_fin_srcdir)

###############################################################################
## Cleanup
###############################################################################

CLEANFILES = $(TARGETS_COMMON)
clean-local:
	-rm -rf .deps modes

