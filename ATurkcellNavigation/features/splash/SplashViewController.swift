//
//  SplashViewController.swift
//  ATurkcellNavigation
//
//  Created by Sefa Aycicek on 1.10.2024.
//

import UIKit

class SplashViewController: UIViewController {

    let viewModel = SplashViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            if self.viewModel.isLoggedIn {
                self.navigateHomeController()
            } else {
                self.navigateLoginController()
            }
        }
    }
    
    func navigateLoginController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "loginNavigation")
        viewController.modalPresentationStyle = .fullScreen
        viewController.modalTransitionStyle = .crossDissolve
        
        self.present(viewController, animated: true)
    }

    func navigateHomeController() {
        let viewController = TurkcellStoryboard.main.viewController(viewControllerClass: ViewController.self)
        let homeViewModel = HomeViewModel(userName: "Sefa", backGroundColor: UIColor.green)
        viewController.viewModel = homeViewModel
        
        let navigation = UINavigationController(rootViewController: viewController)
        
        navigation.modalPresentationStyle = .fullScreen
        navigation.modalTransitionStyle = .crossDissolve
        
        self.present(navigation, animated: true)
    }
    
}
