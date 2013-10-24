package com.blooddonation

class User {

	transient springSecurityService

	String username
	String password
	Boolean enabled = true
	Boolean accountExpired = false
	Boolean accountLocked = false
	Boolean passwordExpired = false

	static constraints = {
		username blank: false, unique: true
		password blank: false, size:5..100
	}

	static mapping = { password column: '`password`' }

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}

	def beforeInsert() {
	//	encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
