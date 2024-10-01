//
//  LastScreenViewController.swift
//  ATurkcellNavigation
//
//  Created by Sefa Aycicek on 1.10.2024.
//

import UIKit

class LastScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func mainScreenTapped(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goStep3(_ sender: Any) {
        let viewControllers = self.navigationController?.viewControllers
        if let screen = viewControllers?.filter({ $0 is BlueViewController }).first {
            self.navigationController?.popToViewController(screen, animated: true)
        }
    }
    
    @IBAction func logOut(_ sender: Any) {
        self.navigationController?.dismiss(animated: true , completion: nil)
        UserDefaults.standard.set(false, forKey: "isLoggedIn")
    }
}
