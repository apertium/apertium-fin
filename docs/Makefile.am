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

noinst_DATA=$(BASENAME).$(LANG1).dix-a.md \
            $(BASENAME).$(LANG1).dix-b.md \
            $(BASENAME).$(LANG1).dix-c.md \
            $(BASENAME).$(LANG1).dix-d.md \
            $(BASENAME).$(LANG1).dix-e.md \
            $(BASENAME).$(LANG1).dix-f.md \
            $(BASENAME).$(LANG1).dix-g.md \
            $(BASENAME).$(LANG1).dix-h.md \
            $(BASENAME).$(LANG1).dix-i.md \
            $(BASENAME).$(LANG1).dix-j.md \
            $(BASENAME).$(LANG1).dix-k.md \
            $(BASENAME).$(LANG1).dix-l.md \
            $(BASENAME).$(LANG1).dix-m.md \
            $(BASENAME).$(LANG1).dix-n.md \
            $(BASENAME).$(LANG1).dix-o.md \
            $(BASENAME).$(LANG1).dix-p.md \
            $(BASENAME).$(LANG1).dix-q.md \
            $(BASENAME).$(LANG1).dix-r.md \
            $(BASENAME).$(LANG1).dix-s.md \
            $(BASENAME).$(LANG1).dix-t.md \
            $(BASENAME).$(LANG1).dix-u.md \
            $(BASENAME).$(LANG1).dix-v.md \
            $(BASENAME).$(LANG1).dix-w.md \
            $(BASENAME).$(LANG1).dix-x.md \
            $(BASENAME).$(LANG1).dix-y.md \
            $(BASENAME).$(LANG1).dix-z.md \
            $(BASENAME).$(LANG1).dix-å.md \
            $(BASENAME).$(LANG1).dix-ä.md \
            $(BASENAME).$(LANG1).dix-ö.md \
			statistics.md
# upstream d/l
monodix2md.xslt:
	wget https://raw.githubusercontent.com/flammie/apevis-xslt/master/$@

monodix2md-split.xslt:
	wget https://raw.githubusercontent.com/flammie/apevis-xslt/master/$@

$(BASENAME).$(LANG1).dix.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md.xslt
	$(SAXON) -s:$< monodix2md.xslt language=$(LANG1HTML) langcode=$(LANG1)  > $@

$(BASENAME).$(LANG1).dix-a.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=a  > $@

$(BASENAME).$(LANG1).dix-b.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=b  > $@

$(BASENAME).$(LANG1).dix-c.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=c  > $@

$(BASENAME).$(LANG1).dix-d.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=d  > $@

$(BASENAME).$(LANG1).dix-e.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=e  > $@

$(BASENAME).$(LANG1).dix-f.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=f  > $@

$(BASENAME).$(LANG1).dix-g.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=g  > $@

$(BASENAME).$(LANG1).dix-h.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=h  > $@

$(BASENAME).$(LANG1).dix-i.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=i  > $@

$(BASENAME).$(LANG1).dix-j.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=j  > $@

$(BASENAME).$(LANG1).dix-k.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=k  > $@

$(BASENAME).$(LANG1).dix-l.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=l  > $@

$(BASENAME).$(LANG1).dix-m.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=m  > $@

$(BASENAME).$(LANG1).dix-n.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=n  > $@

$(BASENAME).$(LANG1).dix-o.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=o  > $@

$(BASENAME).$(LANG1).dix-p.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=p  > $@

$(BASENAME).$(LANG1).dix-q.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=q  > $@

$(BASENAME).$(LANG1).dix-r.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=r  > $@

$(BASENAME).$(LANG1).dix-s.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=s  > $@

$(BASENAME).$(LANG1).dix-t.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=t  > $@

$(BASENAME).$(LANG1).dix-u.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=u  > $@

$(BASENAME).$(LANG1).dix-v.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=v  > $@

$(BASENAME).$(LANG1).dix-w.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=w  > $@

$(BASENAME).$(LANG1).dix-x.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=x  > $@

$(BASENAME).$(LANG1).dix-y.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=y  > $@

$(BASENAME).$(LANG1).dix-z.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=z  > $@

$(BASENAME).$(LANG1).dix-å.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=å  > $@

$(BASENAME).$(LANG1).dix-ä.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=ä  > $@

$(BASENAME).$(LANG1).dix-ö.md: $(top_srcdir)/$(BASENAME).$(LANG1).dix monodix2md-split.xslt
	$(SAXON) -s:$< monodix2md-split.xslt language=$(LANG1HTML) langcode=$(LANG1) letter=ö  > $@

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
