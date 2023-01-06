//
//  RickAndMortyApp.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 02/01/2023.
//

import SwiftUI

@main
struct RickAndMortyApp: App {
    
    @StateObject var episodesVM = EpisodesViewModel()
    @StateObject var locationsVM = LocationListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(episodesVM)
                .environmentObject(locationsVM)
        }
    }
}
