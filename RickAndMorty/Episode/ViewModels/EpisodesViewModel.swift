//
//  EpisodesViewModel.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 05/01/2023.
//

import Foundation

enum EpisodeListScreenState {
    
    case loading
    
    case success(data : [Episode])
    
    case error(error: String)
}


@MainActor
class EpisodesViewModel : ObservableObject {
    
    // Mark : - Properties
    private let episodeService : EpisodeNetworkService = EpisodeNetworkService()
    @Published private(set) var screenState: EpisodeListScreenState = .loading
    
    //Mark : - Methods
    func getEpisodes() async {
        
        screenState = .loading
        
        do {
            let data = try await episodeService.getAllEpisodes()
            
            screenState = .success(data: data)
            
        } catch {
            
            screenState = .error(error: String(describing: error))
        }
    }
}
