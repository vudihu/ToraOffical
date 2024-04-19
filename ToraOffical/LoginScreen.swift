//
//  ViewController.swift
//  ToraOffical
//
//  Created by Hung Vu on 03/03/2024.
//

import UIKit
import SwiftHEXColors
import Alamofire
import MBProgressHUD

class LoginScreen: UIViewController {
    
    @IBOutlet private weak var appNameLabel: UILabel!
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var emailLabel: UILabel!
    @IBOutlet private weak var pwTextField: UITextField!
    @IBOutlet private weak var pwLabel: UILabel!
    @IBOutlet private weak var loginButton: UIButton!
    @IBOutlet private weak var emailView: UIView!
    @IBOutlet private weak var pwView: UIView!
    @IBOutlet private weak var eyesImage: UIImageView!
    @IBOutlet private weak var showHidePWButton: UIButton!
    @IBOutlet private weak var forgotPWButton: UIButton!
    @IBOutlet private weak var loginWithFBButton: UIButton!
    @IBOutlet private weak var loginWithGGButton: UIButton!
    @IBOutlet private weak var backButton: UIButton!
    @IBOutlet private weak var showHidePassword: UIButton!
    
    private let appName = "Tiếng Nhật\nTora"
    
    private var isShowPassword: Bool = false {
        didSet {
            pwTextField.isSecureTextEntry = !isShowPassword
            eyesImage.image = isShowPassword ? UIImage(named: "Eye") : UIImage(named: "EyeSlash")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        let attributedString = NSMutableAttributedString(string: appName)
        let firstFont = UIFont(name: "SFRounded-Bold", size: 24)
        attributedString.addAttribute(.font, value: firstFont ?? .boldSystemFont(ofSize: 24), range: NSRange(location: 0, length: 9))
        let secondFont = UIFont(name: "SFRounded-Bold", size: 52)
        attributedString.addAttribute(.font, value: secondFont ?? .boldSystemFont(ofSize: 52), range: NSRange(location: 10, length: 5))
        appNameLabel.attributedText = attributedString
        [emailView, pwView].forEach {
            $0?.isHidden = true
        }
        [emailTextField, pwTextField].forEach {
            $0.layer.cornerRadius = 4
            $0.layer.borderWidth = 1
            $0.layer.borderColor = UIColor(hexString: "#B8B8B8")?.cgColor
        }
        loginButton.layer.cornerRadius = 24
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyboard)))
        //        emailTextField.text = "hungvd@gmail.com"
        //        pwTextField.text = "1234567890"
        emailTextField.delegate = self
        pwTextField.delegate = self
        isShowPassword = false
    }
    
    
    private func handleLogin() {
        let isValidEmail = isValidEmail(emailTextField.text ?? "")
        let isValidPW = pwTextField.text?.count ?? 0 >= 8
        if isValidEmail && isValidPW {
            let home = MainTabbarViewController()
            navigationController?.pushViewController(home, animated: false)
        } else {
            let alertVC = UIAlertController(title: "Xảy ra lỗi", message: "Kiểm tra Email hoặc Password", preferredStyle: .alert)
            let closeAction = UIAlertAction(title: "Đóng", style: .cancel)
            alertVC.addAction(closeAction)
            present(alertVC, animated: false)
        }
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailFormat = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailFormat.evaluate(with: email)
    }
    
    private func onHandleValidateForm(email: String, password: String) -> Bool {
        var isEmailValid = false
        if email.isEmpty || (!isValidEmail(email)) {
            emailTextField.layer.borderColor = UIColor.red.cgColor
        }
        else {
            isEmailValid = true
            emailTextField.layer.borderColor = UIColor(hexString: "#81A0D3")?.cgColor
            
        }
        
        var isPasswordValid = false
        if password.isEmpty || password.count < 6 {
            pwTextField.layer.borderColor = UIColor.red.cgColor
        }
        else {
            isPasswordValid = true
            pwTextField.layer.borderColor = UIColor(hexString: "#81A0D3")?.cgColor
        }
        let isValid = isEmailValid && isPasswordValid
        return isValid
    }
    
    @objc private func hideKeyboard() {
        self.view.endEditing(true)
    }
    
    @IBAction func handleButton(_ sender: UIButton) {
        switch sender {
        case backButton:
            let onboarding = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OnboardingScreen") as! OnboardingScreen
            navigationController?.pushViewController(onboarding, animated: false)
        case showHidePassword:
            isShowPassword.toggle()
        case forgotPWButton, loginWithFBButton, loginWithGGButton:
            let errorScreen = ErrorScreen()
            errorScreen.modalPresentationStyle = .overFullScreen
            present(errorScreen, animated: false, completion: nil)
        case loginButton:
            handleLogin()
        default:
            break
        }
    }
}

extension LoginScreen: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text ?? ""
        let newText = (currentText as NSString).replacingCharacters(in: range, with: string)
        
        if textField == emailTextField {
            if newText.isEmpty || (!isValidEmail(newText)) {
                emailTextField.layer.borderColor = UIColor.red.cgColor
            } else {
                emailTextField.layer.borderColor = UIColor(hexString: "#81A0D3")?.cgColor
            }
        }
        
        if textField == pwTextField {
            if newText.isEmpty || newText.count < 8 {
                pwTextField.layer.borderColor = UIColor.red.cgColor
            } else {
                pwTextField.layer.borderColor = UIColor(hexString: "#81A0D3")?.cgColor
            }
        }
        
        let isEmailValid = textField == emailTextField ? isValidEmail(newText) : isValidEmail(emailTextField.text ?? "")
        let isPasswordValid = textField == pwTextField ? newText.count >= 8 : pwTextField.text?.count ?? 0 >= 8
        
        if isEmailValid && isPasswordValid {
            loginButton.backgroundColor = .black
            loginButton.titleLabel?.textColor = .white
        } else {
            loginButton.backgroundColor = UIColor(hexString: "#F0EFEF")
            loginButton.titleLabel?.textColor = UIColor(hexString: "#767272")
        }
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.attributedPlaceholder = NSAttributedString(string: "")
        if textField == self.emailTextField {
            self.emailView.isHidden = false
        } else {
            self.pwView.isHidden = false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text == "" {
            textField.attributedPlaceholder = NSAttributedString(string: textField == self.emailTextField ? "E-mail" : "Mật khẩu")
            self.emailView.isHidden = true
            self.pwView.isHidden = true
        }
    }
}
