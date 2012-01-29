<!DOCTYPE html>
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

    <title>Chemical Markup Language | Validator</title>
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
            <li><a href="mailto:pm286@cam.ac.uk">Contact Us</a></li>
        </ul>
    </div>
    <div id="footer-copywrite">
        <p>
            &copy; CMLC 2010-2012
        </p>
    </div>
</div>

</div>
</body>
</html>
