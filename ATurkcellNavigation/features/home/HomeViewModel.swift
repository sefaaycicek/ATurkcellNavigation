//
//  HomeViewModel.swift
//  ATurkcellNavigation
//
//  Created by Sefa Aycicek on 1.10.2024.
//

import UIKit

class HomeViewModel {
    let userDefault : UserDefaultServiceProtocol
    let userName : String
    let backGroundColor : UIColor
    
    init(userDefault: UserDefaultServiceProtocol = UserDefaultService(), userName: String, backGroundColor: UIColor) {
        self.userDefault = userDefault
        self.userName = userName
        self.backGroundColor = backGroundColor
    }
}
