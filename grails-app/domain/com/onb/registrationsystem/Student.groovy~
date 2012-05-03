package com.onb.registrationsystem

class Student extends User{
	String studentNumber 
	String firstName
	String lastName
	int level
	Date registrationDate
	static hasOne = [enrollment : Enrollment]

    static constraints = {
	studentNumber nullable:false, blank:false, size:1..10, unique:true
	firstName nullable:false, blank:false
	lastName nullable:false, blank:false
	enrollment nullable: true, blank: true
    }

	public String toString = {
		"${studentNumber} ${lastName} ${firstName}"
	}
}


