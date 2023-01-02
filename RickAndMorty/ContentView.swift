//
//  ContentView.swift
//  RickAndMorty
//
//  Created by Daniel Agbemava on 02/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            TabView {
                Text("Characters")
                    .tabItem {
                        Label(title: {
                            Text("Characters")
                        }, icon: {
                            Image(systemName: "person.fill")
                        })
                    }
                
                Text("Episodes")
                    .tabItem {
                        Label(title: {
                            Text("Episodes")
                        }, icon: {
                            Image(systemName: "e.circle")
                        })
                    }
                
                Text("Locations")
                    .tabItem {
                        Label(title: {
                            Text("Locations")
                        }, icon: {
                            Image(systemName: "location.fill")
                        })
                    }
                
                Text("Compare")
                    .tabItem {
                        Label(title: {
                            Text("Compare")
                        }, icon: {
                            Image(systemName: "arrow.left.arrow.right")
                        })
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
