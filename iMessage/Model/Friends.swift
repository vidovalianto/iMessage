//
//  Friends.swift
//  iMessage
//
//  Created by Vido Valianto on 7/16/20.
//  Copyright © 2020 Vido Valianto. All rights reserved.
//

import Foundation

class Friends {
    var persons: [Person]

    init() {
        self.persons = [Person]()
        self.persons = Friends.dummyFriends
    }
}

extension Friends {
    private static let dummyFriends = [ Person("John", [Message(person: Person("John"), text: "Hei ho"),
                                                        Message(person: Person(Person.me), text: "Hei there"),
                                                        Message(person: Person(Person.me), text: "How's it going?"),
                                                        Message(person: Person("John"), text: "Great")]),

//                                        Person("Mom", [true: "Hola", false: "og"]),
//                                        Person("Stuart", [true: "Amigos", false: "ers"]),
//                                        Person("Adam", [false: "Helo", true: "fasd"]),
    ]
}
