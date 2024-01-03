//
//  EventView.swift
//  event
//
//  Created by Fernando Michetti on 20/12/23.
//

import SwiftUI

struct EventInfoView: View {
    let event: EventType
    @Environment(\.dismiss) var presentationMode
    
    @State private var selectedTicket: EventSectorType?
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                Image(event.image)
                    .resizable()
                    .frame(height: 200)
                    .scaledToFit()
                
                HStack {
                    Text(event.name)
                        .font(.title)
                        .bold()
                    
                    Spacer()
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
                
                VStack (alignment: .leading){
                    Text(event.place)
                    Text(event.date)
                        .foregroundStyle(Color(.red))
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
                
                Divider()
                    .padding()
                
                VStack(alignment: .leading){
                    Text("Ingressos")
                        .font(.title2)
                        .bold()
                        .padding(.horizontal)
                    
                    ForEach(event.sectors){sector in
                        
                        HStack{
                            VStack(alignment: .leading) {
                                Text(sector.name)
                                    .foregroundStyle(Color.black)
                                    .font(.title3)
                                
                                Text(sector.price)
                                    .foregroundStyle(Color.red)
                            }
                            
                            Spacer()
                            
                            Button{
                                selectedTicket = sector
                            } label: {
                                Image(systemName: "cart")
                                    .foregroundStyle(.white)
                            }
                            .padding()
                            .background(Color.red)
                            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                            .sheet(item: $selectedTicket) { ticket in
                                EventInfoDetailView(ticket: ticket)
                            }
                        }
                    }
                    .padding()
                }
                
            }
        }
        .toolbar{
            ToolbarItem(placement: .topBarLeading){
                Button{
                    presentationMode.callAsFunction()
                } label: {
                    HStack(spacing: 4) {}
                        .foregroundStyle(Color.red)
                }
            }
        }
    }
}


#Preview {
    EventInfoView(event: eventsMock[0])
}
