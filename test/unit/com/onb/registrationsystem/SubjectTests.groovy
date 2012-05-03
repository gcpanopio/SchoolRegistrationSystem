package com.onb.registrationsystem



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Subject)
class SubjectTests {

    void testNullName() {
  	def subject = new Subject(fee:new BigDecimal("100.00"))
	assertFalse "an error must have been caught for null name field", subject.validate()
	
    }

    void testBlankName() {
  	def subject = new Subject(name:"", fee:new BigDecimal("100.00"))
	assertFalse "an error must have been caught for blank name", subject.validate()
	
    }

    void testNullFee() {
  	def subject = new Subject(name:"Eng 5")
	assertFalse "an error must have been caught for null name field", subject.validate()
	
    }
   void testBlankFee() {
  	def subject = new Subject(name:"Eng 5", fee:"")
	assertFalse "an error must have been caught for blank fee", subject.validate()
	
    }

 
}
