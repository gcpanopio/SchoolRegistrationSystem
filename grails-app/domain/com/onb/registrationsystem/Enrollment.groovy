package com.onb.registrationsystem

class Enrollment {
	Date enrollmentDate
	int schoolYear
	String semester
	BigDecimal totalFee
	static hasMany = [ classes: StudentClass]
	
	static constraints = {
		schoolYear nullable:false, blank:false
		semester nullable:false, blank:false
		totalFee nullable:false, blank:false
		classes nullable:true, blank:true
	}
}

