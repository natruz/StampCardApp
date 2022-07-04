//
//  ContentView.swift
//  studentCongress-stampCard
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 3/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var canteenStalls = [
        CanteenStall(name: "Chinese Noodles"),
        CanteenStall(name: "Chinese Rice"),
    ]
    
    var body: some View {
        NavigationView() {
            List {
                ForEach($canteenStalls) { $stall in
                    NavigationLink {
                        StallDetailView()
                    } label: {
                        Text(stall.name)
                    }
                }
            }
            .navigationTitle("Stalls")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
