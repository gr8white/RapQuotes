//
//  QuoteDetailView.swift
//  RapQuotes
//
//  Created by Derrick White on 3/1/22.
//

import SwiftUI

struct QuoteDetailView: View {
    var spotlight: Spotlight
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                Image(spotlight.actionShot)
                    .resizable()
                .scaledToFill()
                
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(spotlight.quotes) { q in
                        VStack(alignment: .leading) {
                            Text(q.quote)
                                .padding(.horizontal)
                            
                            q.reference
                                .padding([.leading, .trailing])
                        }
                        .padding()
                        .frame(width: 375, alignment: .leading)
                        .background(Color.init(hex: q.theme))
                        .foregroundColor(Color.init(hex: q.accent))
                    }
                }
            }
        }
        .navigationBarTitle(spotlight.artist)
        .ignoresSafeArea(edges: .bottom)
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = SpotlightModel()
        
        QuoteDetailView(spotlight: model.spotlights[0])
    }
}
