//
//  EpisodeView.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 03/01/2023.
//

import SwiftUI

struct EpisodeView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(1..<10, id: \.self) { _ in
                    EpisodeItemView(episode: dummyEpisode)
                }
            }
        }
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeView()
    }
}
