package com.onb.registrationsystem

class Course {
	String name
	String description
	def subjects = [] as Set
	
	static constraints = {
		name nullable:false, blank:false, unique:true
		description nullable:false, blank:false
		subjects nullable:false, blank:false
	}
}

