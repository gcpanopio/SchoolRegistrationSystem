package com.onb.registrationsystem



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Timeslot)
class TimeslotTests {

  
    void testFieldsAfterInstanceCreation() {
	def timeslot = new Timeslot(day:"MWF", start:900, end:1030)
	assert timeslot.day == "MWF"
	assert timeslot.start == 900
	assert timeslot.end == 1030
    }

    void testNullOrBlankDay() {
  	def timeslot = new Timeslot(start:900, end:1030)
	assertFalse "an error must have been caught for null day field", timeslot.validate()
	timeslot = new Timeslot(day:"", start:900, end:1030)
	assertFalse "an error must have been caught for blank day field", timeslot.validate()
    }

    void testBlankStartTime() {
 
	def timeslot = new Timeslot(day:"MWF", start:"", end:1030)
	assertFalse "an error must have been caught for blank start time", timeslot.validate()
    }

    void testBlankEndTime() {
 
	def timeslot = new Timeslot(day:"MWF", end:"", start:1030)
	assertFalse "an error must have been caught for blank end time", timeslot.validate()
    }
	
}
