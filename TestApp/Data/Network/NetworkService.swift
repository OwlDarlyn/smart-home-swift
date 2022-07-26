//
//  NetworkService.swift
//  TestApp
//
//  Created by Darlyn on 22.07.2022.
//

import Foundation

protocol NetworkService {
    static var shared: NetworkService { get }
    func sendRequest(_ request: PRequest)
}

protocol Prequest {
    var response: ((NetworkResult) -> Void)? { get }
    var userIgnoringError: Bool? { get }
    var needPrintLogs: Bool { get }
    var method: HTTPMethod { get }
    var body: HTTPBody { get }
    var path: URLPath { get }
    var header: Header? { get }
    var urlItem: String? { get }
}

enum NetworkResult {
    case endOperation
    case success(Data)
    case failure(Data)
}

