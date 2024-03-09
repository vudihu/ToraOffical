//
//  ViewController.swift
//  ToraOffical
//
//  Created by Hung Vu on 03/03/2024.
//

import UIKit

class LoginScreen: UIViewController {

    @IBOutlet private weak var appNameLabel: UILabel!
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var emailLabel: UILabel!
    @IBOutlet private weak var pwTextField: UITextField!
    @IBOutlet private weak var pwLabel: UILabel!
    @IBOutlet private weak var loginButton: UIButton!
    @IBOutlet private weak var emailView: UIView!
    @IBOutlet private weak var pwView: UIView!
    
    private let appName = "Tiếng Nhật\nTora"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI () {
        let attributedString = NSMutableAttributedString(string: appName)
        let firstFont = UIFont(name: "SFRounded-Bold", size: 24)
        attributedString.addAttribute(.font, value: firstFont ?? .boldSystemFont(ofSize: 24), range: NSRange(location: 0, length: 9))
        let secondFont = UIFont(name: "SFRounded-Bold", size: 52)
        attributedString.addAttribute(.font, value: secondFont ?? .boldSystemFont(ofSize: 52), range: NSRange(location: 10, length: 5))
        appNameLabel.attributedText = attributedString
        [emailView, pwView].forEach {
            $0?.isHidden = true
        }
        emailTextField.layer.cornerRadius = 4
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor(hex: 0xB8B8B8).cgColor
        pwTextField.layer.cornerRadius = 4
        pwTextField.layer.borderWidth = 1
        pwTextField.layer.borderColor = UIColor(hex: 0xB8B8B8).cgColor
        loginButton.layer.cornerRadius = 24
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyboard)))
    }
    
    @objc private func hideKeyboard() {
        self.view.endEditing(true)
    }

    @IBAction private func backToOnboarding(_ sender: Any) {
    }
    
    @IBAction private func topToUpdatePW(_ sender: Any) {
    }
    
    @IBAction private func tapToLogin(_ sender: Any) {
    }
    
    @IBAction private func tapToLoginWithFB(_ sender: Any) {
    }
    
    @IBAction private func tapToLoginWithGG(_ sender: Any) {
    }
    
}

