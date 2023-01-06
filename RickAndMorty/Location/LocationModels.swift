//
//  Models.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 02/01/2023.
//

import Foundation

struct Location : Codable, Hashable {
    var id: Int?
    var name: String
    var type: String?
    var dimension: String?
    var residents: [String]?
    var url: String
}


struct LocationListResponseModel : Codable {
    
    var info: Info
    var results: [Location]
}

let dummyLocation = Location(name: "Earth", url: "https://rickandmortyapi.com/api/location/20")
