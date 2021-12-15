//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Владислав on 15.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var logoutButton: UIButton!
    
    var username = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameLabel.text = username
        logoutButton.layer.cornerRadius = 10
    }
    

}
