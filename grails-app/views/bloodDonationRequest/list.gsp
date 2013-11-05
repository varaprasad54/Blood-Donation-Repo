
<%@ page import="com.blooddonation.BloodDonationRequest" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bloodDonationRequest.label', default: 'BloodDonationRequest')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-bloodDonationRequest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-bloodDonationRequest" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="requestId" title="${message(code: 'bloodDonationRequest.requestId.label', default: 'Request Id')}" />
					
						<g:sortableColumn property="patientFullName" title="${message(code: 'bloodDonationRequest.patientFullName.label', default: 'Patient Full Name')}" />
					
						<g:sortableColumn property="patientBloodGroup" title="${message(code: 'bloodDonationRequest.patientBloodGroup.label', default: 'Patient Blood Group')}" />
					
						<g:sortableColumn property="patientAge" title="${message(code: 'bloodDonationRequest.patientAge.label', default: 'Patient Age')}" />
					
						<g:sortableColumn property="requiredDate" title="${message(code: 'bloodDonationRequest.requiredDate.label', default: 'Required Date')}" />
					
						<g:sortableColumn property="numberofUnits" title="${message(code: 'bloodDonationRequest.numberofUnits.label', default: 'Numberof Units')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bloodDonationRequestInstanceList}" status="i" var="bloodDonationRequestInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bloodDonationRequestInstance.id}">${fieldValue(bean: bloodDonationRequestInstance, field: "requestId")}</g:link></td>
					
						<td>${fieldValue(bean: bloodDonationRequestInstance, field: "patientFullName")}</td>
					
						<td>${fieldValue(bean: bloodDonationRequestInstance, field: "patientBloodGroup")}</td>
					
						<td>${fieldValue(bean: bloodDonationRequestInstance, field: "patientAge")}</td>
					
						<td><g:formatDate date="${bloodDonationRequestInstance.requiredDate}" /></td>
					
						<td>${fieldValue(bean: bloodDonationRequestInstance, field: "numberofUnits")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bloodDonationRequestInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
