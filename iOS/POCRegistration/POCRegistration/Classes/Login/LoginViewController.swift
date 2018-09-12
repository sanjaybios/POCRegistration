//
//  LoginViewController.swift
//  POCRegistration
//
//  Created by Monica on 05/09/18.
//  Copyright © 2018 Test. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet weak var logoView: UIView!{
        didSet{
            getRoundedCornerView()
        }
    }
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var passcodeTextField: UITextField!{
        didSet{
            passcodeTextField.useUnderline()
        }
    }
    
    //MARK: IBActions
   
    @IBAction func signIn(_ sender: UIButton) {
    }
    
    @IBAction func forgotPassword(_ sender: UIButton) {
    }
    
    @IBAction func navigateToFinancialServiceCompensationScheme(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getRoundedCornerView() {
        logoView.layer.cornerRadius = logoView.bounds.size.width/2;
        logoView.layer.masksToBounds = true;
    }
}
extension LoginViewController:UITextFieldDelegate {
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
}

extension UITextField {
    
    func useUnderline() {
        
        let border = CALayer()
        let borderWidth = CGFloat(1.0)
        border.borderColor = UIColor.black.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - borderWidth, width: self.frame.size.width, height: self.frame.size.height)
        
        border.borderWidth = borderWidth
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}