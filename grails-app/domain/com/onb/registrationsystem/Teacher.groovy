package com.onb.registrationsystem

class Teacher {
	Name name
	static embedded = ['name']

    static constraints = {
    }

	public String toString(){
		"${name.lastName}, ${name.firstName}"
	}
}
