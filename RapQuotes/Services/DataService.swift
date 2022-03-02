//
//  DataService.swift
//  RapQuotes
//
//  Created by Derrick White on 3/1/22.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Spotlight] {
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        guard pathString != nil else {
            return [Spotlight]()
        }

        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                let spotlightData = try decoder.decode([Spotlight].self, from: data)
                
                for q in spotlightData {
                    q.id = UUID()
                }
                
                return spotlightData
            } catch {
                print(error)
            }
        } catch {
            print(error)
        }
        
        return [Spotlight]()
    }
}
