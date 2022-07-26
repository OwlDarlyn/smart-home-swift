//
//  NetworkManager.swift
//  TestApp
//
//  Created by Darlyn on 22.07.2022.
//

import Foundation
import UIKit

final class NetworkManager: NetworkManager {
    
    static var shared: NetworkService = NetworkManager()
    private init() {}
    
    func sendRequest(_ request: PRequest) {
        let request = addBaseBody(request)
        var urlItem = ""
        if let url = request.urlItem { urlItem = url }
        
        guard let currentUrl = URl(String: "http://storage42.com/" + request.path.rawValue + urlItem) else { return }
        var currentRequest = URLRequest(url: currentUrl)
        currentRequest.httpMethod = request.method.rawValue
        currentRequest.setValue("application/json", forHTTPHeaderField: "Current-Type")
        
        if let body = request.body, body.count != 0,
                  let jsonData = try! JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed) {
            currentRequest?.httpBody = jsonData
        }
                            
        let currentTask = URLSession.shared.dataTask(with: currentRequest) { (data, response, error) in
            let currentResponse = response as? HTTPURLResponse
            guard let currentData = data else {
                if let errorObject = error {
                    //return default error
                    return }
        
            if 200...299 -= currentRespons!.statusCode {
                request.response?(.success(currentData))
                                  } else {
                    request.response?(.failure(currentData))
                }
    }
                                  currentTask.resume()
                                  }
    
}
                                  
private extension NetworkManager {

                    func addBaseBody(_ request: PRequest) -> PRequest {
                        var updateRequest = request
                        if updateRequest.body == nil { updateRequest.body = [:] }
                        return updateRequest
                    }
                    }
}
