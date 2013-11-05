<%@ page import="com.blooddonation.BloodDonationRequest" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'bloodDonationRequest.label', default: 'BloodDonationRequest')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-bloodDonationRequest" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-bloodDonationRequest" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list bloodDonationRequest">

        <g:if test="${bloodDonationRequestInstance?.requestId}">
            <li class="fieldcontain">
                <span id="requestId-label" class="property-label"><g:message code="bloodDonationRequest.requestId.label"
                                                                             default="Request Id"/></span>

                <span class="property-value" aria-labelledby="requestId-label"><g:fieldValue
                        bean="${bloodDonationRequestInstance}" field="requestId"/></span>

            </li>
        </g:if>

        <g:if test="${bloodDonationRequestInstance?.patientFullName}">
            <li class="fieldcontain">
                <span id="patientFullName-label" class="property-label"><g:message
                        code="bloodDonationRequest.patientFullName.label" default="Patient Full Name"/></span>

                <span class="property-value" aria-labelledby="patientFullName-label"><g:fieldValue
                        bean="${bloodDonationRequestInstance}" field="patientFullName"/></span>

            </li>
        </g:if>

        <g:if test="${bloodDonationRequestInstance?.patientBloodGroup}">
            <li class="fieldcontain">
                <span id="patientBloodGroup-label" class="property-label"><g:message
                        code="bloodDonationRequest.patientBloodGroup.label" default="Patient Blood Group"/></span>

                <span class="property-value" aria-labelledby="patientBloodGroup-label"><g:fieldValue
                        bean="${bloodDonationRequestInstance}" field="patientBloodGroup"/></span>

            </li>
        </g:if>

        <g:if test="${bloodDonationRequestInstance?.patientAge}">
            <li class="fieldcontain">
                <span id="patientAge-label" class="property-label"><g:message
                        code="bloodDonationRequest.patientAge.label" default="Patient Age"/></span>

                <span class="property-value" aria-labelledby="patientAge-label"><g:fieldValue
                        bean="${bloodDonationRequestInstance}" field="patientAge"/></span>

            </li>
        </g:if>

        <g:if test="${bloodDonationRequestInstance?.requiredDate}">
            <li class="fieldcontain">
                <span id="requiredDate-label" class="property-label"><g:message
                        code="bloodDonationRequest.requiredDate.label" default="Required Date"/></span>

                <span class="property-value" aria-labelledby="requiredDate-label"><g:formatDate
                        date="${bloodDonationRequestInstance?.requiredDate}"/></span>

            </li>
        </g:if>

        <g:if test="${bloodDonationRequestInstance?.numberofUnits}">
            <li class="fieldcontain">
                <span id="numberofUnits-label" class="property-label"><g:message
                        code="bloodDonationRequest.numberofUnits.label" default="Numberof Units"/></span>

                <span class="property-value" aria-labelledby="numberofUnits-label"><g:fieldValue
                        bean="${bloodDonationRequestInstance}" field="numberofUnits"/></span>

            </li>
        </g:if>

        <g:if test="${bloodDonationRequestInstance?.mobileNumber}">
            <li class="fieldcontain">
                <span id="mobileNumber-label" class="property-label"><g:message
                        code="bloodDonationRequest.mobileNumber.label" default="Mobile Number"/></span>

                <span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue
                        bean="${bloodDonationRequestInstance}" field="mobileNumber"/></span>

            </li>
        </g:if>

        <g:if test="${bloodDonationRequestInstance?.landLineNumber}">
            <li class="fieldcontain">
                <span id="landLineNumber-label" class="property-label"><g:message
                        code="bloodDonationRequest.landLineNumber.label" default="Land Line Number"/></span>

                <span class="property-value" aria-labelledby="landLineNumber-label"><g:fieldValue
                        bean="${bloodDonationRequestInstance}" field="landLineNumber"/></span>

            </li>
        </g:if>

        <g:if test="${bloodDonationRequestInstance?.hospitalName}">
            <li class="fieldcontain">
                <span id="hospitalName-label" class="property-label"><g:message
                        code="bloodDonationRequest.hospitalName.label" default="Hospital Name"/></span>

                <span class="property-value" aria-labelledby="hospitalName-label"><g:fieldValue
                        bean="${bloodDonationRequestInstance}" field="hospitalName"/></span>

            </li>
        </g:if>

        <g:if test="${bloodDonationRequestInstance?.hospitalCityName}">
            <li class="fieldcontain">
                <span id="hospitalCityName-label" class="property-label"><g:message
                        code="bloodDonationRequest.hospitalCityName.label" default="Hospital City Name"/></span>

                <span class="property-value" aria-labelledby="hospitalCityName-label"><g:fieldValue
                        bean="${bloodDonationRequestInstance}" field="hospitalCityName"/></span>

            </li>
        </g:if>

        <g:if test="${bloodDonationRequestInstance?.hospitalStateName}">
            <li class="fieldcontain">
                <span id="hospitalStateName-label" class="property-label"><g:message
                        code="bloodDonationRequest.hospitalStateName.label" default="Hospital State Name"/></span>

                <span class="property-value" aria-labelledby="hospitalStateName-label"><g:fieldValue
                        bean="${bloodDonationRequestInstance}" field="hospitalStateName"/></span>

            </li>
        </g:if>

        <g:if test="${bloodDonationRequestInstance?.patientAddress}">
            <li class="fieldcontain">
                <span id="patientAddress-label" class="property-label"><g:message
                        code="bloodDonationRequest.patientAddress.label" default="Patient Address"/></span>

                <span class="property-value" aria-labelledby="patientAddress-label"><g:fieldValue
                        bean="${bloodDonationRequestInstance}" field="patientAddress"/></span>

            </li>
        </g:if>

        <g:if test="${bloodDonationRequestInstance?.purpose}">
            <li class="fieldcontain">
                <span id="purpose-label" class="property-label"><g:message code="bloodDonationRequest.purpose.label"
                                                                           default="Purpose"/></span>

                <span class="property-value" aria-labelledby="purpose-label"><g:fieldValue
                        bean="${bloodDonationRequestInstance}" field="purpose"/></span>

            </li>
        </g:if>

        <g:if test="${bloodDonationRequestInstance?.pastDate}">
            <li class="fieldcontain">
                <span id="pastDate-label" class="property-label"><g:message code="bloodDonationRequest.pastDate.label"
                                                                            default="Past Date"/></span>

                <span class="property-value" aria-labelledby="pastDate-label"><g:formatDate
                        date="${bloodDonationRequestInstance?.pastDate}"/></span>

            </li>
        </g:if>

        <g:if test="${bloodDonationRequestInstance?.takeninPast}">
            <li class="fieldcontain">
                <span id="takeninPast-label" class="property-label"><g:message
                        code="bloodDonationRequest.takeninPast.label" default="Takenin Past"/></span>

                <span class="property-value" aria-labelledby="takeninPast-label"><g:formatBoolean
                        boolean="${bloodDonationRequestInstance?.takeninPast}"/></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${bloodDonationRequestInstance?.id}"/>
            <g:link class="edit" action="edit" id="${bloodDonationRequestInstance?.id}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
