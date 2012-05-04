package com.onb.registrationsystem

import org.springframework.dao.DataIntegrityViolationException

class StudentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [studentInstanceList: Student.list(params), studentInstanceTotal: Student.count()]
    }

    def create() {
        [studentInstance: new Student(params)]
    }

    def save() {
	params.registrationDate = new Date()
	params.enrollment = null
        def studentInstance = new Student(params)
	studentInstance.name = new Name(params)
        if (!studentInstance.save(flush: true)) {
            render(view: "create", model: [studentInstance: studentInstance])
            return
        }

	else{

		def role = Role.findByAuthority('ROLE_USER')
		def userRole = new UserRole()
		userRole.create (studentInstance, role, true)
	}

	flash.message = message(code: 'default.created.message', args: [message(code: 'student.label', default: 'Student'), studentInstance.id])
        redirect(action: "show", id: studentInstance.id)
    }

    def show() {
        def studentInstance = Student.get(params.id)
        if (!studentInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "list")
            return
        }

        [studentInstance: studentInstance]
    }

    def edit() {
        def studentInstance = Student.get(params.id)
        if (!studentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "list")
            return
        }

        [studentInstance: studentInstance]
    }

    def update() {
        def studentInstance = Student.get(params.id)
        if (!studentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (studentInstance.version > version) {
                studentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'student.label', default: 'Student')] as Object[],
                          "Another user has updated this Student while you were editing")
                render(view: "edit", model: [studentInstance: studentInstance])
                return
            }
        }

        studentInstance.properties = params

        if (!studentInstance.save(flush: true)) {
            render(view: "edit", model: [studentInstance: studentInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'student.label', default: 'Student'), studentInstance.id])
        redirect(action: "show", id: studentInstance.id)
    }

    def delete() {
        def studentInstance = Student.get(params.id)
        if (!studentInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "list")
            return
        }

        try {
            studentInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'student.label', default: 'Student'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

	def profile() {
		def studentInstance = Student.get(params.id)

		if (!studentInstance){
			redirect(action: "navigation")
		}
		else{
       			[studentInstance: studentInstance]
		}
	}

	def navigation(){

	}
}
