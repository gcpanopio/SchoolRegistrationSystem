package com.onb.registrationsystem

import org.springframework.dao.DataIntegrityViolationException

class EnrollmentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [enrollmentInstanceList: Enrollment.list(params), enrollmentInstanceTotal: Enrollment.count()]
    }

    def create() {
        [enrollmentInstance: new Enrollment(params)]
    }

    def save() {
        def enrollmentInstance = new Enrollment(params)
        if (!enrollmentInstance.save(flush: true)) {
            render(view: "create", model: [enrollmentInstance: enrollmentInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'enrollment.label', default: 'Enrollment'), enrollmentInstance.id])
        redirect(action: "show", id: enrollmentInstance.id)
    }

    def show() {
        def enrollmentInstance = Enrollment.get(params.id)
        if (!enrollmentInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'enrollment.label', default: 'Enrollment'), params.id])
            redirect(action: "list")
            return
        }

        [enrollmentInstance: enrollmentInstance]
    }

    def edit() {
        def enrollmentInstance = Enrollment.get(params.id)
        if (!enrollmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'enrollment.label', default: 'Enrollment'), params.id])
            redirect(action: "list")
            return
        }

        [enrollmentInstance: enrollmentInstance]
    }

    def update() {
        def enrollmentInstance = Enrollment.get(params.id)
        if (!enrollmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'enrollment.label', default: 'Enrollment'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (enrollmentInstance.version > version) {
                enrollmentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'enrollment.label', default: 'Enrollment')] as Object[],
                          "Another user has updated this Enrollment while you were editing")
                render(view: "edit", model: [enrollmentInstance: enrollmentInstance])
                return
            }
        }

        enrollmentInstance.properties = params

        if (!enrollmentInstance.save(flush: true)) {
            render(view: "edit", model: [enrollmentInstance: enrollmentInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'enrollment.label', default: 'Enrollment'), enrollmentInstance.id])
        redirect(action: "show", id: enrollmentInstance.id)
    }

    def delete() {
        def enrollmentInstance = Enrollment.get(params.id)
        if (!enrollmentInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'enrollment.label', default: 'Enrollment'), params.id])
            redirect(action: "list")
            return
        }

        try {
            enrollmentInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'enrollment.label', default: 'Enrollment'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'enrollment.label', default: 'Enrollment'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
