//
//  EpisodeItemView.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 03/01/2023.
//

import SwiftUI

struct EpisodeItemView: View {
    
    // Mark: - Properties
    var episode: Episode
    
    // Mark: - View begins
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Title: \(episode.name)")
            Text("Episode number: \(episode.episode)")
        }
        .padding(8)
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        
    }
}

struct EpisodeItemView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeItemView(episode: dummyEpisode)
    }
}
