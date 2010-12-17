<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:report="http://www.xml-cml.org/report/"               
        >
    <xsl:output method="html" omit-xml-declaration="yes"
                standalone="yes" indent="yes"/>

    <xsl:param name="result">INVALID</xsl:param>

    <xsl:template match="/">
      <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-GB" lang="en-GB">
<head profile="http://dublincore.org/documents/dcq-html/">
    <meta content="2010-09-30T15:00:00Z" name="dcterms.created" />
    <meta content="Joe Townsend, University of Cambridge" name="dcterms.creator" />
    <meta content="Henry Rzepa, Imperial College London" name="dcterms.contributor" />
    <meta content="Peter Murray-Rust, University of Cambridge" name="dcterms.contributor" />
    <meta content="text/html;charset=UTF-8" http-equiv="content-type" />
    <meta content="CML home page" name="description" />
    <meta content="CML, schema, xml-cml" name="keywords" />
    <meta content="index,follow,noodp,noydir" name="robots" />
		<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.8.1/build/reset-fonts-grids/reset-fonts-grids.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="http://xml-cml.org/css/superfish.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="http://xml-cml.org/css/cml.css" />
		<script type="text/javascript" src="http://xml-cml.org/js/jquery-1.2.6.min.js"></script>
		<script type="text/javascript" src="http://xml-cml.org/js/hoverIntent.js"></script>
		<script type="text/javascript" src="http://xml-cml.org/js/superfish.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("ul.sf-menu").superfish();
        });
    </script>
	<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-4391142-2']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>	<title>Chemical Markup Language | Validator</title>
</head>

