//
//  LocationNetworkService.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 05/01/2023.
//

import Foundation

class LocationNetworkService : LocationNetworkProtocol {
    
    private let baseLocationUrl = "https://rickandmortyapi.com/api/location"
    
    
    func getLocations() async throws -> [Location] {
        do {
            let url = URL(string: baseLocationUrl)
            
            guard let url = url else {
                throw ApiError.invalidURLError
            }
            
            let response: ListResponseModel<Location>? = try await RMNetworkClient.performGet(for: url)
            
            guard let response = response else {
                throw ApiError.unexpectedError
            }
            
            return response.results
        } catch {
            throw ApiError.unexpectedError
        }
    }
    
    func getLocation(by id: Int) async throws -> Location {
        do {
            let url = URL(string: "\(baseLocationUrl)/\(id)")
            
            guard let url = url else {
                throw ApiError.invalidURLError
            }
            
            let response: Location? = try await RMNetworkClient.performGet(for: url)
            
            guard let response = response else {
                throw ApiError.unexpectedError
            }
            
            return response
        } catch {
            throw ApiError.unexpectedError
        }
    }
    
    
}
