//
//  ViewController.swift
//  AboutMeApp
//
//  Created by nikita on 27.11.23.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - IB Outlets and Properties
    @IBOutlet private var userNameTF: UITextField!
    @IBOutlet private var passwordTF: UITextField!
    
    // MARK: - Private Properties
    private let userName = "1"
    private let userPassword = "1"
    
    //MARK: - Override Methods
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if userNameTF.text == userName && passwordTF.text == userPassword {
            return true
        }
        showAlert(
            withTitle: "Invalid login or password",
            andMessage: "Please, enter correct login and password",
            andClean: passwordTF
        )
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue,sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.name = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    @IBAction private func forgetUserNameAction() {
        showAlert(withTitle: "Ooooops!", andMessage: "Your name is \(userName) 😉")
    }
    
    @IBAction private func forgetPasswordAction() {
        showAlert(withTitle: "Ooooops!", andMessage: "Your password is \(userPassword) 😉")
    }
    
    @IBAction private func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    //MARK: - Private Methods
    private func showAlert(
        withTitle title: String,
        andMessage message: String,
        andClean cleaningField: UITextField? = nil
    ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                cleaningField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

