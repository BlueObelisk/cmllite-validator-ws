<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-GB" lang="en-GB">
<head profile="http://dublincore.org/documents/dcq-html/">
    <meta content="2010-09-30T15:00:00Z" name="dcterms.created"/>
    <meta content="Joe Townsend, University of Cambridge" name="dcterms.creator"/>
    <meta content="Henry Rzepa, Imperial College London" name="dcterms.contributor"/>
    <meta content="Peter Murray-Rust, University of Cambridge" name="dcterms.contributor"/>
    <meta content="text/html;charset=UTF-8" http-equiv="content-type"/>
    <meta content="CML home page" name="description"/>
    <meta content="CML, schema, xml-cml" name="keywords"/>
    <meta content="index,follow,noodp,noydir" name="robots"/>
    <link rel="stylesheet" type="text/css"
          href="http://yui.yahooapis.com/2.8.1/build/reset-fonts-grids/reset-fonts-grids.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="http://xml-cml.org/css/superfish.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="http://xml-cml.org/css/cml.css"/>
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
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') +
        '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>
    <title>Chemical Markup Language | Validator</title>
</head>

<body>
<div class="page clear" id="wrapper">
    <div id="header">
        <img alt="Chemical Markup Language" src="http://xml-cml.org/images/title.png"/>

        <div id="navigation" class="clear">
            <div id="menu">
                <ul class="sf-menu">
                    <li><a href="http://xml-cml.org//index.php">Home</a></li>
                    <li><a href="http://xml-cml.org//tutorial/index.php" class="sf-with-ul">Tutorial<span class="sf-sub-indicator">»</span></a>
                        <ul>
                            <li><a href="http://xml-cml.org//schema/cmllite.php#conventions" class="sf-with-ul">Conventions<span
                                    class="sf-sub-indicator">»</span></a>
                                <ul>
                                    <li><a href="http://xml-cml.org//convention/molecular/index.php">Molecular</a></li>
                                    <li><a href="http://xml-cml.org//convention/dictionary">Dictionary</a></li>
                                    <li><a href="http://xml-cml.org//convention/cmlcomp/index.php">CmlComp</a></li>
                                </ul>
                            </li>
                            <li><a href="http://xml-cml.org//examples/index.php" class="sf-with-ul">Examples<span class="sf-sub-indicator">»</span></a>
                                <ul>
                                    <li><a href="http://xml-cml.org//examples/schema3/index.php">Schema 3<span
                                            class="sf-sub-indicator">»</span></a>
                                        <ul>
                                            <li><a href="http://xml-cml.org//examples/schema3/molecular/index.php">Molecular</a></li>
                                            <li><a href="http://xml-cml.org//examples/schema3/cmlcomp/index.php">CmlComp</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="http://xml-cml.org//examples/schema24/index.php">Schema 2.4</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="http://validator.xml-cml.org">Validator</a></li>
                    <li><a href="http://xml-cml.org//schema/index.php" class="sf-with-ul">Specifications<span
                            class="sf-sub-indicator">»</span></a>
                        <ul>
                            <li><a href="http://xml-cml.org//schema/cmllite.php">CMLLite</a></li>
                            <li><a href="http://xml-cml.org//schema/schema3/index.php" class="sf-with-ul">Schema 3<span
                                    class="sf-sub-indicator">»</span></a>
                                <ul>
                                    <li><a href="http://xml-cml.org//schema/schema3/index.php">View</a></li>
                                    <li><a href="http://xml-cml.org//schema/schema3/schema.xsd">Download</a></li>
                                    <li><a href="http://xml-cml.org//examples/schema3/index.php">Examples</a></li>
                                </ul>
                            </li>
                            <li><a href="http://xml-cml.org//schema/schema24/index.php" class="sf-with-ul">Schema 2.4<span
                                    class="sf-sub-indicator">»</span></a>
                                <ul>
                                    <li><a href="http://xml-cml.org//schema/schema24/index.php">View 2.4</a></li>
                                    <li><a href="http://xml-cml.org//schema/schema24/schema.xsd">Download 2.4</a></li>
                                    <li><a href="http://xml-cml.org//examples/schema24/index.php">Examples</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="http://www.xml-cml.org/spec/dictionaries">Dictionaries</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="sf-with-ul">Conventions<span class="sf-sub-indicator">»</span></a>
                        <ul>
                            <li>
                                <a href="http://www.xml-cml.org/convention/dictionary">Dictionary</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="http://xml-cml.org//dictionary/index.php" class="sf-with-ul">Dictionaries<span
                            class="sf-sub-indicator">»</span></a>
                        <ul>
                            <li><a href="http://xml-cml.org//dictionary/cml/index.php">CML</a></li>
                            <li><a href="http://xml-cml.org//dictionary/dummy/index.php">Dummy</a></li>
                        </ul>
                    </li>
                    <li class="last"><a href="/tools/index.php" class="sf-with-ul">
                        Tools &amp; Links<span class="sf-sub-indicator">»</span></a>
                        <ul>
                            <li><a href="http://validator.xml-cml.org">Validator</a></li>
                            <li><a href="http://xml-cml.org//tools/index.php#jumbo">JUMBO</a></li>
                            <li><a href="http://xml-cml.org//tools/index.php#chem4word">Chem4Word</a></li>
                            <li><a href="http://www-pmr.ch.cam.ac.uk/wiki/Publications">Bibliography</a></li>
                            <li><a href="/blog/" class="sf-with-ul">Blogs<span class="sf-sub-indicator">»</span></a>
                                <ul>
                                    <li><a href="http://xml-cml.org//blog/">The CML Blog</a></li>
                                    <li><a href="http://www.ch.ic.ac.uk/rzepa/blog/">Henry Rzepa</a></li>
                                    <li><a href="http://wwmm.ch.cam.ac.uk/blogs/murrayrust/">Peter M-R</a></li>
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
                <li><a href="http://xml-cml.org/index.php">CML</a></li>
                <li><a href="http://validator.xml-cml.org/">Validator</a></li>
                <li>Validator</li>
            </ul>
        </div>
    </div>
    <div id="content">
        <p>This validator checks the document you paste in below to determine if ...</p>
        <ol>
            <li>it is well-formed XML</li>
            <li>it conforms to the CML Schema 3</li>
            <li>it conforms to any conventions specified in the document (click <a href="http://xml-cml.org/convention/">here</a> for a list of conventions currently
                checked)
            </li>
            <li>all the prefixes used in <code>dictRef</code>s have been bound</li>
            <li>all the <code>dictRef</code> values are URLs</li>
        </ol>
        <div class="center">
            <form action="/validate" method="post">
                <label for="fragment" title="Paste a complete XML/CML document here">Enter the CML to validate</label>
                <textarea id="fragment" rows="12" cols="100" name="cml"></textarea>
                <input type="submit" value="Submit Query"/>
            </form>
        </div>
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
                &copy; CMLC 2010
            </p>
        </div>
    </div>
</div>
</body>
</html>
