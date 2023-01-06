//
//  Models.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 02/01/2023.
//

import Foundation

struct Character : Codable, Hashable {
    var id: Int
    var name: String
    var status: String
    var species: String
    var type: String
    var gender: String
    var origin: Origin
    var location: Location
    var image: String
    var episode: [String]
    var url: String
}


struct Origin : Codable, Hashable {
    var name: String
    var url: String
}

let dummyOrigin = Origin(name: "Earth", url: "https://rickandmortyapi.com/api/location/1")

let dummyCharacter = Character(
    id: 1,
    name: "Rich Sanchez",
    status: "Alive",
    species: "Human",
    type: "",
    gender: "Male",
    origin: dummyOrigin,
    location: dummyLocation,
    image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
    episode: [
        "https://rickandmortyapi.com/api/episode/1",
        "https://rickandmortyapi.com/api/episode/2",
    ],
    url: "https://rickandmortyapi.com/api/character/1"
)
