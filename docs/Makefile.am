## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, version 3 of the License.

## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.

## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

LANG1=fin
BASENAME=apertium-fin
LANG1HTML=Finnish

if CAN_SAXON

noinst_DATA=$(BASENAME).$(LANG1).dix-a.html \
            $(BASENAME).$(LANG1).dix-b.html \
            $(BASENAME).$(LANG1).dix-c.html \
            $(BASENAME).$(LANG1).dix-d.html \
            $(BASENAME).$(LANG1).dix-e.html \
            $(BASENAME).$(LANG1).dix-f.html \
            $(BASENAME).$(LANG1).dix-g.html \
            $(BASENAME).$(LANG1).dix-h.html \
            $(BASENAME).$(LANG1).dix-i.html \
            $(BASENAME).$(LANG1).dix-j.html \
            $(BASENAME).$(LANG1).dix-k.html \
            $(BASENAME).$(LANG1).dix-l.html \
            $(BASENAME).$(LANG1).dix-m.html \
            $(BASENAME).$(LANG1).dix-n.html \
            $(BASENAME).$(LANG1).dix-o.html \
            $(BASENAME).$(LANG1).dix-p.html \
            $(BASENAME).$(LANG1).dix-q.html \
            $(BASENAME).$(LANG1).dix-r.html \
            $(BASENAME).$(LANG1).dix-s.html \
            $(BASENAME).$(LANG1).dix-t.html \
            $(BASENAME).$(LANG1).dix-u.html \
            $(BASENAME).$(LANG1).dix-v.html \
            $(BASENAME).$(LANG1).dix-w.html \
            $(BASENAME).$(LANG1).dix-x.html \
            $(BASENAME).$(LANG1).dix-y.html \
            $(BASENAME).$(LANG1).dix-z.html \
            $(BASENAME).$(LANG1).dix-å.html \
            $(BASENAME).$(LANG1).dix-ä.html \
            $(BASENAME).$(LANG1).dix-ö.html \
			statistics.md
# upstream d/l
monodix2html.xslt:
	wget https://raw.githubusercontent.com/flammie/apevis-xslt/master/$@

monodix2html-split.xslt:
	wget https://raw.githubusercontent.com/flammie/apevis-xslt/master/$@

$(BASENAME).$(LANG1).dix.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html.xslt
	$(SAXON) -s:$< monodix2html.xslt language=$(LANG1HTML) langcode=$(LANG1)  > $@

$(BASENAME).$(LANG1).dix-a.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=a  > $@

$(BASENAME).$(LANG1).dix-b.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=b  > $@

$(BASENAME).$(LANG1).dix-c.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=c  > $@

$(BASENAME).$(LANG1).dix-d.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=d  > $@

$(BASENAME).$(LANG1).dix-e.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=e  > $@

$(BASENAME).$(LANG1).dix-f.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=f  > $@

$(BASENAME).$(LANG1).dix-g.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=g  > $@

$(BASENAME).$(LANG1).dix-h.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=h  > $@

$(BASENAME).$(LANG1).dix-i.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=i  > $@

$(BASENAME).$(LANG1).dix-j.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=j  > $@

$(BASENAME).$(LANG1).dix-k.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=k  > $@

$(BASENAME).$(LANG1).dix-l.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=l  > $@

$(BASENAME).$(LANG1).dix-m.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=m  > $@

$(BASENAME).$(LANG1).dix-n.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=n  > $@

$(BASENAME).$(LANG1).dix-o.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=o  > $@

$(BASENAME).$(LANG1).dix-p.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=p  > $@

$(BASENAME).$(LANG1).dix-q.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=q  > $@

$(BASENAME).$(LANG1).dix-r.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=r  > $@

$(BASENAME).$(LANG1).dix-s.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=s  > $@

$(BASENAME).$(LANG1).dix-t.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=t  > $@

$(BASENAME).$(LANG1).dix-u.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=u  > $@

$(BASENAME).$(LANG1).dix-v.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=v  > $@

$(BASENAME).$(LANG1).dix-w.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=w  > $@

$(BASENAME).$(LANG1).dix-x.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=x  > $@

$(BASENAME).$(LANG1).dix-y.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=y  > $@

$(BASENAME).$(LANG1).dix-z.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=z  > $@

$(BASENAME).$(LANG1).dix-å.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=å  > $@

$(BASENAME).$(LANG1).dix-ä.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=ä  > $@

$(BASENAME).$(LANG1).dix-ö.html: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2html-split.xslt
	$(SAXON) -s:$< monodix2html-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=ö  > $@

endif

statistics.md: $(top_srcdir)/apertium-$(LANG1).$(LANG1).lexc
	echo "# Apertium-$(LANG1) statistics" > $@
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
