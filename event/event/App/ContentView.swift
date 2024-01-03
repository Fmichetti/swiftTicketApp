//
//  ContentView.swift
//  event
//
//  Created by Fernando Michetti on 13/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Text("Ticket Screen")
                .tabItem {
                    Label("My Tickets", systemImage: "ticket")
                    
                }
            
            Text("Settings Screen")
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
            
        }
        .accentColor(.red)
    }
}

#Preview {
    ContentView()
}
