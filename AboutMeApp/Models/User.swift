//
//  User.swift
//  AboutMeApp
//
//  Created by nikita on 02.12.23.
//

struct User {
    let name: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            name: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}
