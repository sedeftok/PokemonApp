//
//  HttpClient.swift
//  PokemonApp
//
//  Created by sedef tok on 29.07.2024.
//

import Foundation
import Alamofire

typealias resultClosure<T: Codable> = (Result<T, Error>) -> Void

enum HttpError: Error {
    case badRequest, badURL, errorDecodingData, invalidURL, badResponse
}

protocol HttpClientProtocol: AnyObject {
    func fetch<T: Codable>(url: URL, completion: @escaping resultClosure<T>)
}

class HttpClient: HttpClientProtocol {
    
    private var alamofireSession: Session
    
    init(alamofireSession: Session) {
        self.alamofireSession = alamofireSession
    }
    
    func fetch<T>(url: URL, completion: @escaping resultClosure<T>) where T : Decodable, T : Encodable {
        
        alamofireSession.request(url, method: .get).responseDecodable(of: T.self) { model in
            
            if model.response?.statusCode == 400 {
                return completion(.failure(HttpError.badRequest))
            }
            
            guard let data = model.value else {
                return completion(.failure(HttpError.errorDecodingData))
            }
            completion(.success(data))
        }
    }
}
