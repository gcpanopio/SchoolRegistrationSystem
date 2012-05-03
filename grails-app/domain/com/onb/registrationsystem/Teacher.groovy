package com.onb.registrationsystem

class Teacher {
	Name name
	static embedded = ['name']

    static constraints = {
    }

	def toString = {
		"${name}"
	}
}
