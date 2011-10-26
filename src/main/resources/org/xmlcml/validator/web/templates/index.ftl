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
    <link rel="stylesheet" type="text/css" media="screen" href="http://xml-cml.org/style/superfish.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="http://xml-cml.org/style/cml.css"/>
    <link rel="shortcut icon" href="http://xml-cml.org/images/favicon.ico" type="image/x-icon" />
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
        <a href="http://xml-cml.org/index.php">
            <img alt="Chemical Markup Language" src="http://xml-cml.org/images/title.png" />
        </a>
        <div class="clear" id="breadcrumbs">
            <ul>
                <li><a href="http://xml-cml.org/index.php">CML</a></li>
                <li><a href="http://validator.xml-cml.org/">Validator</a></li>
                <li>Input</li>
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
        <p>
            The validator will also give warnings if deprecated constructs are used (e.g. <code>orders</code> should
            not use numeric values).
        </p>
        <div class="center">
            <form action="/validate" method="post">
                <label for="fragment" title="Paste a complete XML/CML document here">Enter the CML to validate</label>
                <textarea id="fragment" rows="16" cols="100" name="cml"></textarea>
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
