<%@ page import="com.blooddonation.BloodDonationUser" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="siteLayout"/>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    %{--<link rel="stylesheet" href="/resources/demos/style.css"/>--}%
    <script type="text/javascript">
        $(document).ready(function () {
            $('#dateOfBirth').datepicker(
                    {
                        changeMonth:true,
                        changeYear:true
                    }
            );
        });
    </script>
    <style type="text/css">
    table.gridtable {
        font-family: verdana, arial, sans-serif;
        font-size: 15px;
        color: #333333;
        border-width: 1px;
        border-color: #666666;
        border-collapse: collapse;
        width: 100%;
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
%{--<div class="content">--}%
<br/>
<h1>New User (Life Saver) Registration</h1>
<g:if test="${flash.message}">
    <div class="message" role="status">
        ${flash.message}
    </div>
</g:if>
<g:hasErrors bean="${bloodDonationUserInstance}">
    <ul class="errors" role="alert">
        <g:eachError bean="${bloodDonationUserInstance}" var="error">
            <li
                <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
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
            <g:submitButton name="register" value="Register"/>
            <input type="button" value="cancel">
        </div>
    </fieldset>
</g:form>
%{--</div>--}%
</body>

