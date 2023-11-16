//
//  ContentView.swift
//  JPApexPredators
//
//  Created by Agata Porwit on 11/15/23.
//

import SwiftUI

struct ContentView: View {
    let apController = PredatorController()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(apController.apexPredators) { predator in
                    NavigationLink(destination: Text("Dino")){
                        Text(predator.name)
                    }
                }
            }
            .navigationTitle("Apex Predators")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
