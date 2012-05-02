package com.onb.registrationsystem

class Enrollment {
	Date enrollmentDate
	int schoolYear
	String semester
	BigDecimal totalFee
	def classes = [] as Set
	
	static constraints = {
		schoolYear nullable:false, blank:false
		semester nullable:false, blank:false
		totalFee nullable:false, blank:false
		classes nullable:false, blank:false
	}
}

