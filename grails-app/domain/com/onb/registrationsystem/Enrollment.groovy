package com.onb.registrationsystem

class Enrollment {
	Date enrollmentDate
	int schoolYear
	String semester
	BigDecimal totalFee
	static belongsTo = [student : Student]
	static hasMany = [ classes: StudentClass]
	
	static constraints = {
		schoolYear nullable:false, blank:false
		semester nullable:false, blank:false
		totalFee nullable:false, blank:false
		classes nullable:true, blank:true
	}

	public String toString = {
		"${schoolYear} - ${semester}"
	}
}

