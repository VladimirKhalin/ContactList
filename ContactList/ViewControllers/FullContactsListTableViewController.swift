//
//  FullContactsListTableViewController.swift
//  ContactList
//
//  Created by Vladimir Khalin on 27.11.2022.
//

import UIKit

class FullContactsListTableViewController: UITableViewController   {
    
    var contactList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    // MARK: - Table view data source
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullContact", for: indexPath)

  

        return cell
    }
}


