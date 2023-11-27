//
//  ViewController.swift
//  AboutMeApp
//
//  Created by nikita on 27.11.23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if userNameTF.text == "1" && passwordTF.text == "1" {
            return true
        }
        showAlert(
            withTitle: "Invalid login or password",
            andMessage: "Please, enter correct login and password",
            andClean: passwordTF
        )
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.name = userNameTF.text
    }

    @IBAction func loginButtonAction() {
    }
    
    @IBAction func forgetUserNameAction() {
        showAlert(withTitle: "Ooooops!", andMessage: "Your name is 1 😉")
    }
    
    @IBAction func forgetPasswordAction() {
        showAlert(withTitle: "Ooooops!", andMessage: "Your password is 1 😉")
    }
    
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

