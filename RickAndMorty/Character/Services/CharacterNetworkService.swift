//
//  CharacterNetworkService.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 05/01/2023.
//

import Foundation

class CharacterNetworkService : CharacterNetworkProtocol {
    
    private let baseCharacterUrl = "https://rickandmortyapi.com/api/character"
    
    func getCharacters() async throws -> [Character] {
        do {
            let url = URL(string: baseCharacterUrl)
            
            guard let url = url else {
                throw ApiError.invalidURLError
            }
            
            let result: ListResponseModel<Character>? = try await RMNetworkClient.performGet(for: url)
            
            guard let result = result else {
                throw ApiError.unexpectedError
            }
            
            return result.results
            
        } catch {
            print(error)
            throw ApiError.unexpectedError
        }
    }
    
    func getCharacter(by id: Int) async throws -> Character {
        do {
            let url = URL(string: "\(baseCharacterUrl)/\(id)")
            
            guard let url = url else {
                throw ApiError.invalidURLError
            }
            
            let result: Character? = try await RMNetworkClient.performGet(for: url)
            
            guard let result = result else { throw ApiError.unexpectedError }
            
            return result
            
        } catch {
            print(error)
            throw ApiError.unexpectedError
        }
    }
    
}
