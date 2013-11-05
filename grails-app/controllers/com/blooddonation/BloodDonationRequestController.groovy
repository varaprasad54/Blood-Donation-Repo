package com.blooddonation

import org.springframework.dao.DataIntegrityViolationException

class BloodDonationRequestController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [bloodDonationRequestInstanceList: BloodDonationRequest.list(params), bloodDonationRequestInstanceTotal: BloodDonationRequest.count()]
    }

    def create() {
        [bloodDonationRequestInstance: new BloodDonationRequest(params)]
    }

    def save() {
        def bloodDonationRequestInstance = new BloodDonationRequest(params)
        if (!bloodDonationRequestInstance.save(flush: true)) {
            render(view: "create", model: [bloodDonationRequestInstance: bloodDonationRequestInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'bloodDonationRequest.label', default: 'BloodDonationRequest'), bloodDonationRequestInstance.id])
        redirect(action: "show", id: bloodDonationRequestInstance.id)
    }

    def show(Long id) {
        def bloodDonationRequestInstance = BloodDonationRequest.get(id)
        if (!bloodDonationRequestInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bloodDonationRequest.label', default: 'BloodDonationRequest'), id])
            redirect(action: "list")
            return
        }

        [bloodDonationRequestInstance: bloodDonationRequestInstance]
    }

    def edit(Long id) {
        def bloodDonationRequestInstance = BloodDonationRequest.get(id)
        if (!bloodDonationRequestInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bloodDonationRequest.label', default: 'BloodDonationRequest'), id])
            redirect(action: "list")
            return
        }

        [bloodDonationRequestInstance: bloodDonationRequestInstance]
    }

    def update(Long id, Long version) {
        def bloodDonationRequestInstance = BloodDonationRequest.get(id)
        if (!bloodDonationRequestInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bloodDonationRequest.label', default: 'BloodDonationRequest'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (bloodDonationRequestInstance.version > version) {
                bloodDonationRequestInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'bloodDonationRequest.label', default: 'BloodDonationRequest')] as Object[],
                        "Another user has updated this BloodDonationRequest while you were editing")
                render(view: "edit", model: [bloodDonationRequestInstance: bloodDonationRequestInstance])
                return
            }
        }

        bloodDonationRequestInstance.properties = params

        if (!bloodDonationRequestInstance.save(flush: true)) {
            render(view: "edit", model: [bloodDonationRequestInstance: bloodDonationRequestInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'bloodDonationRequest.label', default: 'BloodDonationRequest'), bloodDonationRequestInstance.id])
        redirect(action: "show", id: bloodDonationRequestInstance.id)
    }

    def delete(Long id) {
        def bloodDonationRequestInstance = BloodDonationRequest.get(id)
        if (!bloodDonationRequestInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bloodDonationRequest.label', default: 'BloodDonationRequest'), id])
            redirect(action: "list")
            return
        }

        try {
            bloodDonationRequestInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'bloodDonationRequest.label', default: 'BloodDonationRequest'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'bloodDonationRequest.label', default: 'BloodDonationRequest'), id])
            redirect(action: "show", id: id)
        }
    }
}
