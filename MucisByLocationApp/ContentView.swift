//
//  ContentView.swift
//  MucisByLocationApp
//
//  Created by Perkins, Alexander (ABH) on 04/03/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var locationHandler = LocationHandler()
    
    var body: some View {
        Section {
            VStack {
                Image(systemName: "location.north")
                Text(locationHandler.lastKnownLocation)
                    .padding()
            }
            Button("Find Music ", action: {
                locationHandler.requestLocation()
            })
                .buttonStyle(.bordered)
        }
        .onAppear(perform:{
            locationHandler.requestAuthorisation()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
