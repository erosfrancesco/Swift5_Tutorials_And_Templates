//
//  Errors.swift
//  ghibliSpecies
//
//  Created by Eros Reale on 06/03/2020.
//  Copyright © 2020 Eros Reale. All rights reserved.
//

import Foundation



struct APIError: Error {
    enum ErrorType {
        case invalidEndpoint
        case noData
        case httpResponse
        case generic(_ mex: String)
    }
    
    var type: Self.ErrorType
    var description: String {
        switch type {
        case .invalidEndpoint:
            return "URL not found"
        case .noData:
            return "Missing response data"
        case .httpResponse:
            return "Invalid HTTP response code"
        case .generic(let mex):
            return mex
        }
    }
}
