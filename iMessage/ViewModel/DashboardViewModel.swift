//
//  DashboardViewModel.swift
//  iMessage
//
//  Created by Vido Valianto on 7/16/20.
//  Copyright © 2020 Vido Valianto. All rights reserved.
//

import Combine
import Foundation

class DashboardViewModel: ObservableObject {
    @Published
    var friends = Friends().persons
}
