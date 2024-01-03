//
//  HomeView.swift
//  event
//
//  Created by Fernando Michetti on 13/12/23.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading){
                HeaderView()
                
                HStack{
                    TextField("Search all events...", text: $searchText)
                        .padding(8)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                }
                .padding()
                
//                HomeFilerView()
                
                ScrollView (.vertical){
                    if eventsMock.isEmpty {
                        Text ("Nenhum evento recente")
                            .font(.title2)
                            .bold()
                            .padding(.vertical, 32)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    } else {
                        ForEach(eventsMock){ event in
                            NavigationLink(destination: EventInfoView(event: event)) {
                                  
                                EventCardsView(event: event)
                                    .padding()
                                    .multilineTextAlignment(.leading)
                               }
                        }
                    }
                    
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
