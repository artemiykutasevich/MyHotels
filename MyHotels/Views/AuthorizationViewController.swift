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
        
        // MARK: - Title
        
        let label = UILabel()
        label.text = "Login to your \nAccount"
        label.font = UIFont(name: ProjectFonts.titleFont, size: ProjectFonts.titleFontSize)
        label.numberOfLines = 2
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -250).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        label.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        // MARK: - Email
        
        let mailImageView = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 24.0, height: 24.0))
        let mailImage = UIImage(systemName: "mail")
        mailImageView.image = mailImage
        mailImageView.contentMode = .scaleAspectFit
        
        let mailView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        mailView.addSubview(mailImageView)
        
        let emailTextField = UITextField()
        emailTextField.backgroundColor = ProjectColors.textFieldBackgroundColor
        emailTextField.textColor = ProjectColors.textFieldForegroundColor
        emailTextField.layer.cornerRadius = 14
        emailTextField.placeholder = "email"
        
        emailTextField.leftViewMode = .always
        emailTextField.leftView = mailView
        emailTextField.tintColor = ProjectColors.textFieldForegroundColor
        
        view.addSubview(emailTextField)
        
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -130).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        // MARK: - Password
        
        let passwordImageView = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 24.0, height: 24.0))
        let passwordImage = UIImage(systemName: "lock")
        passwordImageView.image = passwordImage
        passwordImageView.contentMode = .scaleAspectFit
        
        let passwordView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        passwordView.addSubview(passwordImageView)
        
        let passwordTextField = UITextField()
        passwordTextField.backgroundColor = ProjectColors.textFieldBackgroundColor
        passwordTextField.textColor = ProjectColors.textFieldForegroundColor
        passwordTextField.placeholder = "password"
        passwordTextField.layer.cornerRadius = 14
        passwordTextField.isSecureTextEntry = true
        
        passwordTextField.leftViewMode = .always
        passwordTextField.leftView = passwordView
        passwordTextField.tintColor = ProjectColors.textFieldForegroundColor
        
        view.addSubview(passwordTextField)
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -60).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        // MARK: - Sign In Button
        
        let myButton = UIButton()
        myButton.backgroundColor = ProjectColors.primaryGreenColor
        myButton.layer.cornerRadius = 28
        myButton.setTitle("Sign in", for: .normal)
        myButton.titleLabel?.font = UIFont(name: ProjectFonts.titleFont, size: ProjectFonts.bodyFontSize)
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
