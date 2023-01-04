//
//  RMNetworkClient.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 04/01/2023.
//

import Foundation

class RMNetworkClient {
    
    
    static func performGet<T : Codable>(for url: URL) async throws -> T? {
        
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "GET"
        
        
        do {
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            let decoder = JSONDecoder()
            
            return try decoder.decode(T.self, from: data)
            
        } catch {
            print("error: \(error)")
            throw ApiError.unexpectedError
        }
    }
}
