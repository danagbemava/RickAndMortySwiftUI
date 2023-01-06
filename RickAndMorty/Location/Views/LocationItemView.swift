//
//  LocationItemView.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 03/01/2023.
//

import SwiftUI

struct LocationItemView: View {
    
    var location: Location
    
    init(location: Location) {
        self.location = location
    }
    
    var body: some View {
        NavigationLink(destination: LocationDetailView(currentLocation: location)) {
            VStack(alignment: .leading, spacing: 10) {
                Text(location.name)
                    .font(.system(size: 20))
                    .bold()
                
                Text(location.url)
            }
            .padding(8)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .padding(8)
        }
        .buttonStyle(.plain)
    }
}

struct LocationItemView_Previews: PreviewProvider {
    static var previews: some View {
        LocationItemView(location: dummyLocation)
    }
}
