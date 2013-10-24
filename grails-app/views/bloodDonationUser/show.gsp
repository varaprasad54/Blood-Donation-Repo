
<%@ page import="com.blooddonation.BloodDonationUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bloodDonationUser.label', default: 'BloodDonationUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bloodDonationUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bloodDonationUser" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bloodDonationUser">
			
				<g:if test="${bloodDonationUserInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="bloodDonationUser.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${bloodDonationUserInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="bloodDonationUser.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${bloodDonationUserInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.confirmPassword}">
				<li class="fieldcontain">
					<span id="confirmPassword-label" class="property-label"><g:message code="bloodDonationUser.confirmPassword.label" default="Confirm Password" /></span>
					
						<span class="property-value" aria-labelledby="confirmPassword-label"><g:fieldValue bean="${bloodDonationUserInstance}" field="confirmPassword"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="bloodDonationUser.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${bloodDonationUserInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="bloodDonationUser.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${bloodDonationUserInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.bloodGroup}">
				<li class="fieldcontain">
					<span id="bloodGroup-label" class="property-label"><g:message code="bloodDonationUser.bloodGroup.label" default="Blood Group" /></span>
					
						<span class="property-value" aria-labelledby="bloodGroup-label"><g:fieldValue bean="${bloodDonationUserInstance}" field="bloodGroup"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="bloodDonationUser.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${bloodDonationUserInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="bloodDonationUser.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${bloodDonationUserInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.mobileNumber}">
				<li class="fieldcontain">
					<span id="mobileNumber-label" class="property-label"><g:message code="bloodDonationUser.mobileNumber.label" default="Mobile Number" /></span>
					
						<span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${bloodDonationUserInstance}" field="mobileNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.landlineNumber}">
				<li class="fieldcontain">
					<span id="landlineNumber-label" class="property-label"><g:message code="bloodDonationUser.landlineNumber.label" default="Landline Number" /></span>
					
						<span class="property-value" aria-labelledby="landlineNumber-label"><g:fieldValue bean="${bloodDonationUserInstance}" field="landlineNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.emailId}">
				<li class="fieldcontain">
					<span id="emailId-label" class="property-label"><g:message code="bloodDonationUser.emailId.label" default="Email Id" /></span>
					
						<span class="property-value" aria-labelledby="emailId-label"><g:fieldValue bean="${bloodDonationUserInstance}" field="emailId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="bloodDonationUser.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${bloodDonationUserInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="bloodDonationUser.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${bloodDonationUserInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="bloodDonationUser.district.label" default="District" /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:fieldValue bean="${bloodDonationUserInstance}" field="district"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.availabilityToDonate}">
				<li class="fieldcontain">
					<span id="availabilityToDonate-label" class="property-label"><g:message code="bloodDonationUser.availabilityToDonate.label" default="Availability To Donate" /></span>
					
						<span class="property-value" aria-labelledby="availabilityToDonate-label"><g:fieldValue bean="${bloodDonationUserInstance}" field="availabilityToDonate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="bloodDonationUser.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${bloodDonationUserInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="bloodDonationUser.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${bloodDonationUserInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="bloodDonationUser.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${bloodDonationUserInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="bloodDonationUser.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${bloodDonationUserInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodDonationUserInstance?.registeredDate}">
				<li class="fieldcontain">
					<span id="registeredDate-label" class="property-label"><g:message code="bloodDonationUser.registeredDate.label" default="Registered Date" /></span>
					
						<span class="property-value" aria-labelledby="registeredDate-label"><g:formatDate date="${bloodDonationUserInstance?.registeredDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${bloodDonationUserInstance?.id}" />
					<g:link class="edit" action="edit" id="${bloodDonationUserInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
