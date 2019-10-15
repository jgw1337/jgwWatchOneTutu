//
//  ContentView.swift
//  jgwWatchOneTutu WatchKit Extension
//
//  Created by Dilek Sanver-Wang on 10/14/19.
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var thisTime = TheTime()

    //    @State private var isRefreshed = false
    //
    var body: some View {
        //        var foreverAnimation: Animation {
        //            Animation.spring().repeatForever()
        //        }
        
        let hours = Double(self.thisTime.calendar.component(.hour, from: self.thisTime.date))
        let minutes = Double(self.thisTime.calendar.component(.minute, from: self.thisTime.date))
        let seconds = Double(self.thisTime.calendar.component(.second, from: self.thisTime.date))
        
        let day = self.thisTime.calendar.component(.day, from: self.thisTime.date)

        return ZStack {
            Image("han_solo_watch_face")
            
            Text(String(day))
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .offset(x: 47)
            
            Image("minuteHand")
                .offset(y: -35)
                .frame(width: 22, height: 164)
                .rotationEffect(.degrees(minutes * 6))
            
            Image("hourHand")
                .offset(y: -20)
                .frame(width: 22, height: 104)
                .rotationEffect(.degrees((hours * 30 + minutes/2)))
            
            Image("secondHand")
                .offset(y: -70)
                .rotationEffect(.degrees(seconds * 6))
        }
        .offset(y: 15)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
