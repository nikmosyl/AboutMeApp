//
//  Person.swift
//  AboutMeApp
//
//  Created by nikita on 02.12.23.
//

struct Person {
    let name: String
    let surname: String
    let company: String
    let team: String
    let post: String
    let bio: String
    
    static func getPerson() -> Person {
        Person(
            name: "Nikita",
            surname: "Moskalev",
            company: "EDC",
            team: "Сommercial development",
            post: "Embedded developer",
            bio: "Родился в 1994 году. В 2018 окончил магистратуру по направлению \"Проектирование и производство электронной аппаратуры\". С 2015 разрабатывает электронику для индустриальных применений."
        )
    }
}
