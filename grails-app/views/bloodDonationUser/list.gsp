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
        url="'${createLink(action: 'listDonors')}'"
        editurl="'${createLink(action: 'save')}'"
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
<div id="site_content">
    <div class="content">
        <jqgrid:wrapper id="blooddonor"/>
    </div>
</div>
</body>
</html>