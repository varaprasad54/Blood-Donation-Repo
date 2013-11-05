package com.blooddonation

class BloodDonationRequest {

    String requestId
    String patientFullName
    String patientBloodGroup
    int patientAge
    Date requiredDate
    int numberofUnits
    String mobileNumber
    String landLineNumber
    String hospitalName
    String hospitalCityName
    String hospitalStateName
    String patientAddress
    String purpose
    boolean takeninPast
    Date pastDate

    static constraints = {
        requestId(unique: true)
        patientFullName(blank: false)
        patientBloodGroup(blank: false, inList: ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'])
        patientAge(blank: false)
        requiredDate(blank: false)
        numberofUnits(blank: false, min: 1, max: 20)
        mobileNumber(blank: false)
        landLineNumber(blank: false)
        hospitalName(blank: false, matches: /[\S]+/)
        hospitalCityName(blank: false)
        hospitalStateName(blank: false)
        patientAddress(blank: false)
        purpose(blank: false)
    }
}
