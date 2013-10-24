<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'bloodDonorSearch.label', default: 'BloodDonorSearch')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<g:form name="donorsearch" action="search"
		controller="bloodDonorSearch">
		<g:render template="donorsearchform" />
		<fieldset class="buttons">
			<g:submitButton name="Search"
				value="${message(code: 'default.button.search.label', default: 'Search')}" />
		</fieldset>
	</g:form>
</body>
</html>