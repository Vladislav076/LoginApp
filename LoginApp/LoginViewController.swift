//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Владислав on 15.12.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    private var login = "Evgeniya"
    private var password = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
    }
    
    @IBAction func loginButtonPressed() {
        if usernameTF.text == login && passwordTF.text == "12345" {
            performSegue(withIdentifier: "logout", sender: self)
        } else {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
            let alertController = UIAlertController(title: "Oops",
                                                    message: "Username or password is not correct, try again",
                                                    preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) { _ in
                self.usernameTF.text = ""
                self.passwordTF.text = ""
            }
                alertController.addAction(action)
                self.present(alertController, animated: true)
            }
        }
    }
    
    @IBAction func forgetUsernamePressed() {
        let alertController = UIAlertController(title: "Hello ✋",
                                                message: "Your username is \(login) 😎",
                                                preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(action)
        present(alertController,animated: true)
    }
    
    @IBAction func forgetPasswordPressed() {
        let alertController = UIAlertController(title: "Password",
                                                message: "Your password is \(password)",
                                                preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(action)
        present(alertController,animated: true)
    }
    
    @IBAction func unwindSegue(for segue: UIStoryboardSegue) {
        let _ = segue.source as! WelcomeViewController
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "logout" {
            let welcomeVC = segue.destination as! WelcomeViewController
            welcomeVC.username = login
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
    }
    

}
