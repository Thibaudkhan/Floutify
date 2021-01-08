//
//  Album.swift
//  Floutify
//
//  Created by Sarah Visage on 08/01/2021.
//

import Foundation

struct Album: Codable {
    let title: String
    let songs: [Song]
    let description: String
}
