//
//  MessageView.swift
//  iMessage
//
//  Created by Vido Valianto on 7/16/20.
//  Copyright © 2020 Vido Valianto. All rights reserved.
//

import SwiftUI

struct MessageView: View {
    var text: String
    var alignment: Alignment = .leading
    var body: some View {
        VStack {
            Text(text).foregroundColor(Color.white)
            .fontWeight(.light)
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.blue))

        }.frame(
            maxWidth: .infinity,
            alignment: alignment
        )
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(text: "hello there")
    }
}
