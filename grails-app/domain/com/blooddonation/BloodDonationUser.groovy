package com.blooddonation


class BloodDonationUser extends User{

	String firstName
	String lastName
	String bloodGroup
	String gender
	Date dateOfBirth
	String mobileNumber
	String landlineNumber
	String confirmPassword
	String emailId
	String city
	String district
	String state
	Date registeredDate = new Date()
	String availabilityToDonate
	static constraints = {
		username  blank:false, size:5..15, matches:/[\S]+/, unique:true;
		password  blank:false, size:5..15, password:true, matches:/[\S]+/, validator:{ val, obj ->
			if (obj.password != obj.confirmPassword)
				return 'user.password.dontmatch'
		}
		confirmPassword blank:false, password:true
		firstName blank : false;
		lastName blank : false;
		bloodGroup blank:false, inList:[
			'A+',
			'A-',
			"B+",
			'B-',
			'AB+',
			'AB-',
			'O+',
			'O-'
		]
		gender blank:false ,inList:['Male', 'Female']
		dateOfBirth nullable:false
		mobileNumber blank:false
		landlineNumber maxsize: 15
		emailId blank:false,email : true
		state blank:false,inList : [
			'AndhraPradesh',
			'Bihar',
			'Karnataka'
		]
		city blank:false,inList: [
			'Delhi',
			'Bangalore',
			'Hyderabad',
			'Chennai',
			'Kolkatta'
		]
		district blank:false
		availabilityToDonate blank:false, inList :['Available', 'UnAvailable']
	}
}
