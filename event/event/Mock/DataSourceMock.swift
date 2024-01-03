//
//  DataSourceMock.swift
//  event
//
//  Created by Fernando Michetti on 18/12/23.
//

import Foundation


let eventsMock: [EventType] = [
    EventType(id: 1, name: "Grande Prêmio Rolex Brasil de Formula 1", date: "10/11/2024", place: "Av. Interlagos 2024 - São Paulo", image: "event_default", classificacao: "Automobilismo", sectors: eventSectors),
    EventType(id: 2, name: "5 etapa Stock Car", date: "19/10/2024", place: "Lagoa da Pampulha - Belo Horizonte", image: "event_default", classificacao: "Automobilismo", sectors: eventSectors),
    EventType(id: 3, name: "E-Prix Sao Paulo", date: "01/05/2024", place: "Sambodromo - São Paulo", image: "event_default", classificacao: "Automobilismo", sectors: eventSectors),
    EventType(id: 4, name: "Cruzeiro x Palmeiras", date: "05/03/2024", place: "Allianz Parque - São Paulo", image: "event_default", classificacao: "Futebol", sectors: eventSectors),
    EventType(id: 5, name: "Circuito das Americas", date: "04/02/2024", place: "Av. Contorno - Belo Horizonte", image: "event_default", classificacao: "Atletismo", sectors: eventSectors),
    EventType(id: 6, name: "Sample Event 6", date: "01/01/2024", place: "Sample Location 6", image: "event_default", classificacao: "Sample Classification 6", sectors: eventSectors),
    EventType(id: 7, name: "Sample Event 7", date: "02/01/2024", place: "Sample Location 7", image: "event_default", classificacao: "Sample Classification 7", sectors: eventSectors),
    EventType(id: 8, name: "Sample Event 8", date: "03/01/2024", place: "Sample Location 8", image: "event_default", classificacao: "Sample Classification 8", sectors: eventSectors),
    EventType(id: 9, name: "Sample Event 9", date: "04/01/2024", place: "Sample Location 9", image: "event_default", classificacao: "Sample Classification 9", sectors: eventSectors),
    EventType(id: 10, name: "Sample Event 10", date: "05/01/2024", place: "Sample Location 10", image: "event_default", classificacao: "Sample Classification 10", sectors: eventSectors)
]

let eventSectors: [EventSectorType] = [
    EventSectorType(id: 1, name: "Sector A", description: "Sample description for Sector A", price: "$50"),
    EventSectorType(id: 2, name: "Sector B", description: "Sample description for Sector B", price: "$40"),
    EventSectorType(id: 3, name: "Sector C", description: "Sample description for Sector C", price: "$30")
]


