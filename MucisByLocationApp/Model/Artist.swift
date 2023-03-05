//
//  Artist.swift
//  MucisByLocationApp
//
//  Created by Perkins, Alexander (ABH) on 05/03/2023.
//

import Foundation


struct Artist: Codable {
    var name: String
    
    private enum CodingKeys: String, CodingKey {
        case name = "artistName"
    }
}
