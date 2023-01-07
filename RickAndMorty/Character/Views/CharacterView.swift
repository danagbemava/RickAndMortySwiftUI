//
//  CharacterView.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 07/01/2023.
//

import SwiftUI

struct CharacterView: View {
    
    var character: Character
    
    var body: some View {
        NavigationLink(destination: CharacterDetailView(character: character)) {
            HStack(spacing: 20) {
                if let url = URL(string: character.image) {
                    
                    AsyncImage(url: url, content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 80, maxHeight: 80)
                    }, placeholder: {
                        ProgressView()
                            .frame(maxWidth: 80, maxHeight: 80)
                    })
                    .aspectRatio(contentMode: ContentMode.fit)
                    .clipShape(Circle())
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(character.name)
                        .font(.title)
                    
                    HStack(spacing: 1) {
                        Text(character.species)
                        Text(".")
                        Text(character.status)
                    }
                }
            }
            .padding(8)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        }
        .buttonStyle(.plain)
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView(character: dummyCharacter)
    }
}
