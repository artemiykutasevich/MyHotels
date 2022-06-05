//
//  AuthorizationViewController.swift
//  MyHotels
//
//  Created by Artem Kutasevich on 4.06.22.
//

import UIKit

class AuthorizationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.text = "Login to your account"
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        label.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        let emailTextField = UITextField()
        emailTextField.backgroundColor = Colors.textFieldBackground
        emailTextField.layer.cornerRadius = 14
        emailTextField.placeholder = "email"
        view.addSubview(emailTextField)
        
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        let passwordTextField = UITextField()
        passwordTextField.backgroundColor = Colors.textFieldBackground
        passwordTextField.placeholder = "password"
        passwordTextField.layer.cornerRadius = 14
        passwordTextField.isSecureTextEntry = true
        view.addSubview(passwordTextField)
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -60).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        let myButton = UIButton()
        myButton.backgroundColor = Colors.primaryGreen
        myButton.layer.cornerRadius = 28
        myButton.setTitle("Sign in", for: .normal)
        myButton.addTarget(self, action: #selector(authorizationAction), for: .touchUpInside)
        view.addSubview(myButton)
        
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true
        myButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        myButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        myButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
    }
    
    @objc func authorizationAction(sender: UIButton) {
        // Add authorization logic
    }
}

#if DEBUG
import SwiftUI

struct AuthorizationViewControllerPreview: PreviewProvider {
    static var previews: some View {
        AuthorizationViewController().toPreview()
    }
}

#endif
