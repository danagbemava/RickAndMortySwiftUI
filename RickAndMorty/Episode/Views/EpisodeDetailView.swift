//
//  EpisodeDetailView.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 06/01/2023.
//

import SwiftUI

struct EpisodeDetailView: View {
    
    // Mark : - Properties
    var episode: Episode
    
    
    // Mark :- Body
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .navigationTitle(episode.episode)
    }
}

struct EpisodeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeDetailView(episode: dummyEpisode)
    }
}
