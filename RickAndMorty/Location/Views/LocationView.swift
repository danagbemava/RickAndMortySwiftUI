//
//  LocationView.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 03/01/2023.
//

import SwiftUI

struct LocationView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(1..<10, id:\.self) { _ in
                    LocationItemView(location: Location(name: "Planet 1", url: "https://rickandmortyapi.com/api/location/3"))
                }
            }
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
