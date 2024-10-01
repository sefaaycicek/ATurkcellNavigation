//
//  LoginViewModel.swift
//  ATurkcellNavigation
//
//  Created by Sefa Aycicek on 1.10.2024.
//

import UIKit

class LoginViewModel {
    
    private let userDefaultService : UserDefaultServiceProtocol
    init(userDefaultService : UserDefaultServiceProtocol = UserDefaultService()) {
        self.userDefaultService = userDefaultService
    }
    
    var isLoggedIn : Bool {
       return userDefaultService.getLoggedInUser()
    }
    
    func setUserLoggedIn() {
        userDefaultService.setUserLoggedIn(isLoggedIn: true)
    }
}
