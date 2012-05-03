package com.onb.registrationsystem



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Teacher)
class TeacherTests {

    void testFieldsAfterInstantiation() {
	def tony = new Name(firstName:"Tony", lastName:"Gigahertz")
	def teacher = new Teacher(name:tony)
	assertEquals(tony, teacher.name)
    }
}
