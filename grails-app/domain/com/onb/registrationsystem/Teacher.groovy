package com.onb.registrationsystem

class Teacher {
	String firstName
	String lastName

    static constraints = {
    	firstName nullable:false, blank:false
	lastName nullable:false, blank:false
    }

	def toString = {
		"${lastName}, ${firstName}"
	}
}
