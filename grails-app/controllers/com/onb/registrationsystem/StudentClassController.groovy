package com.onb.registrationsystem

import org.springframework.dao.DataIntegrityViolationException

class StudentClassController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [studentClassInstanceList: StudentClass.list(params), studentClassInstanceTotal: StudentClass.count()]
    }

    def create() {
        [studentClassInstance: new StudentClass(params)]
    }

    def save() {
        def studentClassInstance = new StudentClass(params)
        if (!studentClassInstance.save(flush: true)) {
            render(view: "create", model: [studentClassInstance: studentClassInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'studentClass.label', default: 'StudentClass'), studentClassInstance.id])
        redirect(action: "show", id: studentClassInstance.id)
    }

    def show() {
        def studentClassInstance = StudentClass.get(params.id)
        if (!studentClassInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'studentClass.label', default: 'StudentClass'), params.id])
            redirect(action: "list")
            return
        }

        [studentClassInstance: studentClassInstance]
    }

    def edit() {
        def studentClassInstance = StudentClass.get(params.id)
        if (!studentClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'studentClass.label', default: 'StudentClass'), params.id])
            redirect(action: "list")
            return
        }

        [studentClassInstance: studentClassInstance]
    }

    def update() {
        def studentClassInstance = StudentClass.get(params.id)
        if (!studentClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'studentClass.label', default: 'StudentClass'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (studentClassInstance.version > version) {
                studentClassInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'studentClass.label', default: 'StudentClass')] as Object[],
                          "Another user has updated this StudentClass while you were editing")
                render(view: "edit", model: [studentClassInstance: studentClassInstance])
                return
            }
        }

        studentClassInstance.properties = params

        if (!studentClassInstance.save(flush: true)) {
            render(view: "edit", model: [studentClassInstance: studentClassInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'studentClass.label', default: 'StudentClass'), studentClassInstance.id])
        redirect(action: "show", id: studentClassInstance.id)
    }

    def delete() {
        def studentClassInstance = StudentClass.get(params.id)
        if (!studentClassInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'studentClass.label', default: 'StudentClass'), params.id])
            redirect(action: "list")
            return
        }

        try {
            studentClassInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'studentClass.label', default: 'StudentClass'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'studentClass.label', default: 'StudentClass'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
