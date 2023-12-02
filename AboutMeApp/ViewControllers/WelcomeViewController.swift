//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by nikita on 28.11.23.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet private var welcomeMessageLabel: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessageLabel.text = """
        Welcome, \(user?.name ?? "")!
        My name is \(user?.person.name ?? "") \(user?.person.surname ?? "")
        👋
        """
    }

}
