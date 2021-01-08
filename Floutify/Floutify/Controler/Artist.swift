//
//  Artist.swift
//  Floutify
//
//  Created by Sarah Visage on 08/01/2021.
//

import Foundation

struct Artist: Codable {
    let name: String
    let albums: [Album]
}
