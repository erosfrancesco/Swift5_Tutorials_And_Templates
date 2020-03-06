//
//  REST.swift
//  ghibliSpecies
//
//  Created by Eros Reale on 05/03/2020.
//  Copyright © 2020 Eros Reale. All rights reserved.
//

import Foundation
import Combine


// MARK: - Utils
fileprivate let endPoint = "https://ghibliapi.herokuapp.com/species/"

// MARK: - Get Request
func getGhibliSpecies(callback: @escaping (APIError?, [GhibliSpecie]?) -> Void) {
    let url = URL(string: endPoint)!

    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        do {
            
            if let error = error {
                throw error
            }
                
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                throw APIError(type: .httpResponse)
            }
            guard let data = data else {
                throw APIError(type: .noData)
            }

            let decoder = JSONDecoder()
            let posts = try decoder.decode([GhibliSpecie].self, from: data)
            callback(nil, posts)
        }
        catch is APIError {
            callback(error as? APIError, nil)
//            print("Error: \(e.localizedDescription)")
        }
        catch {
            callback(APIError(type: .generic(error.localizedDescription)), nil)
        }
    }
    task.resume()
}

