package com.onb.registrationsystem

class Student extends User{
	String studentNumber 
	String firstName
	String lastName
	int level
	Date registrationDate
	static hasMany = [enrollments : Enrollment]

    static constraints = {
	studentNumber nullable:false, blank:false, size:1..10, unique:true
	firstName nullable:false, blank:false
	lastName nullable:false, blank:false
	enrollments nullable: true, blank: true
    }
}
