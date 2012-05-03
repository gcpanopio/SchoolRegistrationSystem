package com.onb.registrationsystem

import org.springframework.dao.DataIntegrityViolationException

class SubjectController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [subjectInstanceList: Subject.list(params), subjectInstanceTotal: Subject.count()]
    }

    def create() {
        [subjectInstance: new Subject(params)]
    }

    def save() {
        def subjectInstance = new Subject(params)
        if (!subjectInstance.save(flush: true)) {
            render(view: "create", model: [subjectInstance: subjectInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'subject.label', default: 'Subject'), subjectInstance.id])
        redirect(action: "show", id: subjectInstance.id)
    }

    def show() {
        def subjectInstance = Subject.get(params.id)
        if (!subjectInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'subject.label', default: 'Subject'), params.id])
            redirect(action: "list")
            return
        }

        [subjectInstance: subjectInstance]
    }

    def edit() {
        def subjectInstance = Subject.get(params.id)
        if (!subjectInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'subject.label', default: 'Subject'), params.id])
            redirect(action: "list")
            return
        }

        [subjectInstance: subjectInstance]
    }

    def update() {
        def subjectInstance = Subject.get(params.id)
        if (!subjectInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'subject.label', default: 'Subject'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (subjectInstance.version > version) {
                subjectInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'subject.label', default: 'Subject')] as Object[],
                          "Another user has updated this Subject while you were editing")
                render(view: "edit", model: [subjectInstance: subjectInstance])
                return
            }
        }

        subjectInstance.properties = params

        if (!subjectInstance.save(flush: true)) {
            render(view: "edit", model: [subjectInstance: subjectInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'subject.label', default: 'Subject'), subjectInstance.id])
        redirect(action: "show", id: subjectInstance.id)
    }

    def delete() {
        def subjectInstance = Subject.get(params.id)
        if (!subjectInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'subject.label', default: 'Subject'), params.id])
            redirect(action: "list")
            return
        }

        try {
            subjectInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'subject.label', default: 'Subject'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'subject.label', default: 'Subject'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
