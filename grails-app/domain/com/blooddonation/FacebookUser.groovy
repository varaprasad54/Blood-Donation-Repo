package com.blooddonation

class FacebookUser {

    long uid
    String accessToken
    Date accessTokenExpires

    static belongsTo = [user: User] //connected to main Spring Security domain

    static constraints = { uid unique: true }
}
