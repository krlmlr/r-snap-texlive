###########################################################################
############      The Antykwa Poltawskiego Family of Fonts     ############
###########################################################################

Font: Antykwa Poltawskiego
Authors: Bogus\l{}aw Jackowski and Janusz M. Nowacki
Version: 1.101
Date: 9 X 2010
Downloads: http://www.gust.org.pl/projects/e-foundry/poltawski/

License:
  % Copyright 1999--2010 for Antykwa Poltawskiego digital form by B. Jackowski,
  % J.M. Nowacki and P. Strzelczyk (on behalf of the TeX Users Groups).
  %
  % This work can be freely used and distributed under
  % the GUST Font License (GFL -- see GUST-FONT-LICENSE.txt)
  % which legally equivalent to the LaTeX Project Public License
  % (LPPL -- see http://www.latex-project.org/lppl.txt ).
  %
  % This work has the maintenance status "maintained". The Current Maintainer
  % of this work is Bogus\l{}aw Jackowski and Janusz M. Nowacki.
  %
  % This work consists of the files listed
  % in the MANIFEST-Antykwa-Poltawskiego.txt file.

###########################################################################
############         A BRIEF DESCRIPTION OF THE PACKAGE        ############
###########################################################################

This package contains the Antykwa P\'o{\l}tawskiego family of fonts 
in the PostScript Type 1 and OpenType formats.
 
The original font was designed in the twenties of the XX century by
the Polish typographer Adam P\'o{\l}tawski (born 15 May 1881 in
Warsaw, died 19 September 1952 in Cracow), hence the name, although
the author named it `antykwa polska'. It is maintained that the
design tried to capture the specific features of the Polish written
language. For example, the letters more frequent in Polish than in
other languages (cf. http://en.wikipedia.org/wiki/Letter_frequency )
like, e.g., 'w', 'y', `z', and, last but not least, 'lslash', got
specific shapes.

Antykwa Poltawskiego was first cast in Jan Id\'zkowski's foundry
(Warsaw, Poland) in 1931. Until late seventies of the XX century, Antykwa
Poltawskiego was used in Poland as the chief text type for musical
publications, in particular, in the monumental Ignacy Paderewski's
edition of the complete Fryderyk Chopin works (in XXVII volumes).

                           *   *   *

