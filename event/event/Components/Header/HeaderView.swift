//
//  HeaderView.swift
//  event
//
//  Created by Fernando Michetti on 13/12/23.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        VStack {
            HStack{
                Spacer ()
                
                Text("Apple Inc.")
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "bell.badge")
                        .font(.title3)
                        .foregroundStyle(.red)
                }
            }
            .padding()
        }
    }
}


#Preview {
    HeaderView()
}
