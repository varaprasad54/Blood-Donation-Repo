%{--<%----}%
%{--Created by IntelliJ IDEA.--}%
%{--User: varapras1--}%
%{--Date: 11/2/13--}%
%{--Time: 12:37 PM--}%
%{--To change this template use File | Settings | File Templates.--}%
%{----%>--}%

%{--<%@ page contentType="text/html;charset=UTF-8" %>--}%
%{--<html>--}%
%{--<head>--}%
%{--<meta content="siteLayout" name="layout"/>--}%
%{--<jq:resources/>--}%
%{--<jqui:resources/>--}%
%{--<jqgrid:resources/>--}%

%{--<script type="text/javascript">--}%
%{--$(document).ready(function () {--}%

%{--<jqgrid:grid--}%
%{--id="blooddonor"--}%
%{--url="'${createLink(action: 'listDonors')}'"--}%
%{--editurl="'${createLink(action: 'save')}'"--}%
%{--colNames="'First Name', 'Last Name', 'Gender','Blood Group','Mobile','City','State','Email Address', 'id'"--}%
%{--colModel="{name:'firstName'},--}%
%{--{name:'lastName'},--}%
%{--{name:'gender'},--}%
%{--{name:'bloodGroup'},--}%
%{--{name:'mobileNumber',search:false},--}%
%{--{name:'city'},--}%
%{--{name:'state'},--}%
%{--{name:'emailId'},--}%
%{--{name:'id', hidden: true}"--}%
%{--sortname="'lastName'"--}%
%{--rowNum="2"--}%
%{--caption="'Search for the Blood Donors here'"--}%
%{--height="300"--}%
%{--autowidth = "false"--}%
%{--width="1000"--}%
%{--scrollOffset="0"--}%
%{--viewrecords="true"--}%
%{--showPager="true"--}%
%{--datatype="'json'">--}%
%{--<jqgrid:filterToolbar id="blooddonor" searchOnEnter="false" />--}%
%{--<jqgrid:navigation id="blooddonor" search="true" refresh="true" />--}%
%{--<jqgrid:resize id="blooddonor" resizeOffset="-2" />--}%
%{--</jqgrid:grid>--}%
%{--//            $('.ui-search-toolbar').hide();--}%
%{--});--}%

%{--</script>--}%
%{--</head>--}%

%{--<body>--}%
%{--<%@ page import="com.blooddonation.BloodDonorSearch" %>--}%

%{--<div id="site_content">--}%

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

%{--<div class="content">--}%
%{--<h1>Please fill the below details:</h1>--}%

%{--<form id="contact" action="" method="post">--}%

%{--<div class="fieldcontain ${hasErrors(bean: bloodDonorSearchInstance, field: 'bloodGroup', 'error')} required">--}%
%{--<label for="bloodGroup">--}%
%{--<g:message code="bloodDonorSearch.bloodGroup.label" default="Blood Group"/>--}%
%{--<span class="required-indicator">*</span>--}%
%{--</label>--}%
%{--<g:select name="bloodGroup" from="${bloodDonorSearchInstance.constraints.bloodGroup.inList}" required=""--}%
%{--value="${bloodDonorSearchInstance?.bloodGroup}"--}%
%{--valueMessagePrefix="bloodDonorSearch.bloodGroup"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: bloodDonorSearchInstance, field: 'state', 'error')} required">--}%
%{--<label for="state">--}%
%{--<g:message code="bloodDonorSearch.state.label" default="State"/>--}%
%{--<span class="required-indicator">*</span>--}%
%{--</label>--}%
%{--<g:select name="state" from="${bloodDonorSearchInstance.constraints.state.inList}" required=""--}%
%{--value="${bloodDonorSearchInstance?.state}" valueMessagePrefix="bloodDonorSearch.state"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: bloodDonorSearchInstance, field: 'city', 'error')} required">--}%
%{--<label for="city">--}%
%{--<g:message code="bloodDonorSearch.city.label" default="City"/>--}%
%{--<span class="required-indicator">*</span>--}%
%{--</label>--}%
%{--<g:select name="city" from="${bloodDonorSearchInstance.constraints.city.inList}" required=""--}%
%{--value="${bloodDonorSearchInstance?.city}" valueMessagePrefix="bloodDonorSearch.city"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: bloodDonorSearchInstance, field: 'district', 'error')} required">--}%
%{--<label for="district">--}%
%{--<g:message code="bloodDonorSearch.district.label" default="District"/>--}%
%{--<span class="required-indicator">*</span>--}%
%{--</label>--}%
%{--<g:textField name="district" required="" value="${bloodDonorSearchInstance?.district}"/>--}%
%{--</div>--}%
%{--</form>--}%
%{--<jqgrid:wrapper id="blooddonor"/>--}%
%{--</div>--}%
%{--</div>--}%
%{--</body>--}%
%{--</html>--}%
<html>
<head>
    <meta name="layout" content="siteLayout"/>
    <jq:resources/>
    <jqui:resources/>
    <jqgrid:resources/>

    <script type="text/javascript">
        $(document).ready(function () {

            <jqgrid:grid
        id="blooddonor"
        url="'${createLink(controller: 'bloodDonationUser', action: 'listDonors')}'"
        editurl="'${createLink('bloodDonationUser',action: 'save')}'"
        colNames="'First Name', 'Last Name', 'Gender','Blood Group','Mobile','City','State','Email Address', 'id'"
        colModel="{name:'firstName'},
                        {name:'lastName'},
                        {name:'gender'},
                        {name:'bloodGroup'},
                        {name:'mobileNumber',search:false},
                        {name:'city'},
                        {name:'state'},
                        {name:'emailId'},
                        {name:'id', hidden: true}"
        sortname="'lastName'"
        rowNum="2"
        caption="'Search for the Blood Donors here'"
        height="300"
        autowidth = "false"
        width="1000"
        scrollOffset="0"
        viewrecords="true"
        showPager="true"
        datatype="'json'">
            <jqgrid:filterToolbar id="blooddonor" searchOnEnter="false" />
            <jqgrid:navigation id="blooddonor" search="true" refresh="true" />
            <jqgrid:resize id="blooddonor" resizeOffset="-2" />
            </jqgrid:grid>
//            $('.ui-search-toolbar').hide();
        });

    </script>
</head>

<body>

<jqgrid:wrapper id="blooddonor"/>
</body>
</html>