//
//  ApiConstans.swift
//  TestApp
//
//  Created by Darlyn on 22.07.2022.
//

import Foundation
import CoreImage
import UIKit

public typealias HTTPBody = [String: Codable]

enum URLPath: Equatable {
            
    case modulotest
        
    var rawValue: String {
        switch self {
        case .modulotest: return "modulotest/data.json"
       }
    }
}

struct Header {
    var token: String
}

enum InternalResult {
    case result(Data)
    case error(NSError)
}

enum HTTPMethod: String {
    case get = "GET"
}
