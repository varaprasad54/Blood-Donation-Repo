package com.blooddonation

class Address {

	String doorNo
	String street
	String city
	String country
	String pincode
	/*BloodDonationUser bloodDonationUser
	static belongsTo = [bloodDonationUser:BloodDonationUser]*/
	static constraints = {
		city inList: [
			'Delhi',
			'Bangalore',
			'Hyderabad',
			'Chennai',
			'Kolkatta'
		]
		country inList:[
			'India',
			'Srilanka',
			'Singapore'
		]
		pincode size: 5..8
	}
}
