package com.blooddonation



import org.junit.*
import grails.test.mixin.*

@TestFor(BloodDonorSearchController)
@Mock(BloodDonorSearch)
class BloodDonorSearchControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/bloodDonorSearch/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.bloodDonorSearchInstanceList.size() == 0
        assert model.bloodDonorSearchInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.bloodDonorSearchInstance != null
    }

    void testSave() {
        controller.save()

        assert model.bloodDonorSearchInstance != null
        assert view == '/bloodDonorSearch/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/bloodDonorSearch/show/1'
        assert controller.flash.message != null
        assert BloodDonorSearch.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/bloodDonorSearch/list'

        populateValidParams(params)
        def bloodDonorSearch = new BloodDonorSearch(params)

        assert bloodDonorSearch.save() != null

        params.id = bloodDonorSearch.id

        def model = controller.show()

        assert model.bloodDonorSearchInstance == bloodDonorSearch
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/bloodDonorSearch/list'

        populateValidParams(params)
        def bloodDonorSearch = new BloodDonorSearch(params)

        assert bloodDonorSearch.save() != null

        params.id = bloodDonorSearch.id

        def model = controller.edit()

        assert model.bloodDonorSearchInstance == bloodDonorSearch
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/bloodDonorSearch/list'

        response.reset()

        populateValidParams(params)
        def bloodDonorSearch = new BloodDonorSearch(params)

        assert bloodDonorSearch.save() != null

        // test invalid parameters in update
        params.id = bloodDonorSearch.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/bloodDonorSearch/edit"
        assert model.bloodDonorSearchInstance != null

        bloodDonorSearch.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/bloodDonorSearch/show/$bloodDonorSearch.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        bloodDonorSearch.clearErrors()

        populateValidParams(params)
        params.id = bloodDonorSearch.id
        params.version = -1
        controller.update()

        assert view == "/bloodDonorSearch/edit"
        assert model.bloodDonorSearchInstance != null
        assert model.bloodDonorSearchInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/bloodDonorSearch/list'

        response.reset()

        populateValidParams(params)
        def bloodDonorSearch = new BloodDonorSearch(params)

        assert bloodDonorSearch.save() != null
        assert BloodDonorSearch.count() == 1

        params.id = bloodDonorSearch.id

        controller.delete()

        assert BloodDonorSearch.count() == 0
        assert BloodDonorSearch.get(bloodDonorSearch.id) == null
        assert response.redirectedUrl == '/bloodDonorSearch/list'
    }
}
