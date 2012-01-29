<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:report="http://www.xml-cml.org/report/"
        >
    <xsl:output method="html" omit-xml-declaration="yes"
                standalone="yes" indent="yes"/>

    <xsl:param name="result">INVALID</xsl:param>

    <xsl:template match="/">
        <html>
            <head>

                <link rel="stylesheet" type="text/css" href="http://www.xml-cml.org/common/style/reset-fonts-grids.css" />
                <link rel="stylesheet" type="text/css" media="screen" href="http://www.xml-cml.org/common/style/superfish.css" />
                <link rel="stylesheet" type="text/css" media="screen" href="http://www.xml-cml.org/common/style/cml.css" />
                <script type="text/javascript" src="http://www.xml-cml.org/common/js/jquery-1.2.6.min.js"></script>
                <script type="text/javascript" src="http://www.xml-cml.org/common/js/hoverIntent.js"></script>
                <script type="text/javascript" src="http://www.xml-cml.org/common/js/superfish.js"></script>
                <script type="text/javascript" src="http://www.xml-cml.org/common/js/XMLDisplay.js"></script>
                <script type="text/javascript">
                    $(document).ready(function () {
                        $("ul.sf-menu").superfish();
                    });
                </script>

                <!-- Syntax highlighter -->
                <script type="text/javascript" src="http://www.xml-cml.org/common/js/syntaxhighlighter/script/shCore.js"></script>
                <script type="text/javascript" src="http://www.xml-cml.org/common/js/syntaxhighlighter/script/shBrushXml.js"></script>
                <link rel="stylesheet" type="text/css" href="http://www.xml-cml.org/common/js/syntaxhighlighter/style/shCore.css"/>
                <link rel="stylesheet" type="text/css" href="http://www.xml-cml.org/common/js/syntaxhighlighter/style/shCoreDefault.css"/>
                <script type="text/javascript">
                    SyntaxHighlighter.all()
                </script>
                <title>Chemical Markup Language | Validator Result</title>
            </head>
            <body>
                <div class="page clear" id="wrapper">
                    <div id="header">
                        <a href="http://www.xml-cml.org/">
                            <img alt="Chemical Markup Language" src="http://www.xml-cml.org/common/images/title.png" />
                        </a>
                        <div class="clear" id="breadcrumbs">
                            <ul>
                                <li><a href="http://www.xml-cml.org/">CML</a></li>
                                <li><a href="http://validator.xml-cml.org/">Validator</a></li>
                                <li>Result</li>
                            </ul>
                        </div>
                    </div>

                    <div id="content">
                        <xsl:call-template name="result-template"/>
                        <xsl:call-template name="error-template"/>
                        <xsl:call-template name="warning-template"/>
                        <xsl:if test="$result = 'VALID'">
                            <xsl:call-template name="valid-template"/>
                        </xsl:if>
                        <xsl:call-template name="info-template" />
                    </div>

                    <div class="clear" id="footer">
                        <div id="footer-links">
                            <ul>
                                <li><a href="mailto:pm286@cam.ac.uk">Contact Us</a></li>
                            </ul>
                        </div>
                        <div id="footer-copywrite">
                            <p>
                                Copyright CMLC 2010-2012
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
                    <xsl:attribute name="class" select="'valid'"/>VALID
                </xsl:when>
                <xsl:when test="$result = 'WARNINGS'">
                    <xsl:attribute name="class" select="'warnings'"/>VALID WITH WARNINGS
                </xsl:when>
                <xsl:when test="$result = 'INVALID'">
                    <xsl:attribute name="class" select="'invalid'"/>INVALID
                </xsl:when>
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
                                <xsl:with-param name="test" select="current()"/>
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
                                <xsl:with-param name="test" select="current()"/>
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
            <ul>
            <xsl:for-each select="//report:valid">
                 <li>
                     <xsl:value-of select="current()" />
                 </li>
            </xsl:for-each>
            </ul>
        </div>
    </xsl:template>

    <xsl:template name="info-template">
            <xsl:variable name="infos" select="//report:info"/>
            <xsl:if test="count($infos) > 0">
                <div id="info" class="clear" xmlns="http://www.w3.org/1999/xhtml">
                <h3>The following information may be useful</h3>
                     <xsl:for-each select="$infos">
                         <li>
                              <p class="description">
                                  <xsl:value-of select="." />
                              </p>
                             <xsl:if test="@location">
                                 <p class="location">
                                    Found at: <xsl:value-of select="@location" />
                                 </p>
                             </xsl:if>
                         </li>
                     </xsl:for-each>
                 <ul>

                 </ul>
                </div>
            </xsl:if>
    </xsl:template>

    <xsl:template name="display-test-type">
        <xsl:param name="test"/>
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