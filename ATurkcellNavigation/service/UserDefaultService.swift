//
//  UserDefaultService.swift
//  ATurkcellNavigation
//
//  Created by Sefa Aycicek on 1.10.2024.
//

import UIKit

class UserDefaultService : UserDefaultServiceProtocol {
    let USER_LOGGED_IN_KEY: String = "isLoggedIn"
    
    func setUserLoggedIn(isLoggedIn: Bool) {
        UserDefaults.standard.set(isLoggedIn, forKey: USER_LOGGED_IN_KEY)
    }
    
    func getLoggedInUser() -> Bool {
        return UserDefaults.standard.bool(forKey: USER_LOGGED_IN_KEY)
    }
}

protocol UserDefaultServiceProtocol {
    func setUserLoggedIn(isLoggedIn: Bool)
    func getLoggedInUser() -> Bool
}
