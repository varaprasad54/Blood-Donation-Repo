<%@ page import="com.blooddonation.BloodDonorSearch" %>



<div class="fieldcontain ${hasErrors(bean: bloodDonorSearchInstance, field: 'bloodGroup', 'error')} required">
	<label for="bloodGroup">
		<g:message code="bloodDonorSearch.bloodGroup.label" default="Blood Group" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="bloodGroup" from="${bloodDonorSearchInstance.constraints.bloodGroup.inList}" required="" value="${bloodDonorSearchInstance?.bloodGroup}" valueMessagePrefix="bloodDonorSearch.bloodGroup"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonorSearchInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="bloodDonorSearch.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="state" from="${bloodDonorSearchInstance.constraints.state.inList}" required="" value="${bloodDonorSearchInstance?.state}" valueMessagePrefix="bloodDonorSearch.state"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonorSearchInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="bloodDonorSearch.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="city" from="${bloodDonorSearchInstance.constraints.city.inList}" required="" value="${bloodDonorSearchInstance?.city}" valueMessagePrefix="bloodDonorSearch.city"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodDonorSearchInstance, field: 'district', 'error')} required">
	<label for="district">
		<g:message code="bloodDonorSearch.district.label" default="District" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="district" required="" value="${bloodDonorSearchInstance?.district}"/>
</div>

