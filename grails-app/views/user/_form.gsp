<%@ page import="com.blooddonation.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="user.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${userInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="user.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${userInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="15" pattern="${userInstance.constraints.username.matches}" required="" value="${userInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" maxlength="15" pattern="${userInstance.constraints.password.matches}" required="" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'confirmPassword', 'error')} required">
	<label for="confirmPassword">
		<g:message code="user.confirmPassword.label" default="Confirm Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="confirmPassword" required="" value="${userInstance?.confirmPassword}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'bloodGroup', 'error')} required">
	<label for="bloodGroup">
		<g:message code="user.bloodGroup.label" default="Blood Group" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="bloodGroup" from="${userInstance.constraints.bloodGroup.inList}" required="" value="${userInstance?.bloodGroup}" valueMessagePrefix="user.bloodGroup"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="user.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${userInstance.constraints.gender.inList}" required="" value="${userInstance?.gender}" valueMessagePrefix="user.gender"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'dateOfBirth', 'error')} required">
	<label for="dateOfBirth">
		<g:message code="user.dateOfBirth.label" default="Date Of Birth" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfBirth" precision="day"  value="${userInstance?.dateOfBirth}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'mobileNumber', 'error')} required">
	<label for="mobileNumber">
		<g:message code="user.mobileNumber.label" default="Mobile Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobileNumber" required="" value="${userInstance?.mobileNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'landlineNumber', 'error')} ">
	<label for="landlineNumber">
		<g:message code="user.landlineNumber.label" default="Landline Number" />
		
	</label>
	<g:textField name="landlineNumber" value="${userInstance?.landlineNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emailId', 'error')} required">
	<label for="emailId">
		<g:message code="user.emailId.label" default="Email Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="emailId" required="" value="${userInstance?.emailId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="user.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="state" from="${userInstance.constraints.state.inList}" required="" value="${userInstance?.state}" valueMessagePrefix="user.state"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="user.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="city" from="${userInstance.constraints.city.inList}" required="" value="${userInstance?.city}" valueMessagePrefix="user.city"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'district', 'error')} required">
	<label for="district">
		<g:message code="user.district.label" default="District" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="district" from="${userInstance.constraints.district.inList}" required="" value="${userInstance?.district}" valueMessagePrefix="user.district"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="user.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="user.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${userInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="user.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'registeredDate', 'error')} required">
	<label for="registeredDate">
		<g:message code="user.registeredDate.label" default="Registered Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="registeredDate" precision="day"  value="${userInstance?.registeredDate}"  />
</div>

