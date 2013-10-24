<%@ page import="com.blooddonation.BloodDonationUser" %>
<head>
<meta name="layout" content="main" />
<jq:resources />
<jqui:resources />
<jqgrid:resources />

<script type="text/javascript">
	$(document).ready(function()
			{
             $('#dateOfBirth').datepicker({
                 "changeMonth":true,
                 "changeYear":true
             });
			});
			</script>
</head>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="bloodDonationUser.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="15" pattern="${bloodDonationUserInstance.constraints.username.matches}" required="" value="${bloodDonationUserInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="bloodDonationUser.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" maxlength="15" pattern="${bloodDonationUserInstance.constraints.password.matches}" required="" value="${bloodDonationUserInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'confirmPassword', 'error')} required">
	<label for="confirmPassword">
		<g:message code="bloodDonationUser.confirmPassword.label" default="Confirm Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="confirmPassword" required="" value="${bloodDonationUserInstance?.confirmPassword}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="bloodDonationUser.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${bloodDonationUserInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="bloodDonationUser.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${bloodDonationUserInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'bloodGroup', 'error')} required">
	<label for="bloodGroup">
		<g:message code="bloodDonationUser.bloodGroup.label" default="Blood Group" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="bloodGroup" from="${bloodDonationUserInstance.constraints.bloodGroup.inList}" required="" value="${bloodDonationUserInstance?.bloodGroup}" valueMessagePrefix="bloodDonationUser.bloodGroup"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="bloodDonationUser.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${bloodDonationUserInstance.constraints.gender.inList}" required="" value="${bloodDonationUserInstance?.gender}" valueMessagePrefix="bloodDonationUser.gender"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'dateOfBirth', 'error')} required">
	<label for="dateOfBirth">
		<g:message code="bloodDonationUser.dateOfBirth.label" default="Date Of Birth" />
		<span class="required-indicator">*</span>
	</label>
	%{--<g:datePicker name="dateOfBirth" precision="day"  value="${bloodDonationUserInstance?.dateOfBirth}"  />--}%
    <g:textField name="dateOfBirth" />
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'mobileNumber', 'error')} required">
	<label for="mobileNumber">
		<g:message code="bloodDonationUser.mobileNumber.label" default="Mobile Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobileNumber" required="" value="${bloodDonationUserInstance?.mobileNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'landlineNumber', 'error')} ">
	<label for="landlineNumber">
		<g:message code="bloodDonationUser.landlineNumber.label" default="Landline Number" />
		
	</label>
	<g:textField name="landlineNumber" value="${bloodDonationUserInstance?.landlineNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'emailId', 'error')} required">
	<label for="emailId">
		<g:message code="bloodDonationUser.emailId.label" default="Email Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="emailId" required="" value="${bloodDonationUserInstance?.emailId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="bloodDonationUser.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="state" from="${bloodDonationUserInstance.constraints.state.inList}" required="" value="${bloodDonationUserInstance?.state}" valueMessagePrefix="bloodDonationUser.state"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="bloodDonationUser.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="city" from="${bloodDonationUserInstance.constraints.city.inList}" required="" value="${bloodDonationUserInstance?.city}" valueMessagePrefix="bloodDonationUser.city"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'district', 'error')} required">
	<label for="district">
		<g:message code="bloodDonationUser.district.label" default="District" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="district" required="" value="${bloodDonationUserInstance?.district}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'availabilityToDonate', 'error')} required">
	<label for="availabilityToDonate">
		<g:message code="bloodDonationUser.availabilityToDonate.label" default="Availability To Donate" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="availabilityToDonate" from="${bloodDonationUserInstance.constraints.availabilityToDonate.inList}" required="" value="${bloodDonationUserInstance?.availabilityToDonate}" valueMessagePrefix="bloodDonationUser.availabilityToDonate"/>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="bloodDonationUser.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${bloodDonationUserInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="bloodDonationUser.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${bloodDonationUserInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="bloodDonationUser.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${bloodDonationUserInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="bloodDonationUser.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${bloodDonationUserInstance?.passwordExpired}" />
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: bloodDonationUserInstance, field: 'registeredDate', 'error')} required">
	<label for="registeredDate">
		<g:message code="bloodDonationUser.registeredDate.label" default="Registered Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="registeredDate" precision="day"  value="${bloodDonationUserInstance?.registeredDate}"  />
</div>--}%

