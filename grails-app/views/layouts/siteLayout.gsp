<%--
  Created by IntelliJ IDEA.
  User: varapras1
  Date: 10/26/13
  Time: 12:13 PM
  To change this template use File | Settings | File Templates.
--%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>
        <g:layoutTitle default="Donate Blood-Save Life"/>
    </title>
    <meta name="description" content="website description"/>
    <meta name="keywords" content="website keywords, website keywords"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'style.css')}"/>
    <!-- modernizr enables HTML5 elements and feature detects -->
    <script type="text/javascript" src="${resource(dir: 'js', file: 'modernizr-1.5.min.js')}"></script>
    %{-- <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">--}%
    <g:layoutHead>
    %{--<jq:resources/>
    <jqui:resources/>
    <jqgrid:resources/>--}%
    </g:layoutHead>
    <r:layoutResources/>

</head>

<body>
<div id="main">
    <header>
        <div id="logo">
            <div id="logo_text">
                <!-- class="logo_colour", allows you to change the colour of the text -->
                <h1><a href="#">Donate Blood <span class="logo_colour">- Save Life</span></a></h1>

                <h2>Where strangers become life savers.</h2>
            </div>
        </div>
        <nav>
            <ul class="sf-menu" id="nav">
                <li class="selected"><a href="${createLink(uri: '/')}">Home</a></li>
                <li><a href="#">Eligibility for Donation</a>
                    <ul>
                        <li><a href="${createLink(controller: 'home', action: 'candonateblood')}">Who can give Blood</a>
                        </li>
                        <li><a href="${createLink(controller: 'home', action: 'cantdonateblood')}">Who can't give Blood</a>
                        </li>
                    </ul>
                </li>
                <li><a href="#">About Blood</a>
                    <ul>
                        <li><a href="#">Components of Blood</a></li>
                        <li><a href="#">Blood Group basics</a></li>
                    </ul>
                </li>
                <li><a href="${createLink(controller: 'bloodDonorSearch', action: 'index')}">Looking for Blood Donor</a>
                    %{--<ul>--}%
                    %{--<li><a href="#">Drop Down One</a></li>--}%
                    %{--<li><a href="#">Drop Down Two</a>--}%
                    %{--<ul>--}%
                    %{--<li><a href="#">Sub Drop Down One</a></li>--}%
                    %{--<li><a href="#">Sub Drop Down Two</a></li>--}%
                    %{--<li><a href="#">Sub Drop Down Three</a></li>--}%
                    %{--<li><a href="#">Sub Drop Down Four</a></li>--}%
                    %{--<li><a href="#">Sub Drop Down Five</a></li>--}%
                    %{--</ul>--}%
                    %{--</li>--}%
                    %{--<li><a href="#">Drop Down Three</a></li>--}%
                    %{--<li><a href="#">Drop Down Four</a></li>--}%
                    %{--<li><a href="#">Drop Down Five</a></li>--}%
                    %{--</ul>--}%
                </li>
                <li><a href="${createLink(controller: 'bloodDonationRequest', action: 'create')}">Post Blood Request</a>
                </li>
                <li><a href="${createLink(controller: 'home', action: 'contact')}">Contact Us</a></li>
            </ul>
        </nav>
    </header>
    <g:layoutBody/>

    <footer>
        <p>Copyright &copy; BloodDonation | <a href="#">All Rights Reserved</a></p>
    </footer>
</div>

<p>&nbsp;</p>
<!-- javascript at the bottom for fast page loading -->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
<script type="text/javascript" src="js/jquery.sooperfish.js"></script>
<script type="text/javascript" src="js/jquery.kwicks-1.5.1.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#images').kwicks({
            max:600,
            spacing:2
        });
        $('ul.sf-menu').sooperfish();
    });
</script>
</body>
</html>
