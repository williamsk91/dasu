---
sidebar_position: 0
title: Unofficial Texinfo Format
---

<div class="section">

[⇡](#pagetop)

Next: [Dedication](Dedication.xhtml#Dedication), Prev:
[Top](index.xhtml#Top), Up: [Top](index.xhtml#Top)  
\[[Contents](index.xhtml#SEC_Contents "Table of contents")\]

## Unofficial Texinfo Format

This is the second edition SICP book,  
from Unofficial Texinfo Format.

You are probably reading it in an Info hypertext browser, such as the
Info mode of Emacs. You might alternatively be reading it TeX-formatted
on your screen or printer, though that would be silly. And, if printed,
expensive.

The freely-distributed official HTML-and-GIF format was first converted
personally to Unofficial Texinfo Format (UTF) version 1 by Lytha Ayth
during a long Emacs lovefest weekend in April, 2001.

The UTF is easier to search than the HTML format. It is also much more
accessible to people running on modest computers, such as donated
’386-based PCs. A 386 can, in theory, run Linux, Emacs, and a Scheme
interpreter simultaneously, but most 386s probably can’t also run both
Netscape and the necessary X Window System without prematurely
introducing budding young underfunded hackers to the concept of
_thrashing_. UTF can also fit uncompressed on a 1.44MB floppy diskette,
which may come in handy for installing UTF on PCs that do not have
Internet or LAN access.

The Texinfo conversion has been a straight transliteration, to the
extent possible. Like the TeX-to-HTML conversion, this was not without
some introduction of breakage. In the case of Unofficial Texinfo Format,
figures have suffered an amateurish resurrection of the lost art of
ASCII. Also, it’s quite possible that some errors of ambiguity were
introduced during the conversion of some of the copious superscripts
(‘^’) and subscripts (‘\_’). Divining _which_ has been left as an
exercise to the reader. But at least we don’t put our brave astronauts
at risk by encoding the _greater-than-or-equal_ symbol as `<u>&gt;</u>`.

If you modify `sicp.texi` to correct errors or improve the ASCII art,
then update the `@set utfversion 2.andresraba6.6` line to reflect your
delta. For example, if you started with Lytha’s version `1`, and your
name is Bob, then you could name your successive versions `1.bob1`,
`1.bob2`, … `1.bobn`. Also update `utfversiondate`. If you want to
distribute your version on the Web, then embedding the string
“sicp.texi” somewhere in the file or Web page will make it easier for
people to find with Web search engines.

It is believed that the Unofficial Texinfo Format is in keeping with the
spirit of the graciously freely-distributed HTML version. But you never
know when someone’s armada of lawyers might need something to do, and
get their shorts all in a knot over some benign little thing, so think
twice before you use your full name or distribute Info, DVI, PostScript,
or PDF formats that might embed your account or machine name. _Peath,
Lytha Ayth_

**Addendum:** See also the SICP video lectures by Abelson and Sussman:
at [MIT
CSAIL](http://groups.csail.mit.edu/mac/classes/6.001/abelson-sussman-lectures/)
or [MIT
OCW](http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-001-structure-and-interpretation-of-computer-programs-spring-2005/video-lectures/).

**Second Addendum:** Above is the original introduction to the UTF from 2001. Ten years later, UTF has been transformed: mathematical symbols
and formulas are properly typeset, and figures drawn in vector graphics.
The original text formulas and ASCII art figures are still there in the
Texinfo source, but will display only when compiled to Info output. At
the dawn of e-book readers and tablets, reading a PDF on screen is
officially not silly anymore. Enjoy! _A.R, May, 2011_

**Third Addendum:** Things go in spirals. We explored the powers of
Texinfo and LaTeX at typesetting the PDF book. Now it’s time to come
back to HTML. This turn it shall be HTML5. “It can be a dangerous place,
but it’s our last, best hope for peace.” (Sinclair, Babylon 5.) Does the
peace endure after the browser wars? Anyway, the aim of the project is
to approach the quality of LaTeX output by using the HTML5 toolbox.
JavaScript, CSS3, SVG, MathJax, MathML, and web fonts are employed here.
Due to the experimental nature of this undertaking, there will be
glitches and errors in some browsers. Technical and artistic help is
appreciated. In the meantime, enjoy the book, and fire up a REPL! _A.R,
January, 2014_

Next: [Dedication](Dedication.xhtml#Dedication), Prev:
[Top](index.xhtml#Top), Up: [Top](index.xhtml#Top)  
\[[Contents](index.xhtml#SEC_Contents "Table of contents")\]

</div>

[⇣](#pagebottom)
