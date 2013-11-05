<%@ page import="com.blooddonation.BloodDonationRequest" %>
<script type="text/javascript">

    $(document).ready(function () {
        $('#requiredDate,#pastDate').datepicker(
                {
                    changeYear:true,
                    changeMonth:true
                }
        );
    });

</script>

<g:hiddenField name="requestId" value="${bloodDonationRequestInstance?.requestId}"/>

<table class="gridTable">
    <tr><td>
        <table class="gridTable">
            <tr><td>
                <div class="fieldcontain ${hasErrors(bean: bloodDonationRequestInstance, field: 'patientFullName', 'error')} required">
                    <label for="patientFullName">
                        <g:message code="bloodDonationRequest.patientFullName.label" default="Patient Full Name"/>
                        <span class="required-indicator">*</span>
                    </label>
                    <g:textField name="patientFullName" required=""
                                 value="${bloodDonationRequestInstance?.patientFullName}"/>
                </div>
            </td></tr>
            <tr><td>
                <div class="fieldcontain ${hasErrors(bean: bloodDonationRequestInstance, field: 'patientBloodGroup', 'error')} required">
                    <label for="patientBloodGroup">
                        <g:message code="bloodDonationRequest.patientBloodGroup.label"
                                   default="Patient Blood Group"/>
                        <span class="required-indicator">*</span>
                    </label>
                    <g:select name="patientBloodGroup"
                              from="${bloodDonationRequestInstance.constraints.patientBloodGroup.inList}"
                              required="" value="${bloodDonationRequestInstance?.patientBloodGroup}"
                              valueMessagePrefix="bloodDonationRequest.patientBloodGroup"/>
                </div>
            </td></tr>
            <tr><td>
                <div class="fieldcontain ${hasErrors(bean: bloodDonationRequestInstance, field: 'patientAge', 'error')} required">
                    <label for="patientAge">
                        <g:message code="bloodDonationRequest.patientAge.label" default="Patient Age"/>
                        <span class="required-indicator">*</span>
                    </label>
                    <g:field name="patientAge" type="number" value="${bloodDonationRequestInstance.patientAge}"
                             required=""/>
                </div>
            </td></tr>
            <tr><td>
                <div class="fieldcontain ${hasErrors(bean: bloodDonationRequestInstance, field: 'requiredDate', 'error')} required">
                    <label for="requiredDate">
                        <g:message code="bloodDonationRequest.requiredDate.label" default="Required Date"/>
                        <span class="required-indicator">*</span>
                    </label>
                    <g:textField name="requiredDate" precision="day"
                                 value="${bloodDonationRequestInstance?.requiredDate}"/>
                </div>
            </td></tr>
            <tr><td>
                <div class="fieldcontain ${hasErrors(bean: bloodDonationRequestInstance, field: 'numberofUnits', 'error')} required">
                    <label for="numberofUnits">
                        <g:message code="bloodDonationRequest.numberofUnits.label" default="Numberof Units"/>
                        <span class="required-indicator">*</span>
                    </label>
                    <g:field name="numberofUnits" type="number" min="1" max="20"
                             value="${bloodDonationRequestInstance.numberofUnits}"
                             required=""/>
                </div>
            </td></tr>
            <tr><td>
                <div class="fieldcontain ${hasErrors(bean: bloodDonationRequestInstance, field: 'mobileNumber', 'error')} required">
                    <label for="mobileNumber">
                        <g:message code="bloodDonationRequest.mobileNumber.label" default="Mobile Number"/>
                        <span class="required-indicator">*</span>
                    </label>
                    <g:textField name="mobileNumber" required=""
                                 value="${bloodDonationRequestInstance?.mobileNumber}"/>
                </div>
            </td></tr>
            <tr><td>
                <div class="fieldcontain ${hasErrors(bean: bloodDonationRequestInstance, field: 'landLineNumber', 'error')} required">
                    <label for="landLineNumber">
                        <g:message code="bloodDonationRequest.landLineNumber.label" default="Land Line Number"/>
                        <span class="required-indicator">*</span>
                    </label>
                    <g:textField name="landLineNumber" required=""
                                 value="${bloodDonationRequestInstance?.landLineNumber}"/>
                </div>
            </td></tr>
            <tr><td>
                <div class="fieldcontain ${hasErrors(bean: bloodDonationRequestInstance, field: 'hospitalName', 'error')} required">
                    <label for="hospitalName">
                        <g:message code="bloodDonationRequest.hospitalName.label" default="Hospital Name"/>
                        <span class="required-indicator">*</span>
                    </label>
                    <g:textField name="hospitalName"
                                 pattern="${bloodDonationRequestInstance.constraints.hospitalName.matches}"
                                 required="" value="${bloodDonationRequestInstance?.hospitalName}"/>
                </div>
            </td></tr>
        </table>
        <td>
            <table class="gridTable">

                <tr><td>
                    <div class="fieldcontain ${hasErrors(bean: bloodDonationRequestInstance, field: 'hospitalCityName', 'error')} required">
                        <label for="hospitalCityName">
                            <g:message code="bloodDonationRequest.hospitalCityName.label"
                                       default="Hospital City Name"/>
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField name="hospitalCityName" required=""
                                     value="${bloodDonationRequestInstance?.hospitalCityName}"/>
                    </div>
                </td></tr>
                <tr><td>
                    <div class="fieldcontain ${hasErrors(bean: bloodDonationRequestInstance, field: 'hospitalStateName', 'error')} required">
                        <label for="hospitalStateName">
                            <g:message code="bloodDonationRequest.hospitalStateName.label"
                                       default="Hospital State Name"/>
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField name="hospitalStateName" required=""
                                     value="${bloodDonationRequestInstance?.hospitalStateName}"/>
                    </div>
                </td></tr>
                <tr><td>
                    <div class="fieldcontain ${hasErrors(bean: bloodDonationRequestInstance, field: 'patientAddress', 'error')} required">
                        <label for="patientAddress">
                            <g:message code="bloodDonationRequest.patientAddress.label"
                                       default="Patient Address"/>
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textArea name="patientAddress" rows="5" cols="20" required=""
                                    value="${bloodDonationRequestInstance?.patientAddress}"/>
                    </div>
                </td></tr>
                <tr><td>
                    <div class="fieldcontain ${hasErrors(bean: bloodDonationRequestInstance, field: 'purpose', 'error')} required">
                        <label for="purpose">
                            <g:message code="bloodDonationRequest.purpose.label" default="Purpose"/>
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField name="purpose" required=""
                                     value="${bloodDonationRequestInstance?.purpose}"/>
                    </div>
                <tr><td>
                    <div class="fieldcontain ${hasErrors(bean: bloodDonationRequestInstance, field: 'takeninPast', 'error')} ">
                        <label for="takeninPast">
                            <g:message code="bloodDonationRequest.takeninPast.label"
                                       default="Takenin Past"/>

                        </label>
                        <g:checkBox name="takeninPast"
                                    value="${bloodDonationRequestInstance?.takeninPast}"/>
                    </div>
                </td></tr>
                <tr><td>
                    <div class="fieldcontain ${hasErrors(bean: bloodDonationRequestInstance, field: 'pastDate', 'error')} required">
                        <label for="pastDate">
                            <g:message code="bloodDonationRequest.pastDate.label" default="Past Date"/>
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField name="pastDate" precision="day" value="${bloodDonationRequestInstance?.pastDate}"/>
                    </div>
                </td></tr>
            </table>
        </td>
    </tr>
</table>


