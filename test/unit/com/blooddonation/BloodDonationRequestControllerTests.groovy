package com.blooddonation



import org.junit.*
import grails.test.mixin.*

@TestFor(BloodDonationRequestController)
@Mock(BloodDonationRequest)
class BloodDonationRequestControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/bloodDonationRequest/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.bloodDonationRequestInstanceList.size() == 0
        assert model.bloodDonationRequestInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.bloodDonationRequestInstance != null
    }

    void testSave() {
        controller.save()

        assert model.bloodDonationRequestInstance != null
        assert view == '/bloodDonationRequest/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/bloodDonationRequest/show/1'
        assert controller.flash.message != null
        assert BloodDonationRequest.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/bloodDonationRequest/list'

        populateValidParams(params)
        def bloodDonationRequest = new BloodDonationRequest(params)

        assert bloodDonationRequest.save() != null

        params.id = bloodDonationRequest.id

        def model = controller.show()

        assert model.bloodDonationRequestInstance == bloodDonationRequest
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/bloodDonationRequest/list'

        populateValidParams(params)
        def bloodDonationRequest = new BloodDonationRequest(params)

        assert bloodDonationRequest.save() != null

        params.id = bloodDonationRequest.id

        def model = controller.edit()

        assert model.bloodDonationRequestInstance == bloodDonationRequest
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/bloodDonationRequest/list'

        response.reset()

        populateValidParams(params)
        def bloodDonationRequest = new BloodDonationRequest(params)

        assert bloodDonationRequest.save() != null

        // test invalid parameters in update
        params.id = bloodDonationRequest.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/bloodDonationRequest/edit"
        assert model.bloodDonationRequestInstance != null

        bloodDonationRequest.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/bloodDonationRequest/show/$bloodDonationRequest.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        bloodDonationRequest.clearErrors()

        populateValidParams(params)
        params.id = bloodDonationRequest.id
        params.version = -1
        controller.update()

        assert view == "/bloodDonationRequest/edit"
        assert model.bloodDonationRequestInstance != null
        assert model.bloodDonationRequestInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/bloodDonationRequest/list'

        response.reset()

        populateValidParams(params)
        def bloodDonationRequest = new BloodDonationRequest(params)

        assert bloodDonationRequest.save() != null
        assert BloodDonationRequest.count() == 1

        params.id = bloodDonationRequest.id

        controller.delete()

        assert BloodDonationRequest.count() == 0
        assert BloodDonationRequest.get(bloodDonationRequest.id) == null
        assert response.redirectedUrl == '/bloodDonationRequest/list'
    }
}
