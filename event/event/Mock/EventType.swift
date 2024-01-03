//
//  EventType.swift
//  event
//
//  Created by Fernando Michetti on 18/12/23.
//

import Foundation

struct EventType: Identifiable {
    let id: Int
    let name: String
    let date: String
    let place: String
    let image: String
    let classificacao: String
    let sectors: [EventSectorType]
}
