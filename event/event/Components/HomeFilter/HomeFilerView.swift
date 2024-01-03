//
//  HomeFilerView.swift
//  event
//
//  Created by Fernando Michetti on 13/12/23.
//

import SwiftUI

struct HomeFilerView: View {
    var body: some View {
        HStack{
            Text("Próximos Eventos")
                .font(.title2)
            
            Spacer()
            
//            Menu("Filters"){
//                Button(action: {}) {
//                    Text("Show Sertanejo")
//                }
//            }.foregroundStyle(.red)
        }
        .padding()
    }
}

#Preview {
    HomeFilerView()
}
