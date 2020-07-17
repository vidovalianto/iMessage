//
//  Person.swift
//  iMessage
//
//  Created by Vido Valianto on 7/16/20.
//  Copyright © 2020 Vido Valianto. All rights reserved.
//

import Foundation

class Person : Hashable {
    private var id = UUID()
    public var name: String
    public var messages = [Message]()

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.id == rhs.id
    }

    public init(_ name: String) {
        self.name = name
    }

    public init(_ name: String, _ messages: [Message]) {
        self.name = name
        self.messages = messages
    }
}

extension Person {
    public static let me = "Me"
}
