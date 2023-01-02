//
//  Shared+Model.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 02/01/2023.
//

import Foundation

struct Info : Codable {
    
    var count: Int
    var pages: Int
    var next: String?
    var prev: String?
}

struct ListResponseModel<T : Codable> : Codable {
    
    var info: Info
    var results: [T]
}

enum ApiError : String, Error {
    
    case networkError = "There is an issue with your network. Kindly check your network connection and try again"
    case unexpectedError = "An unexpected error occurred. Please try again later"
    case rateLimitError = "Too many requests. Please try again in 24 hours"
}
