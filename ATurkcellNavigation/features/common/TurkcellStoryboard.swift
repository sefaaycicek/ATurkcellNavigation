//
//  Untitled.swift
//  ATurkcellNavigation
//
//  Created by Sefa Aycicek on 1.10.2024.
//

import Foundation
import UIKit

enum TurkcellStoryboard: String {
    case main = "Main"
    case home = "Home"
    case products = "Products"
    
    var instance : UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: nil)
    }
    
    func viewController<T : UIViewController>(viewControllerClass : T.Type) -> T {
        let storyboardId =  (viewControllerClass as UIViewController.Type).storyboardID
        
        guard let viewController = self.instance.instantiateViewController(withIdentifier: storyboardId) as? T else {
            fatalError("ViewController not found : \(storyboardId)")
        }
        
        return viewController
    
    }
}

extension UIViewController {
    class var storyboardID : String {
        return "\(self)"
    }
}

