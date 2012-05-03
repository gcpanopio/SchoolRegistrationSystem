package com.onb.registrationsystem



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Name)
class NameTests {

  void testFieldsAfterInstanceCreation() {
	def name = new Name(firstName:"Betty", lastName:"Bitdiddle")
	assert "Betty" == name.firstName
	assert "Bitdiddle" == name.lastName
    }

    void testNullOrBlankFirstName() {
 	def name = new Name(lastName:"Bitdiddle")
	assertFalse "an error must have been caught for null firstName", name.validate()
	name = new Name(firstName:"", lastName:"Bitdiddle")
	assertFalse "an error must have been caught for blank firstName", name.validate()
    }

     void testNullOrBlankLastName() {
 	def name = new Name(firstName:"Betty")
	assertFalse "an error must have been caught for null lastName", name.validate()
	name = new Name(lastName:"", firstName:"Betty")
	assertFalse "an error must have been caught for blank lastName", name.validate()
    }
}
