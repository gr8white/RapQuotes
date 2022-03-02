//
//  QuoteModel.swift
//  RapQuotes
//
//  Created by Derrick White on 3/1/22.
//

import Foundation

class SpotlightModel: ObservableObject {
    @Published var spotlights = [Spotlight]()
    
    init() {
        self.spotlights = DataService.getLocalData()
    }
}
