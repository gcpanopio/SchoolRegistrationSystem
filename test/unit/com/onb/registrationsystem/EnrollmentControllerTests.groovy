package com.onb.registrationsystem



import org.junit.*
import grails.test.mixin.*

@TestFor(EnrollmentController)
@Mock(Enrollment)
class EnrollmentControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/enrollment/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.enrollmentInstanceList.size() == 0
        assert model.enrollmentInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.enrollmentInstance != null
    }

    void testSave() {
        controller.save()

        assert model.enrollmentInstance != null
        assert view == '/enrollment/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/enrollment/show/1'
        assert controller.flash.message != null
        assert Enrollment.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/enrollment/list'


        populateValidParams(params)
        def enrollment = new Enrollment(params)

        assert enrollment.save() != null

        params.id = enrollment.id

        def model = controller.show()

        assert model.enrollmentInstance == enrollment
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/enrollment/list'


        populateValidParams(params)
        def enrollment = new Enrollment(params)

        assert enrollment.save() != null

        params.id = enrollment.id

        def model = controller.edit()

        assert model.enrollmentInstance == enrollment
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/enrollment/list'

        response.reset()


        populateValidParams(params)
        def enrollment = new Enrollment(params)

        assert enrollment.save() != null

        // test invalid parameters in update
        params.id = enrollment.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/enrollment/edit"
        assert model.enrollmentInstance != null

        enrollment.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/enrollment/show/$enrollment.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        enrollment.clearErrors()

        populateValidParams(params)
        params.id = enrollment.id
        params.version = -1
        controller.update()

        assert view == "/enrollment/edit"
        assert model.enrollmentInstance != null
        assert model.enrollmentInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/enrollment/list'

        response.reset()

        populateValidParams(params)
        def enrollment = new Enrollment(params)

        assert enrollment.save() != null
        assert Enrollment.count() == 1

        params.id = enrollment.id

        controller.delete()

        assert Enrollment.count() == 0
        assert Enrollment.get(enrollment.id) == null
        assert response.redirectedUrl == '/enrollment/list'
    }
}
