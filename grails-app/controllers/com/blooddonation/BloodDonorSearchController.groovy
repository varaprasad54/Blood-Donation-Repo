package com.blooddonation

import org.springframework.dao.DataIntegrityViolationException

class BloodDonorSearchController {

    def index() {
        BloodDonorSearch bloodDonationSearch = new BloodDonorSearch()
        render(view: 'searchDonor', model: [bloodDonorSearchInstance: bloodDonationSearch]);
    }

    def search() {
        def bloodDonorSearch = new BloodDonorSearch(params)
        render text: 'Success'
    }
}
