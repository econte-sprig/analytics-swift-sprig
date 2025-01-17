//
//  ContentView.swift
//  BasicExample
//
//  Created by Brandon Sneed on 2/23/22.
//

import SwiftUI
import Segment

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    Analytics.main.track(name: "Track", properties: ["age": 3, "item": "cookies"])
                }, label: {
                    Text("Track")
                }).padding(6)
                Button(action: {
                    Analytics.main.track(name: "Signed Out")
                }, label: {
                    Text("Signed Out")
                }).padding(6)
            }.padding(8)
            HStack {
                Button(action: {
                    Analytics.main.identify(userId: "X-1234567890", traits: ["abc": 1])
                }, label: {
                    Text("Identify")
                }).padding(6)
            }.padding(8)
        }.onAppear {
            Analytics.main.track(name: "onAppear")
            print("Executed Analytics onAppear()")
        }.onDisappear {
            Analytics.main.track(name: "onDisappear")
            print("Executed Analytics onDisappear()")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
