//
//  ChatView.swift
//  iMessage
//
//  Created by Vido Valianto on 7/16/20.
//  Copyright © 2020 Vido Valianto. All rights reserved.
//

import SwiftUI

struct ChatView: View {
    var person: Person
    var body: some View {
        VStack {
            Spacer()
            ForEach(person.messages, id: \.self) { message in
                MessageView(text: message.text, alignment: (message.person.name == Person.me ? .trailing : .leading)).padding()
            }
            TextFieldView()
        }.navigationBarTitle(person.name)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(person:  Person("John", [Message(person: Person("John"), text: "Hei ho")]))
    }
}
