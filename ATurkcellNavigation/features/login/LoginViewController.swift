//
//  LoginViewController.swift
//  ATurkcellNavigation
//
//  Created by Sefa Aycicek on 1.10.2024.
//

import UIKit

class LoginViewController: UIViewController {
    let viewModel = LoginViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        navigateHomeController()
        
        viewModel.setUserLoggedIn()
    }
 
    func navigateHomeController() {
        let viewController = TurkcellStoryboard.main.viewController(viewControllerClass: ViewController.self)
        let homeViewModel = HomeViewModel(userName: "Sefa", backGroundColor: UIColor.green)
        viewController.viewModel = homeViewModel
        
        let navigation = UINavigationController(rootViewController: viewController)
        
        navigation.modalPresentationStyle = .fullScreen
        navigation.modalTransitionStyle = .crossDissolve
        
        self.present(navigation, animated: true)
        
        /*let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "homeNavigation")
        viewController.modalPresentationStyle = .fullScreen
        viewController.modalTransitionStyle = .crossDissolve
        
        self.present(viewController, animated: true)*/
    }
    
    @IBAction func registerTapped(_ sender: Any) {
        let viewController = TurkcellStoryboard.main.viewController(viewControllerClass: RegisterViewController.self)
        self.navigationController?.pushViewController(viewController, animated: true)
    }

}
