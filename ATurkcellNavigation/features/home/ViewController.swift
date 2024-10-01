//
//  ViewController.swift
//  ATurkcellNavigation
//
//  Created by Sefa Aycicek on 1.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var textField: UITextField!
    var viewModel : HomeViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        self.title = viewModel.userName
        self.view.backgroundColor = viewModel.backGroundColor
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        //sender.value
    }
    @IBAction func switchAction(_ sender: UISwitch) {
        if sender.isOn {
            activityIndicator.startAnimating()
        } else {
            activityIndicator.stopAnimating()
        }
    }
    
}

extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let nextTextField = self.view.viewWithTag(textField.tag + 1) as? UITextField {
            nextTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return (textField.text?.count ?? 0) > 10
    }

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == self.textField {
            guard let text = textField.text else { return true}
            let newLength = text.count + string.count - range.length
            return newLength <= 10
        }
        
        return true
    }
}
