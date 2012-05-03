package com.onb.registrationsystem

class Course {
	String name
	String description
	static hasMany = [subjects : Subject]
	
	static constraints = {
		name nullable:false, blank:false, unique:true
		description nullable:false, blank:false
		subjects nullable:true
	}

	static mapping = {
		subjects joinTable: false, column : 'Course_ID', lazy : false	
	}

	def toString = {
		"${name}"
	}
}

