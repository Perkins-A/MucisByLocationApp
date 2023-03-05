//
//  ArtistResponse.swift
//  MucisByLocationApp
//
//  Created by Perkins, Alexander (ABH) on 05/03/2023.
//

import Foundation

struct ArtistResponse: Codable {
    var count: Int
    var results: [Artist]
    
    private enum CodingKeys: String, CodingKey {
        case count = "resultCountt"
        case results
    }
}
