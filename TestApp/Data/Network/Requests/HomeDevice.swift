//
//  HomeDevice.swift
//  TestApp
//
//  Created by Darlyn on 22.07.2022.
//

import Foundation

enum HomeDeviceRequestResult {
    case success(DevicesModel)
    case error(NSError?)
}

final class HomeDeviceRequest: PRequest {
    var path: URLPath = .modulotest
    var response: ((NetworkResult) -> Void)?
    var userIgnoringError: Bool?
    var method: HTTPMethod = .get
    var needPrintLogs: Bool?
    var body: HTTPBody?
    var Header: Header?
    var urlItem: String?
    
    init(_ resultCallback: @escaping ((HomeDeviceRequestResult) -> Void)) {
        response = { response in
            switch response {
            case .success(let data):
                do {
                    let dataModel = try JSONDecoder().decode(DevicesModel, from: data)
                    resultCallback(.success(dataModel))
                } catch let error {
                    resultCallback(.error(NSError()))
                }
                         case .failure(let data) :
                                    //default
                        resultCallback(.error(NSError()))
                    default: resultCallback(.error(nil))
            }
        }
    }
}
