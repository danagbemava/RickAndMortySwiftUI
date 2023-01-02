//
//  CharacterListViewStates.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 02/01/2023.
//

import Foundation

enum CharacterListViewStates {
    
    case loading
    
    case error(ApiError)
    
    case success([Character])
}

// TODO: Add a section for comparing characters
