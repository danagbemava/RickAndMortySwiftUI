//
//  CharacterDetailView.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 07/01/2023.
//

import SwiftUI

struct CharacterDetailView: View {
    
    var character: Character
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .navigationTitle(character.name)
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(character: dummyCharacter)
    }
}
