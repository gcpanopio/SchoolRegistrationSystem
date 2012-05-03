package com.onb.registrationsystem



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Enrollment)
class EnrollmentTests {

  
	void testFieldsAfterInstanceCreation() {
	def enrollment = new Enrollment(schoolYear:3, semester:"1st", totalFee:new BigDecimal("100.00"))
	assert 3 == enrollment.schoolYear
	assert "1st" == enrollment.semester
	assertEquals(new BigDecimal("100.00"), enrollment.totalFee)
    }

	


}
