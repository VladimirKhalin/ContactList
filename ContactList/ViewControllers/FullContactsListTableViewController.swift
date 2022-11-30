//
//  FullContactsListTableViewController.swift
//  ContactList
//
//  Created by Vladimir Khalin on 27.11.2022.
//

import UIKit

final class FullContactsListTableViewController: UITableViewController   {
    
    var contactList: [Person] = []
    
    // MARK: - Table view data source
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullContact", for: indexPath) as! FullContactTableViewCell
        let currenContact = contactList[indexPath.section]
        cell.phoneNumber.text = currenContact.telephoneNumber
        cell.email.text = currenContact.email
        return cell
    }
}


// indexPath.row
// indexPath.section
