package com.onb.registrationsystem



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Room)
class RoomTests {

  void testFieldsAfterInstanceCreation() {
	def room = new Room(roomNumber:"5J-505", building:"NAIA-1")
	assert "5J-505" == room.roomNumber
	assert "NAIA-1" == room.building
    }

    void testNullOrBlankRoomNumber() {
 	def room = new Room(building:"NAIA-1")
	assertFalse "an error must have been caught for null roomNumber", room.validate()
	room = new Room(roomNumber:"", building:"NAIA-1")
	assertFalse "an error must have been caught for blank roomNumber", room.validate()
    }

   void testNullOrBlankBuilding() {
 	def room = new Room(roomNumber:"5J-505")
	assertFalse "an error must have been caught for null building", room.validate()
	room = new Room(roomNumber:"5J-505", building:"")
	assertFalse "an error must have been caught for blank building", room.validate()
    }
}
