//
//  EventInfoDetailView.swift
//  event
//
//  Created by Fernando Michetti on 03/01/24.
//

import SwiftUI

struct EventInfoDetailView: View {
    let ticket: EventSectorType
    
    @State private var productQuantity = 1
    
    var body: some View {
        VStack{
            HStack(alignment: .center, spacing: 16){
                Text(ticket.name)
                    .font(.title)
                    .bold()
                    .padding()
                
                Spacer()
                
                Text(ticket.price)
                    .font(.title3)
                    .bold()
                    .padding(.horizontal)
            }
            
            HStack{
                Text(ticket.description)
                    .padding(.horizontal)
                
                Spacer()
            }
            
            Spacer()
            
            VStack(spacing: 16) {
                Text("Quantidade")
                    .font(.title3)
                    .bold()
                
                HStack{
                    Button{
                        if productQuantity > 1 {
                            productQuantity  -= 1
                        }
                    } label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.title)
                            .bold()
                            .foregroundStyle(Color(.red))
                    }
                    
                    Text("\(productQuantity)")
                        .font(.title2)
                        .bold()
                    
                    Button{
                        productQuantity += 1
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                            .bold()
                            .foregroundStyle(Color(.red))
                    }
                }
            }
            
            Button(action: {
                print("O botao foi pressionado")
            }, label: {
                HStack{
                    Image(systemName: "cart")
                    Text("Adicionar ao carrinho")
                }
                .padding(.horizontal, 32)
                .padding(.vertical, 16)
                .font(.title3)
                .bold()
                .background(Color.red)
                .foregroundStyle(Color(.white))
                .clipShape(RoundedRectangle(cornerRadius: 32))
            })
            .padding(.top, 45)
        }
    }
}

#Preview {
    EventInfoDetailView(ticket: eventsMock[0].sectors[0])
}
