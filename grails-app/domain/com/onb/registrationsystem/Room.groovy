package com.onb.registrationsystem

class Room {
	String roomNumber
	String building
	
	static constraints = {
		roomNumber nullable:false, blank:false
		building nullable:false, blank:false
	}

	def toString = {
		"${building} ${roomNumber}"
	}
}

