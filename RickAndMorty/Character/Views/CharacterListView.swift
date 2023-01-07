//
//  CharacterListView.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 06/01/2023.
//

import SwiftUI

struct CharacterListView: View {
    var body: some View {
        ScrollView {
            
            ForEach(1..<100, id: \.self) {_ in
                CharacterView(character: dummyCharacter)
            }
        }
    }
}

struct CharacterListView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListView()
    }
}
