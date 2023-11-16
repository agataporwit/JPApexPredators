//
//  ApexPredatorController.swift
//  JPApexPredators
//
//  Created by Agata Porwit on 11/15/23.
//

import Foundation

class ApexPredatorController {
    var apexPredators: [ApexPredatorModel] = []
    
    init() {
        decodeApexPredatorData()
    }
    func decodeApexPredatorData() {
        //if is here to decode the file only if the file exists
        if let url = Bundle.main.url(forResource: "jpapexpredators", withExtension: "json"){
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                apexPredators = try decoder.decode([ApexPredatorModel].self, from: data)
            } catch {
                print("Error decoding JSON data: \(error)")
            }
        }
    }
}


//model is like star-shpe cookie cutter - shows what the cookie will look like but there are no cookies made
