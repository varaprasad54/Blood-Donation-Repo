<html>
<head>
<meta name="layout" content="main" />
<jq:resources />
<jqui:resources />
<jqgrid:resources />

<script type="text/javascript">
	$(document).ready(function() 
			{
		<jqgrid:grid
        id="blooddonor"
        url="'${createLink(action: 'listDonors')}'"
        editurl="'${createLink(action: 'save')}'"
        colNames="'First Name', 'Last Name', 'Gender','Blood Group','Mobile','City','State','Email Address', 'id'"
        colModel="{name:'firstName'},
                        {name:'lastName',width:100},
                        {name:'gender',width:60},
                        {name:'bloodGroup', width:50},
                        {name:'mobileNumber',search:false},
                        {name:'city', width:80},
                        {name:'state', width:90},
                        {name:'emailId', editable: true},
                        {name:'id', hidden: true}"
        sortname="'lastName'"
        rowNum="4"
        caption="'Blood Donor List'"
        height="500"
        autowidth="true"
        scrollOffset="0"
        viewrecords="true"
        showPager="true"
        datatype="'json'">
        <jqgrid:filterToolbar id="blooddonor" searchOnEnter="false" />
        <jqgrid:navigation id="blooddonor" search="true" refresh="true" />
        <jqgrid:resize id="blooddonor" resizeOffset="-2" />
 </jqgrid:grid>
	});
</script>
</head>
<body>
	<jqgrid:wrapper id="blooddonor" />
</body>
</html>