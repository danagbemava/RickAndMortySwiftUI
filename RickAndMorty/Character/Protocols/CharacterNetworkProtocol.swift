//
//  CharacterNetworkProtocol.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 05/01/2023.
//

import Foundation

protocol CharacterNetworkProtocol {
    
    func getCharacters() async throws -> [Character]
    
    func getCharacter(by id: Int) async throws -> Character
}
