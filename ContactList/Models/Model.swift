//
//  Model.swift
//  ContactList
//
//  Created by Vladimir Khalin on 27.11.2022.
//

struct Person {
    let firstName: String
    let secondName: String
    let email: String
    let telephoneNumber: String
    
    var fullName: String {
        "\(firstName) \(secondNames)"
    }
    
    static func getContacts() -> [Person] {
        var contacts: [Person] = []
        for _ in 0...firstNames.count {
            let person = Person(
                firstName: firstNames[Int.random(in: 0...firstNames.count - 1)],
                secondName: secondNames[Int.random(in: 0...secondNames.count - 1)],
                email: emails[Int.random(in: 0...emails.count - 1)],
                telephoneNumber: telephoneNumbers[Int.random(in: 0...telephoneNumbers.count - 1)])
            contacts.append(person)
        }
        return contacts
    }
}



