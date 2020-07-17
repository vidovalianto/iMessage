//
//  TextFieldView.swift
//  iMessage
//
//  Created by Vido Valianto on 7/16/20.
//  Copyright © 2020 Vido Valianto. All rights reserved.
//

import SwiftUI

struct TextFieldView: View {
    @State var text: String = ""
    var body: some View {
        HStack {
            Button(action: {
                print("Add Image Clicked")
            }, label: { Text("+") })
            TextField("",
                      text: $text)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 1))
            if !text.isEmpty {
                Button(action: { print("Add Chat") }, label: { Image(systemName: "paperplane") }) }

        }.padding()
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
