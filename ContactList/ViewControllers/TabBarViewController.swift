//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Vladimir Khalin on 27.11.2022.
//

import UIKit

final class TabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
    let contacts = Person.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendContacts()
    }
    
    private func sendContacts() {
        guard let navControllers = viewControllers as? [UINavigationController] else { return }
        guard let contactLTVC = navControllers[0].topViewController as? ContactsListViewController else { return }
        contactLTVC.contactList = contacts
        guard let fullContactLTVC = navControllers[1].topViewController as? FullContactsListTableViewController else { return }
        fullContactLTVC.contactList = contacts
    }
}
