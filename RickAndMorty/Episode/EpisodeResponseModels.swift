//
//  EpisodeResponseModels.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 04/01/2023.
//

import Foundation


struct EpisodeListResponseModel : Codable {
    
    var info: Info
    var results: [Episode]
}
