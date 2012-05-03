package com.onb.registrationsystem

class Name {

	String firstName
	String lastName
	
    static constraints = {
	firstName nullable:false, blank:false
	lastName nullable:false, blank:false
    }

	public String toString = {
		"${lastName}, ${firstName}"
	}
}
