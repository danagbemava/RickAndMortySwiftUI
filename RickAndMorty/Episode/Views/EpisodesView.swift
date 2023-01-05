//
//  EpisodeView.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 03/01/2023.
//

import SwiftUI

struct EpisodeView: View {
    
    // Mark : -  properties
    @EnvironmentObject private var vm: EpisodesViewModel
    
    var body: some View {
        ScrollView {
            
            switch vm.screenState {
                
            case .error(let error):
                VStack(alignment: .center, spacing: 20) {
                    Text(error)
                    
                    Button("Retry") {
                        Task {
                           await retry()
                        }
                        
                    }
                }
            case .loading:
                VStack(alignment: .center) {
                    ProgressView()
                }
            case .success(let data):
                LazyVStack {
                    ForEach(data, id: \.self) { episode in
                        EpisodeItemView(episode: episode)
                    }
                }
            }
            
            
        }.task {
            await vm.getEpisodes()
        }
    }
    
    // Mark :- Methods
    func retry() async -> Void {
        await vm.getEpisodes()
    }
    
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeView()
    }
}
