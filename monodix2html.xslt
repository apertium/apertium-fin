<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="5.0"/>

  <xsl:param name="language"/>
  <xsl:param name="version"/>
  <xsl:param name="invert"/>

    <xsl:template match="dictionary">
    <!-- lot of c/p from the jekyll outp  {{{ -->
    <html>
      <head>
        <meta charset="utf-8"/>
          <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
          <meta name="viewport" content="width=device-width"/>
        <title>apertium-fin
             : Apertium-fin
        </title>
        <meta name="description"
          content="Finnish–German dictionary for rule-based machine translation"/>

        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
        <link rel="stylesheet" href="/apertium-fin-deu/css/syntax.css"/>
        <link rel="stylesheet" href="/apertium-fin-deu/css/main.css"/>
      </head>
      <body>
        <div class="container">
          <div class="row">
            <div id="header" class="col-sm-12">
              <xsl:copy-of select="document('header.html')"/>
            </div>
          </div>
          <div class="row">
            <div id="navigation" class="col-sm-2">
              <xsl:copy-of select="document('navigation.html')"/>
            </div>
            <div id="content" class="col-sm-10">
              <h1 id="dictionary">Dictionary visualisation:
                Apertium-fin-Finnish dictionary and RBMT resources
              </h1>
              <p style="font-variant: italic">
                This dictionary has been generated automatically from the XML
                dictionary data. It is intended for visualisation.
              </p>
              <h2>Alphabets</h2>
              <xsl:apply-templates select="alphabet"/>
              <h2>Apertium tags (for POS and MSD features)</h2>
              <xsl:apply-templates select="sdefs"/>
              <h2>Words</h2>
              <xsl:apply-templates select="section"/>
            </div>
          </div>
          <div class="row">
            <div id="footer" class="col-sm-12">
              <xsl:copy-of select="document('footer.html')"/>
            </div>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="alphabet">
    <p>Apertium will use following letters as alphabets in its tokenisation:</p>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="sdefs">
    <table>
      <thead>
        <tr>
          <th>Symbol</th>
          <th>Comment</th>
        </tr>
      </thead>
      <tbody>
        <xsl:apply-templates/>
      </tbody>
    </table>
  </xsl:template>

  <xsl:template match="sdef">
    <tr>
      <td><code>&lt;<xsl:value-of select="@n"/>&gt;</code></td>
      <td><xsl:value-of select="@c"/></td>
    </tr>
  </xsl:template>

  <xsl:template match="section">
    <h3>
      <xsl:attribute name="id">
        <xsl:value-of select="@type"/>
      </xsl:attribute>
      <xsl:value-of select="@type"/>
    </h3>
    <div id="letternavi">
      <a href="#a">a</a> |
      <a href="#b">b</a> |
      <a href="#c">c</a> |
      <a href="#d">d</a> |
      <a href="#e">e</a> |
      <a href="#f">f</a> |
      <a href="#g">g</a> |
      <a href="#h">h</a> |
      <a href="#i">i</a> |
      <a href="#j">j</a> |
      <a href="#k">k</a> |
      <a href="#l">l</a> |
      <a href="#m">m</a> |
      <a href="#n">n</a> |
      <a href="#o">o</a> |
      <a href="#p">p</a> |
      <a href="#q">q</a> |
      <a href="#r">r</a> |
      <a href="#s">s</a> |
      <a href="#t">t</a> |
      <a href="#u">u</a> |
      <a href="#v">v</a> |
      <a href="#w">w</a> |
      <a href="#x">x</a> |
      <a href="#y">y</a> |
      <a href="#z">z</a> |
      <a href="#ä">ä</a> |
      <a href="#ö">ö</a>
    </div>

    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'a'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'b'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'c'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'d'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'e'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'f'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'g'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'h'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'i'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'j'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'k'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'l'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'m'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'n'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'o'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'p'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'q'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'r'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'s'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'t'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'u'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'v'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'w'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'x'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'y'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'z'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'ä'"/>
    </xsl:call-template>
    <xsl:call-template name="dictionaryletter">
      <xsl:with-param name="letter" select="'ö'"/>
    </xsl:call-template>
  </xsl:template>

  <xsl:template name="dictionaryletter">
    <xsl:param name="letter"/>
    <h4>
      <xsl:attribute name="id">
        <xsl:value-of select="$letter"/>
      </xsl:attribute>
      <xsl:value-of select="$letter"/> or
      <xsl:value-of select="upper-case($letter)"/>
    </h4>
    <table>
      <thead>
        <th>RL</th>
        <th><xsl:value-of select="$language"/></th>
        <th>Comments</th>
      </thead>
      <tbody>
        <xsl:apply-templates select="e[starts-with(p[1]/r[1], $letter)]|
          e[starts-with(p[1]/r[1], upper-case($letter))]|
          e[starts-with(i[1], upper-case($letter))]">
          <xsl:sort select="p[1]/r[1]" data-type="text"/>
        </xsl:apply-templates>
      </tbody>
    </table>
  </xsl:template>



  <xsl:template match="e">
    <tr>
      <td><em><xsl:value-of select="@r"/></em></td>
      <xsl:apply-templates/>
      <td><xsl:value-of select="@c"/></td>
    </tr>
  </xsl:template>

  <xsl:template match="p">
    <td><xsl:apply-templates select="r"/></td>
  </xsl:template>

  <xsl:template match="i">
    <td><xsl:apply-templates/></td>
  </xsl:template>

  <xsl:template match="s">
    (<xsl:value-of select="@n"/>)
  </xsl:template>

  <xsl:template match="b">&#160;</xsl:template>

  <xsl:template match="j">
    <strong style="color: red">+++</strong>
  </xsl:template>

  <xsl:template match="re">
    <code><xsl:apply-templates/></code>
  </xsl:template>


</xsl:stylesheet>
