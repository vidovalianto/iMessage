//
//  ContentView.swift
//  iMessage
//
//  Created by Vido Valianto on 7/16/20.
//  Copyright © 2020 Vido Valianto. All rights reserved.
//

import SwiftUI

struct DashboardView: View {
    @ObservedObject var dashboardVM = DashboardViewModel()
    var body: some View {
        NavigationView {
            List(dashboardVM.friends, id: \.self) { friend in
                NavigationLink(destination: ChatView(person: friend)) {
                    VStack {
                        Text(friend.name).fontWeight(.semibold)
                        Text(friend.messages.last?.text ?? "").fontWeight(.ultraLight)
                    }
                }.navigationBarTitle("iMessage").navigationBarItems(trailing: Button(action: { print("Add Chat") }, label: { Image(systemName: "square.and.pencil") }))
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
