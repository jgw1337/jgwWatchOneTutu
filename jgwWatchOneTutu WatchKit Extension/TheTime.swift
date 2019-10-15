//
//  TheTime.swift
//  jgwWatchOneTutu WatchKit Extension
//
//  Created by Dilek Sanver-Wang on 10/14/19.
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI
import Combine

class TheTime: ObservableObject {
    @Published var date = Date()
    @Published var calendar = Calendar.current
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            self.date = Date()
            self.calendar = Calendar.current
        }
    }
}
