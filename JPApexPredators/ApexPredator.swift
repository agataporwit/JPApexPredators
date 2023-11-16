//
//  ApexPredatorModel.swift
//  JPApexPredators
//
//  Created by Agata Porwit on 11/15/23.
//

import Foundation

struct ApexPredatorModel: Codable, Identifiable {
    let id: Int
    let name: String
    let type: String
    let movies: [String]
    let movieScenes: [MovieScenes]
    let link: String
}

struct MovieScenes: Codable {
    let id: Int
    let movie: String
    let movieScenes: String
}