<body>
    <div class="page clear" id="wrapper">
        <div id="header">
            <img src="http://xml-cml.org/images/title.png" alt="Chemical Markup Language" />
            <div class="clear" id="navigation">
                <div id="menu">
                    <ul class="sf-menu sf-js-enabled sf-shadow">
                        <li><a href="/index.php">Home</a> </li>
                        <li><a href="/tutorial/index.php">Tutorial</a> </li>
                        <li class=""><a class="sf-with-ul" href="/examples/index.php">Examples<span class="sf-sub-indicator">»</span><span class="sf-sub-indicator"> »</span></a>
                            <ul style="display: none; visibility: hidden;">
                                <li class=""><a href="/examples/schema3/index.php" class="sf-with-ul">Schema 3<span class="sf-sub-indicator">»</span><span class="sf-sub-indicator"> »</span></a>
                                    <ul style="display: none; visibility: hidden;">
                                        <li><a href="/examples/schema3/compchem/index.php">CompChem</a></li>
                                        <li><a href="/examples/schema3/molecular/index.php">Molecular</a></li>
                                    </ul>
                                </li>
                                <li><a href="/examples/schema24/index.php">Schema 2.4</a> </li>
                            </ul>
                        </li>
                        <li><a href="/tools/index.php">Validator</a> </li>
                        <li class=""><a class="sf-with-ul" href="/schema/index.php">Schema<span class="sf-sub-indicator">»</span><span class="sf-sub-indicator"> »</span></a>
                            <ul style="display: none; visibility: hidden;">
                                <li><a href="/schema/cmllite.php">CMLLite</a></li>
                                <li class=""><a class="sf-with-ul" href="/schema/schema3/index.php">Schema 3<span class="sf-sub-indicator">»</span><span class="sf-sub-indicator"> »</span></a>
                                    <ul style="display: none; visibility: hidden;">
                                        <li><a href="/schema/schema3/index.php">View</a></li>
                                        <li><a href="/schema/schema3/schmea.xsd">Download</a></li>
                                        <li><a href="/examples/schema3/index.php">Examples</a></li>
                                    </ul>
                                </li>
                                <li class=""><a class="sf-with-ul" href="/schema/schema24/index.php">Schema 2.4<span class="sf-sub-indicator">»</span><span class="sf-sub-indicator"> »</span></a>
                                    <ul style="display: none; visibility: hidden;">
                                        <li><a href="/schema/schema24/index.php">View 2.4</a></li>
                                        <li><a href="/schema/schema24/schema.xsd">Download 2.4</a></li>
                                        <li><a href="/examples/schema24/index.php">Examples</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class=""><a class="sf-with-ul" href="/dictionary/index.php">Dictionaries<span class="sf-sub-indicator">»</span><span class="sf-sub-indicator"> »</span></a>
                            <ul style="display: none; visibility: hidden;">
                                <li class=""><a class="sf-with-ul" href="#">menu item<span class="sf-sub-indicator">»</span><span class="sf-sub-indicator"> »</span></a>
                                    <ul style="display: none; visibility: hidden;">
                                        <li><a href="#">menu item</a></li>
                                        <li><a href="#">menu item</a></li>
                                        <li><a href="#">menu item</a></li>
                                    </ul>
                                </li>
                                <li class=""><a class="sf-with-ul" href="#">menu item<span class="sf-sub-indicator">»</span><span class="sf-sub-indicator"> »</span></a>
                                    <ul style="display: none; visibility: hidden;">
                                        <li><a href="#">menu item</a></li>
                                        <li><a href="#">menu item</a></li>
                                        <li><a href="#">menu item</a></li>
                                    </ul>
                                </li>
                                <li class=""><a class="sf-with-ul" href="#">menu item<span class="sf-sub-indicator">»</span><span class="sf-sub-indicator"> »</span></a>
                                    <ul style="display: none; visibility: hidden;">
                                        <li><a href="#">menu item</a></li>
                                        <li><a href="#">menu item</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">menu item</a></li>
                            </ul>
                        </li>
                        <li><a href="/blog/">Blog</a></li>
                        <li class="last"><a class="sf-with-ul" href="/links/index.php">
                            Tools &amp; Links<span class="sf-sub-indicator">»</span><span class="sf-sub-indicator"> »</span></a>
                            <ul style="display: none; visibility: hidden;">
                                <li><a href="/tools/index.php#validator">Validator</a></li>
                                <li><a href="/tools/index.php#jumbo">JUMBO</a></li>
                                <li><a href="/tools/index.php#chem4word">Chem4Word</a></li>
                                <li><a href="/links/bibliography.php">Bibliography</a></li>
                                <li class=""><a class="sf-with-ul" href="/blog/">Blogs<span class="sf-sub-indicator">»</span><span class="sf-sub-indicator"> »</span></a>
                                    <ul style="display: none; visibility: hidden;">
                                        <li><a href="/blog/">The CML Blog</a></li>
                                        <li><a href="http://www.ch.ic.ac.uk/rzepa/blog/">Henry Rzepa</a></li>
                                        <li><a href="http://wwmm.ch.cam.ac.uk/blogs/murrayrust/">Peter MR</a></li>
                                        <li><a href="http://jat45.wordpress.com">Joe Townsend</a></li>
                                    </ul>
                                </li>
                                <li><a href="http://wikipedia.org/wiki/Chemical_Markup_Language">Wikipedia Entry</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div class="clear">
                    </div>
                </div>
            </div>
			<div class="clear" id="breadcrumbs">
				<ul>
					<li><a href="/index.php">CML</a></li>
					<li><a href="/validator/index.html">Validator</a></li>
					<li>Validation Result</li>
				</ul>
			</div>
        </div>
        <div id="content">
            <xsl:call-template name="result-template" />
            <xsl:call-template name="error-template" />
            <xsl:call-template name="warning-template" />
            <xsl:if test="$result = 'VALID'">
                    <xsl:call-template name="valid-template" />
            </xsl:if>
        </div>
		<div class="clear" id="footer">
            <div id="footer-links">
                <ul>
                    <li><a href="mailto:jat45@cam.ac.uk">Contact Us</a></li>
                    <li class="last"><a href="/blog/">Blog</a></li>
                </ul>
            </div>
            <div id="footer-copywrite">
                <p>
                    &#169; J. A. Townsend 2010
                </p>
            </div>
        </div>
    </div>
