//
//  EpisodeNetworkService.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 04/01/2023.
//

import Foundation


class EpisodeNetworkService : EpisodeNetworkProtocol {
    
    private var baseEpisodeUrl = "https://rickandmortyapi.com/api/episode"
    
    func getAllEpisodes() async throws -> [Episode] {
        do {
            let url = URL(string: baseEpisodeUrl)
            
            guard let url = url else {
                throw ApiError.invalidURLError
            }
            
            let response: ListResponseModel<Episode>? = try await RMNetworkClient.performGet(for: url)
            
            guard let response = response else {
                throw ApiError.unexpectedError
            }
            
            return response.results
        } catch {
            throw ApiError.unexpectedError
        }
    }
    
    func getEpisode(by id: Int) async throws -> Episode {
        do {
            let url = URL(string: "\(baseEpisodeUrl)/\(id)")
            
            guard let url = url else  {
                throw ApiError.invalidURLError
            }
            
            let response: Episode? = try await RMNetworkClient.performGet(for: url)
            
            guard let response = response else {
                throw ApiError.unexpectedError
            }
            
            return response
        } catch {
            throw ApiError.unexpectedError
        }
    }
}
