package com.hiideals.form

import com.springapp.Images;

class Certificate {
	String firstName
	String lastName
	String phoneNo
	String dob
	String gender
	String email
	Images profilePic
	
	
    static constraints = {
		
		firstName nullable:true
		lastName nullable:true
		phoneNo nullable:true
		dob nullable:true
		gender nullable:true
		email nullable:true
		profilePic nullable:true
		
    }
}
