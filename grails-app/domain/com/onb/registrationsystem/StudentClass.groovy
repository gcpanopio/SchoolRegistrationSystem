package com.onb.registrationsystem;

public class StudentClass {
	int maxStudents = 30
	Subject subject
	Teacher teacher
	Room room
	Timeslot timeslot
	static hasOne = ['subject', 'teacher', 'room', 'timeslot' ]
	
	static constraints = {
		subject nullable:false, blank:false
		teacher nullable:false, blank:false
		room nullable:false, blank:false
		timeslot nullable:false, blank:false
	}

	public String toString(){
		"${subject} - ${teacher}"
	}
}

