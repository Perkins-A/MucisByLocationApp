//
//  ContentView.swift
//  MucisByLocationApp
//
//  Created by Perkins, Alexander (ABH) on 04/03/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var state = StateController()
    
    var body: some View {
        Section {
            VStack {
                Image(systemName: "location.north")
                Text(state.lastKnownLocation)
                    .padding()
            }
            Button("Find Music ", action: {
                state.findMusic()
            })
                .buttonStyle(.bordered)
        }
        .onAppear(perform:{
            state.requestAccessToLocationData()
            state.getArtists()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
