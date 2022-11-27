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
        "\(firstName) \(secondName)"
    }
    
    static func getContacts() -> [Person] {
        
        var contacts: [Person] = []
        
        for _ in firstNames {
            
            let randomIndexFirstName = Int.random(in: 0...firstNames.count - 1)
            let randomIndexSecondName = Int.random(in: 0...secondNames.count - 1)
            let randomIndexEmail = Int.random(in: 0...emails.count - 1)
            let randomIndexPhone = Int.random(in: 0...telephoneNumbers.count - 1)
            
            let person = Person(
                firstName: firstNames[randomIndexFirstName],
                secondName: secondNames[randomIndexSecondName],
                email: emails[randomIndexEmail],
                telephoneNumber: telephoneNumbers[randomIndexPhone])
            
            contacts.append(person)
            
            firstNames.remove(at: randomIndexFirstName)
            secondNames.remove(at: randomIndexSecondName)
            emails.remove(at: randomIndexEmail)
            telephoneNumbers.remove(at: randomIndexPhone)
        }
        return contacts
    }
    
    
//    static func randomIndex(position: String) -> Int {
//        var randomIndex = 0
//        switch position {
//        case "firstName": randomIndex = Int.random(in: 0...firstNames.count - 1)
//        case "secondName": randomIndex = Int.random(in: 0...secondNames.count - 1)
//        case "email": randomIndex = Int.random(in: 0...emails.count - 1)
//        default: randomIndex = Int.random(in: 0...telephoneNumbers.count - 1)
//        }
//        return randomIndex
//    }
}



