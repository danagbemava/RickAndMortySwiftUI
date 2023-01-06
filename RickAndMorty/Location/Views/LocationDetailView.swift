//
//  LocationDetailView.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 06/01/2023.
//

import SwiftUI

struct LocationDetailView: View {
    
    // Mark :- Properties
    var currentLocation: Location
    
    // Mark :- Body
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                HStack (spacing: 10) {
                    Image(systemName: "t.square.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text(currentLocation.type ?? "Type Unavailable")
                        .font(.title)
                }
                
                Divider()
                
                HStack {
                    Image(systemName: "rectangle.portrait.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                    Text(currentLocation.dimension ?? "Dimension Unavailable")
                        .font(.title2)
                }
                
                Divider()
                
                Group {
                    Text("Characters")
                        .font(.title)
                    
                    VStack(spacing: 10) {
                        ForEach(1..<10, id: \.self) { _ in
                            Text(dummyCharacter.name)
                        }
                    }
                }
                
            }
            .padding(16)
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .topLeading
            )
            
        }
        .navigationTitle(currentLocation.name)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(currentLocation: dummyLocation)
    }
}
