//
//  Quote.swift
//  RapQuotes
//
//  Created by Derrick White on 3/1/22.
//

import Foundation
import UIKit
import SwiftUI

class Spotlight: Identifiable, Decodable {
    var id: UUID?
    var artist: String
    var base: String
    var headshot: String
    var actionShot: String
    var quotes: [Quote]
}

class Quote: Identifiable, Decodable {
    var quote: String
    var song: String
    var album: String
    var theme: String
    var accent: String
    
    var reference: some View {
        HStack {
            Text("- ") +
            Text(song)
                .italic() +
            Text(", ") +
            Text(album)
        }
        .font(/*@START_MENU_TOKEN@*/.caption/*@END_MENU_TOKEN@*/)
    }
}
