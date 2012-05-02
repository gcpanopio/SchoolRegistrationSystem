package com.onb.registrationsystem

class Timeslot {
	String day
	int start
	int end
	
	static constraints = {
		day nullable:false, blank:false
		start nullable:false, blank:false
		end nullable:false, blank:false
	}
}
