//
//  ContentView.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 02/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var selection = 0
    
    var body: some View {
            TabView(selection: $selection) {
                Text("Characters")
                    .tag(0)
                    .tabItem {
                        Label(title: {
                            Text("Characters")
                        }, icon: {
                            Image(systemName: "person.fill")
                        })
                    }
                
                NavigationStack {
                    EpisodeView()
                        .navigationTitle("Episodes")
                        
                }
                .tag(1)
                .tabItem {
                    Label(title: {
                        Text("Episodes")
                    }, icon: {
                        Image(systemName: "e.circle")
                    })
            }
                
                NavigationStack {
                    LocationView()
                        .navigationTitle("Locations")
                }.tag(2)
                    .tabItem {
                        Label(title: {
                            Text("Locations")
                        }, icon: {
                            Image(systemName: "location.fill")
                        })
                    }
                
                Text("Compare")
                    .tag(3)
                    .tabItem {
                        Label(title: {
                            Text("Compare")
                        }, icon: {
                            Image(systemName: "arrow.left.arrow.right")
                        })
                    }
            }.navigationTitle(getNavigationTitle())
    }
    
    // MARK : - private functions
    
    private func getNavigationTitle() -> String {
        if selection == 0 {
            return "Characters"
        } else if selection == 1 {
            return "Episodes"
        } else if selection == 2 {
            return "Locations"
        } else {
            return "Compare"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
