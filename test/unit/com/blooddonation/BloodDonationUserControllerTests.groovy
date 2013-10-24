package com.blooddonation



import org.junit.*
import grails.test.mixin.*

@TestFor(BloodDonationUserController)
@Mock(BloodDonationUser)
class BloodDonationUserControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/bloodDonationUser/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.bloodDonationUserInstanceList.size() == 0
        assert model.bloodDonationUserInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.bloodDonationUserInstance != null
    }

    void testSave() {
        controller.save()

        assert model.bloodDonationUserInstance != null
        assert view == '/bloodDonationUser/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/bloodDonationUser/show/1'
        assert controller.flash.message != null
        assert BloodDonationUser.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/bloodDonationUser/list'

        populateValidParams(params)
        def bloodDonationUser = new BloodDonationUser(params)

        assert bloodDonationUser.save() != null

        params.id = bloodDonationUser.id

        def model = controller.show()

        assert model.bloodDonationUserInstance == bloodDonationUser
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/bloodDonationUser/list'

        populateValidParams(params)
        def bloodDonationUser = new BloodDonationUser(params)

        assert bloodDonationUser.save() != null

        params.id = bloodDonationUser.id

        def model = controller.edit()

        assert model.bloodDonationUserInstance == bloodDonationUser
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/bloodDonationUser/list'

        response.reset()

        populateValidParams(params)
        def bloodDonationUser = new BloodDonationUser(params)

        assert bloodDonationUser.save() != null

        // test invalid parameters in update
        params.id = bloodDonationUser.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/bloodDonationUser/edit"
        assert model.bloodDonationUserInstance != null

        bloodDonationUser.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/bloodDonationUser/show/$bloodDonationUser.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        bloodDonationUser.clearErrors()

        populateValidParams(params)
        params.id = bloodDonationUser.id
        params.version = -1
        controller.update()

        assert view == "/bloodDonationUser/edit"
        assert model.bloodDonationUserInstance != null
        assert model.bloodDonationUserInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/bloodDonationUser/list'

        response.reset()

        populateValidParams(params)
        def bloodDonationUser = new BloodDonationUser(params)

        assert bloodDonationUser.save() != null
        assert BloodDonationUser.count() == 1

        params.id = bloodDonationUser.id

        controller.delete()

        assert BloodDonationUser.count() == 0
        assert BloodDonationUser.get(bloodDonationUser.id) == null
        assert response.redirectedUrl == '/bloodDonationUser/list'
    }
}
