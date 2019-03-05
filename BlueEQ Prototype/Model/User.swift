//
//  User.swift
//  BlueEQ Prototype
//
//  Created by Alexander Gillie on 2/8/19.
//  Copyright © 2019 Alexander Gillie. All rights reserved.
//

import Foundation

class User {
    private var name = ""
    private var email = ""
    private var password = ""
    private var authToken = ""
    private var assessments = [Assessment]()
    
    init() {
        print("Initialized User object")
    }
    
    // TODO: initialize User object.
    
    // TODO: Provide method to login the user.
    
    func setToken(token: String) {
        self.authToken = token
    }
    
    func getToken() -> String{
        return authToken
    }
    
}