</body>
</html>
    </xsl:template>

    <xsl:template match="*|@*|text()">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template name="result-template">
        <h1 xmlns="http://www.w3.org/1999/xhtml">
        <xsl:choose>
            <xsl:when test="$result = 'VALID'">
                <xsl:attribute name="class" select="'valid'"/>VALID</xsl:when>
            <xsl:when test="$result = 'WARNINGS'">
                <xsl:attribute name="class" select="'warnings'"/>VALID WITH WARNINGS</xsl:when>
            <xsl:when test="$result = 'INVALID'">
                <xsl:attribute name="class" select="'invalid'"/>INVALID</xsl:when>
        </xsl:choose>
        </h1>
    </xsl:template>


    <xsl:template name="error-template">
        <xsl:variable name="errors" select="//report:error"/>
        <xsl:if test="count($errors) > 0">
            <div id="errors" class="clear" xmlns="http://www.w3.org/1999/xhtml">
                <xsl:call-template name="show-title">
                    <xsl:with-param name="count" select="count($errors)"/>
                    <xsl:with-param name="type">Error</xsl:with-param>
                </xsl:call-template>
                <ul>
                    <xsl:for-each select="$errors">
                        <li>
                            <xsl:call-template name="display-test-type">
                                <xsl:with-param name="test" select="current()" />
                            </xsl:call-template>
                            <p class="description">
                               <xsl:value-of select="."/>
                            </p>
                            <xsl:if test="@location">
                                <p class="location">
                                    Found at:
                                    <xsl:value-of select="@location"/>
                                </p>
                            </xsl:if>
                        </li>
                    </xsl:for-each>
                </ul>
            </div>
        </xsl:if>
    </xsl:template>

    <xsl:template name="warning-template">
        <xsl:variable name="warnings" select="//report:warning"/>
        <xsl:if test="count($warnings) > 0">
            <div id="warnings" class="clear" xmlns="http://www.w3.org/1999/xhtml">
                <xsl:call-template name="show-title">
                    <xsl:with-param name="count" select="count($warnings)"/>
                    <xsl:with-param name="type">Warning</xsl:with-param>
                </xsl:call-template>
                <ul>
                    <xsl:for-each select="$warnings">
                        <li>
                            <xsl:call-template name="display-test-type">
                                <xsl:with-param name="test" select="current()" />
                            </xsl:call-template>
                            <p class="description">
                                <xsl:value-of select="."/>
                            </p>
                            <xsl:if test="@location">
                                <p class="location">
                                    Found at:
                                    <xsl:value-of select="@location"/>
                                </p>
                            </xsl:if>
                        </li>
                    </xsl:for-each>
                </ul>
            </div>
        </xsl:if>
    </xsl:template>
    
    <xsl:template name="valid-template">
         <div id="tests" class="clear" xmlns="http://www.w3.org/1999/xhtml">
             <h2>All checks passed</h2>
         </div>
    </xsl:template>

    <xsl:template name="display-test-type">
        <xsl:param name="test" />
        <h3 xmlns="http://www.w3.org/1999/xhtml">
            <xsl:choose>
                <xsl:when test="local-name($test/..) = 'well-formed-test'">
                    Well-formedness test -
                </xsl:when>
                <xsl:when test="local-name($test/..) = 'schema-validation-test'">
                    Schema conformance -
                </xsl:when>
                <xsl:when test="local-name($test/..) = 'convention-validation-test'">
                    Convention conformance -
                </xsl:when>
                <xsl:when test="local-name($test/..) = 'qname-reachable-test'">
                    Check dictRef values are URLs - 
                </xsl:when>
            </xsl:choose>
        </h3>
    </xsl:template>
    
    <xsl:template name="show-title">
        <xsl:param name="count"/>
        <xsl:param name="type"/>
        <h2 xmlns="http://www.w3.org/1999/xhtml">
            <xsl:choose>
                <xsl:when test="$count = 1">
                    1
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="$type"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$count"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="$type"/>
                    <xsl:text>s</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            found
        </h2>
    </xsl:template>

</xsl:stylesheet>