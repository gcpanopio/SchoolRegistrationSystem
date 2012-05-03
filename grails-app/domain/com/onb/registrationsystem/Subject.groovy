package com.onb.registrationsystem

class Subject {
	String name
	BigDecimal fee
	//static belongsTo = [course : Course, class : Class]
	
	static constraints = {
		name nullable:false, blank:false, unique:true
		fee nullable:false, blank:false
	}
}
