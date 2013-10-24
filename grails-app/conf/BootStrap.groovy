import java.util.Date;

import com.blooddonation.BloodDonationUser;
import com.blooddonation.Customer
import com.blooddonation.Role

class BootStrap {

	def init = { servletContext ->
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
		/*if (Customer.count() == 0) {
		 new Customer(
		 firstName:'John', lastName:'Smith',
		 age:27,
		 emailAddress:'john@somewhere.com'
		 ).save()
		 new Customer(
		 firstName:'Frank', lastName:'Malone',
		 age:37,
		 emailAddress:'frank@somewhere.com'
		 ).save()
		 new Customer(
		 firstName:'Dave', lastName:'Brown',
		 age:34,
		 emailAddress:'dave@somewhere.com'
		 ).save()
		 new Customer(
		 firstName:'Barney', lastName:'Rubble',
		 age:44,
		 emailAddress:'barney@somewhere.com'
		 ).save()
		 }*/
		if(BloodDonationUser.count()==0){
			new BloodDonationUser(username:'vara123',password:'12345',confirmPassword:'12345',firstName:'Vara', lastName:'Prasad',bloodGroup:'O+',gender:'Male',
			dateOfBirth:new Date(),mobileNumber:'8105783933',landlineNumber:'0891-1223',emailId:'prasad@gmail.com',city:'Bangalore',district:'Domlur',state:'Karnataka',availabilityToDonate:'Available').save()
			
			new BloodDonationUser(username:'prasad123',password:'12345',confirmPassword:'12345',firstName:'John', lastName:'Smith',bloodGroup:'O+',gender:'Male',
			dateOfBirth:new Date(),mobileNumber:'1232343',landlineNumber:'0891-1223',emailId:'john@gmail.com',city:'Bangalore',district:'Domlur',state:'Karnataka',availabilityToDonate:'Available').save()
			
			new BloodDonationUser(username:'krish123',password:'12345',confirmPassword:'12345',firstName:'Siva', lastName:'Krishna',bloodGroup:'O-',gender:'Male',
			dateOfBirth:new Date(),mobileNumber:'6456566',landlineNumber:'0891-1223',emailId:'krish@gmail.com',city:'Bangalore',district:'Domlur',state:'Karnataka',availabilityToDonate:'Available').save()
			
			new BloodDonationUser(username:'ram34',password:'12345',confirmPassword:'12345',firstName:'Ram', lastName:'Kumar',bloodGroup:'A+',gender:'Male',
			dateOfBirth:new Date(),mobileNumber:'456454545',landlineNumber:'0891-1223',emailId:'ram@gmail.com',city:'Bangalore',district:'Domlur',state:'Karnataka',availabilityToDonate:'Available').save()
			
			new BloodDonationUser(username:'jyothi123',password:'12345',confirmPassword:'12345',firstName:'Jyothi', lastName:'Kumari',bloodGroup:'A-',gender:'Female',
			dateOfBirth:new Date(),mobileNumber:'2234545',landlineNumber:'0891-1223',emailId:'jyothi@gmail.com',city:'Bangalore',district:'Domlur',state:'Karnataka',availabilityToDonate:'UnAvailable').save()
		}
	}
	def destroy = {
	}
}
