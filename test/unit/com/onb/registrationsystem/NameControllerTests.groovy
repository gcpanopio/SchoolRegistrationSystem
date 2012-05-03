package com.onb.registrationsystem



import org.junit.*
import grails.test.mixin.*

@TestFor(NameController)
@Mock(Name)
class NameControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/name/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.nameInstanceList.size() == 0
        assert model.nameInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.nameInstance != null
    }

    void testSave() {
        controller.save()

        assert model.nameInstance != null
        assert view == '/name/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/name/show/1'
        assert controller.flash.message != null
        assert Name.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/name/list'


        populateValidParams(params)
        def name = new Name(params)

        assert name.save() != null

        params.id = name.id

        def model = controller.show()

        assert model.nameInstance == name
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/name/list'


        populateValidParams(params)
        def name = new Name(params)

        assert name.save() != null

        params.id = name.id

        def model = controller.edit()

        assert model.nameInstance == name
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/name/list'

        response.reset()


        populateValidParams(params)
        def name = new Name(params)

        assert name.save() != null

        // test invalid parameters in update
        params.id = name.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/name/edit"
        assert model.nameInstance != null

        name.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/name/show/$name.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        name.clearErrors()

        populateValidParams(params)
        params.id = name.id
        params.version = -1
        controller.update()

        assert view == "/name/edit"
        assert model.nameInstance != null
        assert model.nameInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/name/list'

        response.reset()

        populateValidParams(params)
        def name = new Name(params)

        assert name.save() != null
        assert Name.count() == 1

        params.id = name.id

        controller.delete()

        assert Name.count() == 0
        assert Name.get(name.id) == null
        assert response.redirectedUrl == '/name/list'
    }
}
