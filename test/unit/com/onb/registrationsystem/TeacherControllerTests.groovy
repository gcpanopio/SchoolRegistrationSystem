package com.onb.registrationsystem



import org.junit.*
import grails.test.mixin.*

@TestFor(TeacherController)
@Mock(Teacher)
class TeacherControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/teacher/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.teacherInstanceList.size() == 0
        assert model.teacherInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.teacherInstance != null
    }

    void testSave() {
        controller.save()

        assert model.teacherInstance != null
        assert view == '/teacher/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/teacher/show/1'
        assert controller.flash.message != null
        assert Teacher.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/teacher/list'


        populateValidParams(params)
        def teacher = new Teacher(params)

        assert teacher.save() != null

        params.id = teacher.id

        def model = controller.show()

        assert model.teacherInstance == teacher
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/teacher/list'


        populateValidParams(params)
        def teacher = new Teacher(params)

        assert teacher.save() != null

        params.id = teacher.id

        def model = controller.edit()

        assert model.teacherInstance == teacher
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/teacher/list'

        response.reset()


        populateValidParams(params)
        def teacher = new Teacher(params)

        assert teacher.save() != null

        // test invalid parameters in update
        params.id = teacher.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/teacher/edit"
        assert model.teacherInstance != null

        teacher.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/teacher/show/$teacher.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        teacher.clearErrors()

        populateValidParams(params)
        params.id = teacher.id
        params.version = -1
        controller.update()

        assert view == "/teacher/edit"
        assert model.teacherInstance != null
        assert model.teacherInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/teacher/list'

        response.reset()

        populateValidParams(params)
        def teacher = new Teacher(params)

        assert teacher.save() != null
        assert Teacher.count() == 1

        params.id = teacher.id

        controller.delete()

        assert Teacher.count() == 0
        assert Teacher.get(teacher.id) == null
        assert response.redirectedUrl == '/teacher/list'
    }
}
