//
//  EpisodeNetworkProtocol.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 04/01/2023.
//

import Foundation

protocol EpisodeNetworkProtocol {
    
    func getAllEpisodes() async throws -> [Episode]
    
    func getEpisode(by id: Int) async throws -> Episode
}
