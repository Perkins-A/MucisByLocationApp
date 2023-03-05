//
//  StateController.swift
//  MucisByLocationApp
//
//  Created by Perkins, Alexander (ABH) on 05/03/2023.
//

import Foundation

class StateController: ObservableObject {
    @Published var lastKnownLocation: String = ""
    let locationHandler: LocationHandler = LocationHandler()
    
    func findMusic() {
        locationHandler.requestLocation()
    }
    
    func requestAccessToLocationData() {
        locationHandler.stateController = self
        locationHandler.requestAuthorisation()
    }
    
    func getArtists() {
        guard let url = URL(string: "https://itunes.apple.com/search?term=Lionel%20Richie&entity=musicArtist")
        else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { (data,response,error) in
            if let data = data {
                print(String(decoding: data, as: UTF8.self))
            }
        }.resume()
    }
}
