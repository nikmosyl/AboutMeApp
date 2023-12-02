//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by nikita on 28.11.23.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet private var welcomeMessageLabel: UILabel!
    
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessageLabel.text = "Welcome, \(name ?? "")!"
    }

}
