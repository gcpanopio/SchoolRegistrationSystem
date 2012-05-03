package com.onb.registrationsystem

class Subject {
	String name
	BigDecimal fee
	static belongsTo = [Course, StudentClass]
	static hasMany = [ courses : Course, classes : StudentClass]
	
	static constraints = {
		name nullable:false, blank:false, unique:true
		fee nullable:false, blank:false
	}

	public String toString() {
		"${name}"
	} 
}
