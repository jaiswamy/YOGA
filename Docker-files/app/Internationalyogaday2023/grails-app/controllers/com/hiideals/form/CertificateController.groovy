package com.hiideals.form



import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class CertificateController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	@Secured(["ROLE_ADMIN"])
	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond Certificate.list(params), model:[certificateInstanceCount: Certificate.count()]
	}

	def show(Certificate certificateInstance) {
		respond certificateInstance
	}

	def create() {
		respond new Certificate(params)
	}

	def thankyou() {
		
	}
	
	


	def report(){
		
		def  formdet=Certificate.findById(params.id)
		model:[formdet:formdet]
	}

	



	@Secured(["ROLE_ADMIN"])
	def adminindex(){
		def  formdet=Certificate.findAll()
		model:[formdet: formdet]
	}




	@Transactional
	def save(Certificate certificateInstance) {
		if (certificateInstance == null) {
			notFound()
			return
		}

		if (certificateInstance.hasErrors()) {
			respond certificateInstance.errors, view:'create'
			return
		}

		certificateInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'certificate.label', default: 'Certificate'),
					certificateInstance.id
				])
				redirect certificateInstance
			}
			'*' { respond certificateInstance, [status: CREATED] }
		}
	}

	def edit(Certificate certificateInstance) {
		respond certificateInstance
	}

	@Transactional
	def update(Certificate certificateInstance) {
		if (certificateInstance == null) {
			notFound()
			return
		}

		if (certificateInstance.hasErrors()) {
			respond certificateInstance.errors, view:'edit'
			return
		}

		certificateInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Certificate.label', default: 'Certificate'),
					certificateInstance.id
				])
				redirect certificateInstance
			}
			'*'{ respond certificateInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(Certificate certificateInstance) {

		if (certificateInstance == null) {
			notFound()
			return
		}

		certificateInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'Certificate.label', default: 'Certificate'),
					certificateInstance.id
				])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'certificate.label', default: 'Certificate'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
