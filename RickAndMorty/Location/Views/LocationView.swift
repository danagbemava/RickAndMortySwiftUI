//
//  LocationView.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 03/01/2023.
//

import SwiftUI

struct LocationView: View {
    
    @EnvironmentObject var vm : LocationListViewModel
    
    var body: some View {
        Group {
            
            switch vm.screenState {
                
            case .loading:
                VStack(alignment: .center) {
                    ProgressView()
                }
            case .error(let error):
                VStack(alignment: .center, spacing: 20) {
                    Text(error)
                    
                    Button("Retry") {
                        Task {
                            
                        }
                    }
                }
            case .success(let locations):
                ScrollView {
                    LazyVStack {
                        ForEach(locations, id:\.self) { location in
                            LocationItemView(location: location)
                        }
                    }
                }
            }
            
        }.task {
            await vm.getLocations()
        }
        
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
