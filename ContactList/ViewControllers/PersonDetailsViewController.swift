//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Vladimir Khalin on 27.11.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    @IBOutlet var personFullName: UILabel!
    @IBOutlet var personPhoneNumber: UILabel!
    @IBOutlet var personEmail: UILabel!
    
    var personDetails: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personFullName.text = personDetails.fullName
        personPhoneNumber.text = personDetails.telephoneNumber
        personEmail.text = personDetails.email
    }
}
