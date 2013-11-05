package com.blooddonation


class HomeController {

    def index() {
        render(view: 'index')
    }

    def login() {
        render(view: 'login')
    }

    def contact() {
        render(view: 'contact')
    }

    def candonateblood() {
        render(view: 'donationdo')
    }

    def cantdonateblood() {
        render(view: 'donationdont')
    }

}
