package com.blooddonation

class BloodDonorSearch {
	
	String bloodGroup
	String state
	String district
	String city

    static constraints = {
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
    }
}
