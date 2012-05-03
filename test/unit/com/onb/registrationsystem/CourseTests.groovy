package com.onb.registrationsystem



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Course)
class CourseTests {
	
    
    void testNullName() {
  	def course = new Course( description:"English 5")
	assertFalse "an error must have been caught for null name field in (${course.name}, ${course.description})", course.validate()
	
    }


    void testBlankName() {
  	def course = new Course(name:"", description:"English 5")
	assertFalse "an error must have been caught for blank name field in (${course.name}, ${course.description})", course.validate()
	
    }

   void testBlankDescription() {
  	def course = new Course(name:"Eng 5", description:"")
	assertFalse "an error must have been caught for blank description in (${course.name}, ${course.description})", course.validate()
	
    }

   void testNullDescription() {
  	def course = new Course( name:"Eng5")
	assertFalse "an error must have been caught for null description in (${course.name}, ${course.description})", course.validate()
	
    }
    
    void testNullSubjects() {
	def course = new Course(name:"Eng 5", description:"English 5")
	assertTrue "an error must have been caught for blank fields in (${course})", course.validate()
    }
	
}
