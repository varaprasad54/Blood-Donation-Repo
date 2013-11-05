<%@ page import="com.blooddonation.BloodDonationRequest" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="siteLayout">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <style type="text/css">
    table.gridtable {
        font-family: verdana, arial, sans-serif;
        font-size: 15px;
        color: #333333;
        border-width:0px;
        border-color: #666666;
        border: 1px solid #000000;
        background: #ffffff;
        width: 300px;
        display: block;
        -webkit-border-radius: 0px;
        -moz-border-radius: 0px;
        border-radius: 0px;
        box-shadow: 0px 0px 0px #dadada;
    }

    table.gridtable th {
        border-width: 1px;
        padding: 8px;
        border-style: solid;
        border-color: #666666;
        background-color: #dedede;
    }

    table.gridtable td {
        border-width: 1px;
        padding: 8px;
        border-style: solid;
        border-color: #666666;
        background-color: #add8e6;
    }
    </style>
</head>

<body>
<div id="site_content">

    %{--<div id="sidebar_container">--}%
    %{--<div class="sidebar">--}%
    %{--<h3>Latest News</h3>--}%
    %{--<h4>New Website Launched</h4>--}%
    %{--<h5>January 1st, 2012</h5>--}%

    %{--<p>2012 sees the redesign of our website. Take a look around and let us know what you think.<br/><a--}%
    %{--href="#">Read more</a></p>--}%
    %{--<h4>20% Discount</h4>--}%
    %{--<h5>March 1st, 2012</h5>--}%

    %{--<p>We are offering a 20% discount to all new customers.<br/><a href="#">Read more</a></p>--}%
    %{--</div>--}%
    %{--</div>--}%

    <div class="content">

        <h1>Request for Blood Donation :</h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${bloodDonationRequestInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${bloodDonationRequestInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                            error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form action="save">
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <fieldset class="buttons">
                <div class="center">
                    <g:submitButton name="create" class="save"
                                    value="Send Request"/>
                    <input type="button" value="cancel">
                </div>
            </fieldset>

            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
