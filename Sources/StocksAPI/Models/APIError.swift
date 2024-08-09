//
//  File.swift
//  
//
//  Created by Vaibhav on 01/05/23.
//

import Foundation

public enum APIError: CustomNSError {
    
    case invalidURL
    case invalidResponseType
    case httpStatusCodeFailed(statusCode: Int, error: ErrorResponse?)
    
    public static var errorDomain: String { "StocksAPI" }
    public var errorCode: Int {
        switch self {
        case .invalidURL: return 1
        case .invalidResponseType: return 2
        case .httpStatusCodeFailed: return 3
        }
    }
    
    public var errorUserInfo: [String : Any] {
        let text: String
        switch self {
        case .invalidURL:
            text = "Invalid URL"
        case .invalidResponseType:
            text = "Invalid Response Type"
        case let .httpStatusCodeFailed(statusCode, error):
            if let error = error {
                text = "Error: Status Code\(error.code), message: \(error.description)"
            } else {
                text = "Error: Status Code \(statusCode)"
            }
        }
        return [NSLocalizedDescriptionKey: text]
    }
}
