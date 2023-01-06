//
//  EpisodeListViewModel.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 06/01/2023.
//

import Foundation

enum LocationListStates {
    
    case loading
    
    case error(String)
    
    case success([Location])
}


@MainActor class LocationListViewModel : ObservableObject {
        
    // Mark : - Properties
    private var locationService = LocationNetworkService()
    @Published private(set) var screenState: LocationListStates = .loading
    
    // Mark : - Methods
    func getLocations() async {
        
        screenState = .loading
        
        do {
            
            let res = try await locationService.getLocations()
            
            screenState = .success(res)
            
            
        } catch {
            print("error: \(error)")
            screenState = .error(String(describing: error))
        }
    }
}
