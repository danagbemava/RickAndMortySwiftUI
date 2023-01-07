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
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                GroupedText(title: "Name", text: episode.name)
                GroupedText(title: "Air Date", text: episode.airDate)
                
                Text("Characters")
                    .font(.headline)
                
                ForEach(episode.characters, id: \.self) { character in
                    Text(character)
                }
                
            }
            
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .navigationTitle(episode.episode)
    }
}

struct EpisodeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeDetailView(episode: dummyEpisode)
    }
}

struct GroupedText: View {
    
    var title: String
    var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            Text(text)
        }
    }
}
