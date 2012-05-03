package com.onb.registrationsystem



import org.junit.*
import grails.test.mixin.*

@TestFor(StudentClassController)
@Mock(StudentClass)
class StudentClassControllerTests {


    def populateValidParams(params) {
      assert params != null

      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'

	params.subject = new Subject()
	params.teacher = new Teacher()
	params.room = new Room()
	params.timeslot = new Timeslot()

    }

    void testIndex() {
        controller.index()
        assert "/studentClass/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.studentClassInstanceList.size() == 0
        assert model.studentClassInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.studentClassInstance != null
    }

    void testSave() {
        controller.save()

        assert model.studentClassInstance != null
        assert view == '/studentClass/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/studentClass/show/1'
        assert controller.flash.message != null
        assert StudentClass.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/studentClass/list'


        populateValidParams(params)
        def studentClass = new StudentClass(params)

        assert studentClass.save() != null

        params.id = studentClass.id

        def model = controller.show()

        assert model.studentClassInstance == studentClass
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/studentClass/list'


        populateValidParams(params)
        def studentClass = new StudentClass(params)

        assert studentClass.save() != null

        params.id = studentClass.id

        def model = controller.edit()

        assert model.studentClassInstance == studentClass
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/studentClass/list'

        response.reset()


        populateValidParams(params)
        def studentClass = new StudentClass(params)

        assert studentClass.save() != null

        // test invalid parameters in update
        params.id = studentClass.id
        //TODO: add invalid values to params object

	params.subject = 5
	params.teacher = new Date()
	params.room = new Room()
	params.timeslot = new Timeslot()


        controller.update()

        assert view == "/studentClass/edit"
        assert model.studentClassInstance != null

        studentClass.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/studentClass/show/$studentClass.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        studentClass.clearErrors()

        populateValidParams(params)
        params.id = studentClass.id
        params.version = -1
        controller.update()

        assert view == "/studentClass/edit"
        assert model.studentClassInstance != null
        assert model.studentClassInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/studentClass/list'

        response.reset()

        populateValidParams(params)
        def studentClass = new StudentClass(params)

        assert studentClass.save() != null
        assert StudentClass.count() == 1

        params.id = studentClass.id

        controller.delete()

        assert StudentClass.count() == 0
        assert StudentClass.get(studentClass.id) == null
        assert response.redirectedUrl == '/studentClass/list'
    }
}
