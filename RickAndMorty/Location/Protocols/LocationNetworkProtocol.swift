//
//  LocationProtocol.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 05/01/2023.
//

import Foundation

protocol LocationNetworkProtocol {
    
    func getLocations() async throws -> [Location]
    
    func getLocation(by id: Int) async throws -> Location
}