Following the route set out by the Latin Modern and TeX Gyre projects 
(http://www.gust.org.pl/projects/e-foundry), the Antykwa Poltawskiego 
digitisation project aims at providing a rich collection of
diacritical characters in the attempt to cover as many Latin-based
scripts as possible. To our knowledge, the repertoire of characters
covers all European languages as well as some other Latin-based
alphabets such as Vietnamese and Navajo; at the request of users,
recent extensions (following the enhancement of the Latin Modern
collection) provide glyphs sufficient for typesetting of romanized
transliterations of Arabic and Sanskrit scripts. We have frequently
used the information presented by Michael Everson at the ``The
Alphabets of Europe'' ( http://www.evertype.com/alphabets/ ) web
site. If you know about European languages that are not covered
completely or if some glyphs have apparently wrong shapes -- please
let us know.

The Antykwa Poltawskiego project was launched by the Polish TeX
Users GUST and is supported by TeX USERS GROUPS. Hearty thanks to the
representatives of these groups, especially to Mojca Miklavec, and also
to all people who helped with comments, ideas, remarks, bug reports,
objections, hints, consolations, etc.

                           *   *   *
Note that the digitized Antykwa Poltawskiego is programmed as a fully
parametrized outline font, following in the footsteps of Donald E. Knuth whose
Computer Modern fonts are also parameterized, although bitmapped, fonts
(see http://www.uni-giessen.de/partosch/eurotex99/jackowski.pdf ).

                           *   *   *

The Antykwa Poltawskiego family consists of 4 weights (light,
normal, medium, bold), each having upright and italic forms and one
of 5 design sizes: 6, 8, 10, 12 and 17pt (in the OTF lingo: extended,
semiextended, normal, semicondensed, and condensed, respectively).
Altogether, the collection comprises 40 font files, i.e.:

   antpl6, antpl8, antpl10, antpl12, antpl17,
   antpli6, antpli8, antpli10, antpli12, antpli17,

   antpb6, antpb8, antpb10, antpb12, antpb17
   antpbi6, antpbi8, antpbi10, antpbi12, antpbi17,

   antpm6, antpm8, antpm10, antpm12, antpm17,
   antpmi6, antpmi8, antpmi10, antpmi12, antpmi17,

   antpr6, antpr8, antpr10, antpr12, antpr17,
   antpri6, antpri8, antpri10, antpri12, antpri17,

The OTF fonts are equipped with the following "features":

   c2sc, cpsp, dlig, dnom, frac, kern, liga, lnum, locl,
   numr, onum, pnum, salt, sinf, size, smcp, ss01, ss02,
   ss03, ss04, subs, sups, tnum, zero

The collection may be freely used and distributed under the GUST Font
License (see above) which is actually an instance of the LaTeX Project
Public License (LPPL; see http://www.latex-project.org/lppl.txt ).

                           *   *   *

The package consists of the files in the directories conforming
to the TeX Directory Structure (v. 1.1). The directories contain:

doc/fonts/poltawski             this file, manifest, licence, test files,
                                and, moreover, selected files used as input
                                for generating OTFs (meant as a technical
                                documentation of the OTFs)
tex/latex/poltawski             support for LaTeX (*.fd and *.sty files,
                                prepared by Marcin Woli\'nski)
fonts/enc/dvips/poltawski       support for dvips (*.enc files);
fonts/map/dvips/poltawski       support for dvips (*.map files)
fonts/opentype/gust/poltawski   fonts in the OpenType format (*.otf files)
fonts/type1/gust/poltawski      PostScript (Type 1) font files and printer
                                font metric files (*.pfb and *.pfm,
                                respectively);
fonts/tfm/gust/poltawski        TeX font metric files (*.tfm) for:
                                -- CS (CSTUG) encoding (cs-*.tfm),
                                -- EC (Cork) encoding (ec-*.tfm),
                                -- L7x (Lithuanian) encoding (l7x-*.tfm),
                                -- QX (GUST) encoding (qx-*.tfm),
                                -- RM (Regular Math or OT1) encoding (rm-*.tfm),
                                -- Y&Y's TeX'n'ANSI aka LY1 encoding
                                   (texnansi-*.tfm),
                                -- T5 (Vietnamese) encoding (t5-*.tfm),
                                -- Text Companion for EC fonts aka TS1
                                   (ts1-*.tfm).
                                Encodings CS, EC, L7x, QX, RM, Y&Y, and T5
                                have their cap-small-caps counterparts
                                (*-sc.tfm).
fonts/afm/gust/poltawski        Adobe font metric files (*.afm);

Email contact: Bogus\l{}aw Jackowski aka Jacko, B_Jackowski@gust.org.pl

                           *   *   *

In ConTeXt, support for the Antykwa Poltawskiego collection can be found
in the typescript definition files:

  ... /tex/context/base/type-enc.tex
  ... /tex/context/base/type-syn.tex
  ... /tex/context/base/type-exa.tex
  ... /tex/context/base/type-map.tex

Additional encoding and map files may be found in:

  ... /texmf/fonts/map/pdftex/context
  ... /texmf/fonts/enc/pdftex/context

                           *   *   *

All 40 font files contain the same repertoire of 1126 characters, namely
(these are the names used in Type 1 fonts, in alphabetical order):

A a a.sc Aacute aacute aacute.sc Abreve abreve abreve.sc Abreveacute
abreveacute abreveacute.sc Abrevedotbelow abrevedotbelow abrevedotbelow.sc
Abrevegrave abrevegrave abrevegrave.sc Abrevehookabove abrevehookabove
abrevehookabove.sc Abrevetilde abrevetilde abrevetilde.sc Acaron acaron
acaron.sc Acircumflex acircumflex acircumflex.sc Acircumflexacute
acircumflexacute acircumflexacute.sc Acircumflexdotbelow acircumflexdotbelow
acircumflexdotbelow.sc Acircumflexgrave acircumflexgrave acircumflexgrave.sc
Acircumflexhookabove acircumflexhookabove acircumflexhookabove.sc
Acircumflextilde acircumflextilde acircumflextilde.sc Acute acute acute.dup
acute.ts1 Acutecomb acutecomb Adblgrave adblgrave adblgrave.sc Adieresis
adieresis adieresis.sc Adotbelow adotbelow adotbelow.sc AE ae AE.dup ae.dup
ae.sc AEacute aeacute aeacute.sc Agrave agrave agrave.sc Ahookabove
ahookabove ahookabove.sc Alpha alpha Amacron amacron amacron.sc ampersand
anglearc angleleft angleright Aogonek aogonek aogonek.sc Aogonekacute
aogonekacute aogonekacute.sc approxequal Aring aring aring.sc Aringacute
aringacute aringacute.sc arrowdown arrowleft arrowright arrowup asciicircum
asciitilde asterisk asteriskmath at at.alt Atilde atilde atilde.sc B b b.sc
backslash baht bar Beta beta bigcircle blanksymbol born braceleft braceright
bracketleft bracketright Breve breve breve.ts1 Breveacute breveacute
brevebelow brevebelowcomb brevebelowinverted brevebelowinvertedcomb Brevecomb
brevecomb Brevegrave brevegrave Brevehookabove brevehookabove Breveinverted
breveinverted Breveinvertedcomb breveinvertedcomb Brevetilde brevetilde
brokenbar bullet C c c.sc Cacute cacute cacute.sc Caron caron caron.ts1
Caroncomb caroncomb Ccaron ccaron ccaron.sc Ccedilla ccedilla ccedilla.sc
Ccircumflex ccircumflex ccircumflex.sc Cdotaccent cdotaccent cdotaccent.sc
cedilla cedilla.dup cent cent.oldstyle centigrade Chi chi Circumflex
circumflex circumflex.dup Circumflexacute circumflexacute Circumflexcomb
circumflexcomb Circumflexgrave circumflexgrave Circumflexhookabove
circumflexhookabove Circumflextilde circumflextilde colon colonmonetary comma
commaaccent commaaccentcomb copyleft copyright copyright.alt currency cwm
cwmascender cwmcapital cyrBreve cyrbreve cyrFlex cyrflex D d d.sc dagger
daggerdbl dblbracketleft dblbracketright dblGrave dblgrave dblgrave.ts1
dblGravecomb dblgravecomb dblverticalbar Dcaron dcaron dcaron.sc Dcroat
dcroat dcroat.sc Ddotbelow ddotbelow ddotbelow.sc degree Delta delta diameter
died Dieresis dieresis dieresis.dup dieresis.ts1 Dieresisacute dieresisacute
Dieresiscaron dieresiscaron Dieresiscomb dieresiscomb Dieresisgrave
dieresisgrave discount divide divorced Dlinebelow dlinebelow dlinebelow.sc
dollar dollar.oldstyle dong Dotaccent dotaccent Dotaccentcomb dotaccentcomb
dotbelow dotbelowcomb dotlessi dotlessi.sc dotlessj dotlessj.dup dotlessj.sc
E e e.sc Eacute eacute eacute.sc Ebreve ebreve ebreve.sc Ecaron ecaron
ecaron.sc Ecircumflex ecircumflex ecircumflex.sc Ecircumflexacute
ecircumflexacute ecircumflexacute.sc Ecircumflexdotbelow ecircumflexdotbelow
ecircumflexdotbelow.sc Ecircumflexgrave ecircumflexgrave ecircumflexgrave.sc
Ecircumflexhookabove ecircumflexhookabove ecircumflexhookabove.sc
Ecircumflextilde ecircumflextilde ecircumflextilde.sc Edblgrave edblgrave
edblgrave.sc Edieresis edieresis edieresis.sc Edotaccent edotaccent
edotaccent.sc Edotbelow edotbelow edotbelow.sc Egrave egrave egrave.sc
Ehookabove ehookabove ehookabove.sc eight eight.dnom eight.inferior
eight.numr eight.oldstyle eight.prop eight.superior eight.taboldstyle ell
ellipsis Emacron emacron emacron.sc emdash endash Eng eng eng.sc Eogonek
eogonek eogonek.sc Eogonekacute eogonekacute eogonekacute.sc Epsilon epsilon
epsilon.alt equal Ereversed ereversed ereversed.sc estimated Eta eta Eth eth
eth.sc Etilde etilde etilde.sc eturned eturned.sc Euro exclam exclamdown F f
f.sc f_k ff ffi ffl fi five five.dnom five.inferior five.numr five.oldstyle
five.prop five.superior five.taboldstyle fl florin four four.dnom
four.inferior four.numr four.oldstyle four.prop four.superior
four.taboldstyle fraction fraction.alt G g g.sc Gacute gacute gacute.sc Gamma
gamma Gbreve gbreve gbreve.sc Gcaron gcaron gcaron.sc Gcedilla gcedilla
Gcircumflex gcircumflex gcircumflex.sc Gcommaaccent gcommaaccent
gcommaaccent.sc Gdotaccent gdotaccent gdotaccent.sc Germandbls germandbls
germandbls.dup germandbls.sc gnaborretni Grave grave grave.ts1 Gravecomb
gravecomb greater greaterequal greaterorequalslant guarani guillemotleft
guillemotright guilsinglleft guilsinglright H h h.sc Hbar hbar hbar.sc
Hbrevebelow hbrevebelow hbrevebelow.sc Hcircumflex hcircumflex hcircumflex.sc
Hdieresis hdieresis hdieresis.sc Hdotbelow hdotbelow hdotbelow.sc Hookabove
hookabove Hookabovecomb hookabovecomb horn Htilde htilde htilde.sc
Hungarumlaut hungarumlaut hungarumlaut.ts1 Hungarumlautcomb hungarumlautcomb
hyphen hyphen.alt hyphen.dup hyphen.prop hyphendbl hyphendbl.alt I i i.sc
Iacute iacute iacute.sc Ibreve ibreve ibreve.sc Icaron icaron icaron.sc
Icircumflex icircumflex icircumflex.sc Idblgrave idblgrave idblgrave.sc
Idieresis idieresis idieresis.sc Idieresisacute idieresisacute
idieresisacute.sc Idotaccent idotaccent.sc Idotbelow idotbelow idotbelow.sc
Igrave igrave igrave.sc Ihookabove ihookabove ihookabove.sc IJ ij ij.sc
Imacron imacron Imacron.alt imacron.alt imacron.alt.sc imacron.sc infinity
interrobang Iogonek iogonek iogonek.sc Iogonekacute iogonekacute
iogonekacute.sc Iota iota Itilde itilde itilde.sc J j j.sc J_caron Jacute
jacute jacute.sc jcaron jcaron.sc Jcircumflex jcircumflex jcircumflex.sc K k
k.sc Kappa kappa Kcedilla kcedilla Kcommaaccent kcommaaccent kcommaaccent.sc
L l l.sc Lacute lacute lacute.sc Lambda lambda Lcaron lcaron lcaron.sc
Lcedilla lcedilla Lcommaaccent lcommaaccent lcommaaccent.sc Ldot ldot ldot.sc
Ldotbelow ldotbelow ldotbelow.sc Ldotbelowmacron ldotbelowmacron
ldotbelowmacron.sc leaf less lessequal lessorequalslant linebelow
linebelowcomb lira logicalnot longs lozenge lscript Lslash lslash lslash.sc
Ltilde ltilde ltilde.sc M m m.sc Macron macron Macron.alt macron.alt
macron.dup macron.ts1 macronbelow macronbelowcomb Macroncomb macroncomb
married Mdotbelow mdotbelow mdotbelow.sc mho minus minusplus Mu mu mu.alt
multiply musicalnote N n n.sc Nacute nacute nacute.sc naira nbspace Ncaron
ncaron ncaron.sc Ncedilla ncedilla Ncommaaccent ncommaaccent ncommaaccent.sc
Ndotaccent ndotaccent ndotaccent.sc Ndotbelow ndotbelow ndotbelow.sc nine
nine.dnom nine.inferior nine.numr nine.oldstyle nine.prop nine.superior
nine.taboldstyle notequal Ntilde ntilde ntilde.sc Nu nu numbersign numero O o
o.sc Oacute oacute oacute.sc Obreve obreve obreve.sc Ocaron ocaron ocaron.sc
Ocircumflex ocircumflex ocircumflex.sc Ocircumflexacute ocircumflexacute
ocircumflexacute.sc Ocircumflexdotbelow ocircumflexdotbelow
ocircumflexdotbelow.sc Ocircumflexgrave ocircumflexgrave ocircumflexgrave.sc
Ocircumflexhookabove ocircumflexhookabove ocircumflexhookabove.sc
Ocircumflextilde ocircumflextilde ocircumflextilde.sc Odblgrave odblgrave
odblgrave.sc Odieresis odieresis odieresis.sc Odotbelow odotbelow
odotbelow.sc OE oe OE.dup oe.dup oe.sc ogonek Ograve ograve ograve.sc ohm
Ohookabove ohookabove ohookabove.sc Ohorn ohorn ohorn.sc Ohornacute
ohornacute ohornacute.sc Ohorndotbelow ohorndotbelow ohorndotbelow.sc
Ohorngrave ohorngrave ohorngrave.sc Ohornhookabove ohornhookabove
ohornhookabove.sc Ohorntilde ohorntilde ohorntilde.sc Ohungarumlaut
ohungarumlaut ohungarumlaut.sc Omacron omacron omacron.sc Omega omega Omicron
omicron one one.dnom one.inferior one.numr one.oldstyle one.prop one.superior
one.taboldstyle onehalf onequarter Oogonek oogonek oogonek.sc Oogonekacute
oogonekacute oogonekacute.sc openbullet ordfeminine ordmasculine Orogate
orogate orogate.sc Oslash oslash Oslash.dup oslash.dup oslash.sc Oslashacute
oslashacute oslashacute.sc Otilde otilde otilde.sc P p p.sc paragraph
paragraph.alt parenleft parenright partialdiff percent period periodcentered
permyriad perthousand perthousandzero peso Phi phi phi.alt Pi pi pi.alt plus
plusminus Psi psi published Q q q.sc question questiondown quillbracketleft
quillbracketright quotedbl quotedblbase quotedblbase.ts1 quotedblleft
quotedblright quoteleft quoteleft.dup quoteright quoteright.dup
quotesinglbase quotesinglbase.ts1 quotesingle quotesingle.ts1 R r r.sc Racute
racute racute.sc radical Rcaron rcaron rcaron.sc Rcedilla rcedilla
Rcommaaccent rcommaaccent rcommaaccent.sc Rdblgrave rdblgrave rdblgrave.sc
Rdotaccent rdotaccent rdotaccent.sc Rdotbelow rdotbelow rdotbelow.sc
Rdotbelowmacron rdotbelowmacron rdotbelowmacron.sc recipe referencemark
registered registered.alt Rho rho rho.alt Ring ring Ringacute ringacute
Ringcomb ringcomb ringhalfleft ringhalfright S s s.sc Sacute sacute sacute.sc
Scaron scaron scaron.sc Scedilla scedilla scedilla.sc schwa Scircumflex
scircumflex scircumflex.sc Scommaaccent scommaaccent scommaaccent.sc
Sdotbelow sdotbelow sdotbelow.sc section semicolon servicemark seven
seven.dnom seven.inferior seven.numr seven.oldstyle seven.prop seven.superior
seven.taboldstyle sfthyphen Sigma sigma sigma1 six six.dnom six.inferior
six.numr six.oldstyle six.prop six.superior six.taboldstyle slash space star
sterling summation suppress T t t.sc Tau tau Tcaron tcaron tcaron.sc Tcedilla
tcedilla tcedilla.sc Tcommaaccent tcommaaccent tcommaaccent.sc Tdieresis
tdieresis tdieresis.sc Tdotbelow tdotbelow tdotbelow.sc Theta theta theta.alt
Thorn thorn thorn.sc three three.dnom three.inferior three.numr
three.oldstyle three.prop three.superior three.taboldstyle threequarters
threequartersemdash tie tieaccentcapital tieaccentcapital.new
tieaccentlowercase tieaccentlowercase.new Tilde tilde tilde.dup tildebelow
tildebelowcomb Tildecomb tildecomb tildelow Tlinebelow tlinebelow
tlinebelow.sc trademark Ttilde ttilde ttilde.sc twelveudash two two.dnom
two.inferior two.numr two.oldstyle two.prop two.superior two.taboldstyle U u
u.sc Uacute uacute uacute.sc Ubreve ubreve ubreve.sc Ubrevebelowinverted
ubrevebelowinverted ubrevebelowinverted.sc Ucaron ucaron ucaron.sc
Ucircumflex ucircumflex ucircumflex.sc Udblgrave udblgrave udblgrave.sc
Udieresis udieresis udieresis.sc Udieresisacute udieresisacute
udieresisacute.sc Udieresiscaron udieresiscaron udieresiscaron.sc
Udieresisgrave udieresisgrave udieresisgrave.sc Udotbelow udotbelow
udotbelow.sc Ugrave ugrave ugrave.sc Uhookabove uhookabove uhookabove.sc
Uhorn uhorn uhorn.sc Uhornacute uhornacute uhornacute.sc Uhorndotbelow
uhorndotbelow uhorndotbelow.sc Uhorngrave uhorngrave uhorngrave.sc
Uhornhookabove uhornhookabove uhornhookabove.sc Uhorntilde uhorntilde
uhorntilde.sc Uhungarumlaut uhungarumlaut uhungarumlaut.sc Umacron umacron
umacron.sc underscore undertie undertieinverted uni2010 uni2011 uni2423
Uogonek uogonek uogonek.sc Upsilon upsilon Uring uring uring.sc Utilde utilde
utilde.sc V v v.sc W w w.sc Wacute wacute wacute.sc Wcircumflex wcircumflex
wcircumflex.sc Wdieresis wdieresis wdieresis.sc weierstrass Wgrave wgrave
wgrave.sc won X x x.sc Xi xi Y y y.sc Yacute yacute yacute.sc Ycircumflex
ycircumflex ycircumflex.sc Ydieresis ydieresis ydieresis.sc Ydotbelow
ydotbelow ydotbelow.sc yen Ygrave ygrave ygrave.sc Yhookabove yhookabove
yhookabove.sc Ytilde ytilde ytilde.sc Z z z.sc Zacute zacute zacute.sc Zcaron
zcaron zcaron.sc Zdotaccent zdotaccent zdotaccent.sc Zdotbelow zdotbelow
zdotbelow.sc zero zero.dnom zero.inferior zero.numr zero.oldstyle zero.prop
zero.slash zero.superior zero.taboldstyle Zeta zeta
