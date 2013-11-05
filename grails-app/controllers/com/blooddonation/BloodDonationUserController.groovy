package com.blooddonation

import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

class BloodDonationUserController {

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def index() {
		redirect(action: "list", params: params)
	}

	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		//[bloodDonationUserInstanceList: BloodDonationUser.list(params), bloodDonationUserInstanceTotal: BloodDonationUser.count()]
	}

	def create() {
		[bloodDonationUserInstance: new BloodDonationUser(params)]
	}

	def save() {
		def bloodDonationUserInstance = new BloodDonationUser(params)
		if (!bloodDonationUserInstance.save(flush: true)) {
			render(view: "create", model: [bloodDonationUserInstance: bloodDonationUserInstance])
			return
		}
		/*def adminRole = new Role(authority: 'ROLE_ADMIN')
		 UserRole.create bloodDonationUserInstance,adminRole,true*/
		flash.message = message(code: 'default.created.message', args: [
			message(code: 'bloodDonationUser.label', default: 'BloodDonationUser'),
			bloodDonationUserInstance.id
		])
		redirect(action: "show", id: bloodDonationUserInstance.id)
	}

	def show(Long id) {
		def bloodDonationUserInstance = BloodDonationUser.get(id)
		if (!bloodDonationUserInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'bloodDonationUser.label', default: 'BloodDonationUser'),
				id
			])
			redirect(action: "list")
			return
		}

		[bloodDonationUserInstance: bloodDonationUserInstance]
	}

	def edit(Long id) {
		def bloodDonationUserInstance = BloodDonationUser.get(id)
		if (!bloodDonationUserInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'bloodDonationUser.label', default: 'BloodDonationUser'),
				id
			])
			redirect(action: "list")
			return
		}

		[bloodDonationUserInstance: bloodDonationUserInstance]
	}

	def update(Long id, Long version) {
		def bloodDonationUserInstance = BloodDonationUser.get(id)
		if (!bloodDonationUserInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'bloodDonationUser.label', default: 'BloodDonationUser'),
				id
			])
			redirect(action: "list")
			return
		}

		if (version != null) {
			if (bloodDonationUserInstance.version > version) {
				bloodDonationUserInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
						[
							message(code: 'bloodDonationUser.label', default: 'BloodDonationUser')] as Object[],
						"Another user has updated this BloodDonationUser while you were editing")
				render(view: "edit", model: [bloodDonationUserInstance: bloodDonationUserInstance])
				return
			}
		}

		bloodDonationUserInstance.properties = params

		if (!bloodDonationUserInstance.save(flush: true)) {
			render(view: "edit", model: [bloodDonationUserInstance: bloodDonationUserInstance])
			return
		}

		flash.message = message(code: 'default.updated.message', args: [
			message(code: 'bloodDonationUser.label', default: 'BloodDonationUser'),
			bloodDonationUserInstance.id
		])
		redirect(action: "show", id: bloodDonationUserInstance.id)
	}

	def delete(Long id) {
		def bloodDonationUserInstance = BloodDonationUser.get(id)
		if (!bloodDonationUserInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'bloodDonationUser.label', default: 'BloodDonationUser'),
				id
			])
			redirect(action: "list")
			return
		}

		try {
			bloodDonationUserInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [
				message(code: 'bloodDonationUser.label', default: 'BloodDonationUser'),
				id
			])
			redirect(action: "list")
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [
				message(code: 'bloodDonationUser.label', default: 'BloodDonationUser'),
				id
			])
			redirect(action: "show", id: id)
		}
	}
	def listDonors = {
		def sortIndex = params.sidx ?: 'firstName'
		def sortOrder  = params.sord ?: 'asc'
		def maxRows = Integer.valueOf(params.rows)
		def currentPage = Integer.valueOf(params.page) ?: 1
		def rowOffset = currentPage == 1 ? 0 : (currentPage - 1) * maxRows
		def bloodDonors = BloodDonationUser.createCriteria().list(max: maxRows, offset: rowOffset) {
			if (params.firstName)
				ilike('firstName', "%${params.firstName}%")

			if (params.lastName)
				ilike('lastName', "%${params.lastName}%")

			if (params.gender)
				ilike('gender', "%${params.gender}%")

			if (params.bloodGroup)
				ilike('bloodGroup', "%${params.bloodGroup}%")

			if (params.mobileNumber)
				ilike('mobileNumber', "%${params.mobileNumber}%")

			if (params.city)
				ilike('city', "%${params.city}%")

			if (params.state)
				ilike('state', "%${params.state}%")

			if (params.emailId) {
				ilike('emailId', "%${params.emailId}%")
			}
			order(sortIndex, sortOrder)
		}

		def totalRows = bloodDonors.totalCount
		def numberOfPages = Math.ceil(totalRows / maxRows)

		def results = bloodDonors?.collect {
			[
				cell: [
					it.firstName,
					it.lastName,
					it.gender,
					it.bloodGroup,
					it.mobileNumber,
					it.city,
					it.state,
					it.emailId
				],
				id: it.id
			]
		}

		def jsonData = [rows: results, page: currentPage, records: totalRows, total: numberOfPages]
		render jsonData as JSON
	}
}
