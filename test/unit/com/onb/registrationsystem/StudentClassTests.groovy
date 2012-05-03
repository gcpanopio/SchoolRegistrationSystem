package com.onb.registrationsystem



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(StudentClass)
class StudentClassTests {

int maxStudents = 30
	Subject subject
	Teacher teacher
	Room room
	Timeslot timeslot

    void testDefaultValueOfMaxStudents() {
       def studentclass = new StudentClass()
	assert 30 == studentclass.maxStudents
	assertFalse "Null fields for student class", studentclass.validate();
    }
}
