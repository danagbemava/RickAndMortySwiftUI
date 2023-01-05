//
//  Models.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 02/01/2023.
//

import Foundation

struct Episode : Codable, Hashable {
    var id: Int
    var name: String
    var airDate: String
    var episode: String
    var characters: [String]
    var url: String
    
    enum CodingKeys : String, CodingKey {
        case id
        case name
        case airDate = "air_date"
        case episode
        case characters
        case url
    }
}

let dummyEpisode = Episode(
    id: 1,
    name: "Pilot",
    airDate: "December 2, 2013",
    episode: "S01E01",
    characters: [
        "https://rickandmortyapi.com/api/character/1",
        "https://rickandmortyapi.com/api/character/2",
    ],
    url: "https://rickandmortyapi.com/api/episode/1"
)
