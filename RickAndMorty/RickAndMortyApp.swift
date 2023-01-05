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
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(episodesVM)
        }
    }
}
