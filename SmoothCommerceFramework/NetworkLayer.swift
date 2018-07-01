//
//  NetworkLayer.swift
//  SmoothCommerceFramework
//
//  Created by MAC on 01/07/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import Foundation
import RxSwift

class NetworkLayer{
    private let baseURL = URL(string: "http://universities.hipolabs.com/")!
    
    func send<T: Codable>(apiRequest: APIRequest) -> Observable<T> {
        
        print("called here")
        return Observable<T>.create { [unowned self] observer in
            
            print("called here 2")
            let request = apiRequest.request(with: self.baseURL)
            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                do {
                    let model: T = try JSONDecoder().decode(T.self, from: data ?? Data())
                    observer.onNext(model)
                } catch let error {
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            task.resume()
            
            return Disposables.create {
                task.cancel()
            }
        }
    }
}
