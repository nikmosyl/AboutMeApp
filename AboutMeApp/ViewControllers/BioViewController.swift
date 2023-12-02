//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by nikita on 02.12.23.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet private var bioLabel: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bioLabel.text = user?.person.bio
    }
    

}
