//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by nikita on 28.11.23.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeMessageLabel: UILabel!
    
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessageLabel.text = "Welcome, \(name ?? "")!"
    }
    
    @IBAction func logOutButtonAction() {
        dismiss(animated: true)
    }

}
