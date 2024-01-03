//
//  EventCardsView.swift
//  event
//
//  Created by Fernando Michetti on 13/12/23.
//

import SwiftUI

struct EventCardsView: View {
    
    let event: EventType
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(event.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipped()
                .cornerRadius(8)
            
            Text(event.name)
                .font(.system(size:22))
                .fontWeight(.heavy)
                .foregroundStyle(Color(.black))
            
            Text(event.place)
                .font(.system(size:14))
                .padding([.top], 1)
                .foregroundStyle(Color(.black))
            
            Text(event.date)
                .font(.system(size:14))
                .foregroundStyle(Color(.red))
        }
    }
}

#Preview {
    EventCardsView(event: eventsMock[0])
}
