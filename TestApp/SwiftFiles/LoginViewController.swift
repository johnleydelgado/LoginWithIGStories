//
//  ViewController.swift
//  TestApp
//
//  Created by Rapha Solution on 10/17/18.
//  Copyright © 2018 Rapha Solution. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTestField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    @IBAction func Tab(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    @IBAction func signButton(_ sender: Any) {
        
        if self.usernameTextField.text == "" || self.passwordTestField.text == "" {
            
            let alert = UIAlertController(title: "Error", message: "Please fill up email or password", preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style: .cancel, handler: nil)
            
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
            
        }
        else{
            Auth.auth().signIn(withEmail: self.usernameTextField.text!, password: self.passwordTestField.text!) {
                (user,error) in
                
                if error == nil {
                    let alert = UIAlertController(title: "Authentication", message: "Login Sucessfull", preferredStyle: .alert)
                    let ok = UIAlertAction(title: "ok", style: .cancel){
                        (press) in
                        
                        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Homepage")
                        self.present(vc!, animated: true, completion: nil)
                        
                    }
                    
                    alert.addAction(ok)
                    self.present(alert, animated: true, completion: nil)
                }
                
                else{
                    let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let ok = UIAlertAction(title: "ok", style: .cancel, handler: nil)
                    
                    alert.addAction(ok)
                    self.present(alert, animated: true, completion: nil)
                    
                }
            }
            
          
        }
        
    }
    
    
}

