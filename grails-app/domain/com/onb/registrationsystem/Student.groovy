package com.onb.registrationsystem

class Student extends User{
	String studentNumber 
	Name name
	int level
	Date registrationDate
	static hasOne = [enrollment : Enrollment]
	static embedded = ['name']

	static constraints = {
		studentNumber nullable:false, blank:false, size:1..10, unique:true
		enrollment nullable: true, blank: true
	}

	public String toString = {
		"${studentNumber} ${name}"
	}
}


