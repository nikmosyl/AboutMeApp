//
//  AboutViewController.swift
//  AboutMeApp
//
//  Created by nikita on 02.12.23.
//

import UIKit

final class AboutViewController: UIViewController {
    
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var surnameLabel: UILabel!
    @IBOutlet private var companyLabel: UILabel!
    @IBOutlet private var teamLabel: UILabel!
    @IBOutlet private var postLabel: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user?.person.name
        surnameLabel.text = user?.person.surname
        companyLabel.text = user?.person.company
        teamLabel.text = user?.person.team
        postLabel.text = user?.person.post
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
        bioVC?.title = "\(user?.person.name ?? "") \(user?.person.surname ?? "")"
        bioVC?.user = user
    }

}
