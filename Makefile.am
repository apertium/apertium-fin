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
$(BASENAME).$(LANG1).dix.html: $(BASENAME).$(LANG1).dix monodix2html.xslt
	$(SAXON) -s:$< monodix2html.xslt language=Finnish  > $@

$(BASENAME).$(LANG1).dix-a.html: $(BASENAME).$(LANG1).dix monodix2html.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=a  > $@

$(BASENAME).$(LANG1).dix-b.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=b  > $@

$(BASENAME).$(LANG1).dix-c.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=c  > $@

$(BASENAME).$(LANG1).dix-d.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=d  > $@

$(BASENAME).$(LANG1).dix-e.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=e  > $@

$(BASENAME).$(LANG1).dix-f.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=f  > $@

$(BASENAME).$(LANG1).dix-g.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=g  > $@

$(BASENAME).$(LANG1).dix-h.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=h  > $@

$(BASENAME).$(LANG1).dix-i.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=i  > $@

$(BASENAME).$(LANG1).dix-j.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=j  > $@

$(BASENAME).$(LANG1).dix-k.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=k  > $@

$(BASENAME).$(LANG1).dix-l.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=l  > $@

$(BASENAME).$(LANG1).dix-m.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=m  > $@

$(BASENAME).$(LANG1).dix-n.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=n  > $@

$(BASENAME).$(LANG1).dix-o.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=o  > $@

$(BASENAME).$(LANG1).dix-p.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=p  > $@

$(BASENAME).$(LANG1).dix-q.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=q  > $@

$(BASENAME).$(LANG1).dix-r.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=r  > $@

$(BASENAME).$(LANG1).dix-s.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=s  > $@

$(BASENAME).$(LANG1).dix-t.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=t  > $@

$(BASENAME).$(LANG1).dix-u.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=u  > $@

$(BASENAME).$(LANG1).dix-v.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=v  > $@

$(BASENAME).$(LANG1).dix-w.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=w  > $@

$(BASENAME).$(LANG1).dix-x.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=x  > $@

$(BASENAME).$(LANG1).dix-y.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=y  > $@

$(BASENAME).$(LANG1).dix-z.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=z  > $@

$(BASENAME).$(LANG1).dix-å.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=å  > $@

$(BASENAME).$(LANG1).dix-ä.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=ä  > $@

$(BASENAME).$(LANG1).dix-ö.html: $(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=Finnish letter=ö  > $@

endif
