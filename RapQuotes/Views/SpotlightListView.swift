//
//  ContentView.swift
//  RapQuotes
//
//  Created by Derrick White on 3/1/22.
//

import SwiftUI

struct SpotlightListView: View {
    @ObservedObject var model = SpotlightModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(model.spotlights) { s in
                        NavigationLink(destination: QuoteDetailView(spotlight: s), label: {
                            ZStack {
                                Image(s.headshot)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 325, height: 450, alignment: .center)
                                    .clipped()
                                    .cornerRadius(8)
                                    .padding()
                                VStack(alignment: .center, spacing: 5) {
                                    Text(s.base)
                                        .font(.headline)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 300)
                                    
                                    Text("-" + s.artist)
                                        .font(.caption)
                                }.foregroundColor(.white)
                            }
                        })
                            .shadow(color: .black, radius: 8, x: 2, y: 10)
                    }
                }
                .navigationBarTitle("Rap Quotes")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SpotlightListView()
    }
}
