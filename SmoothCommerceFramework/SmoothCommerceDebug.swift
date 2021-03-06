//
//  SmoothCommerceDebug.swift
//  SmoothCommerceFramework
//
//  Created by MAC on 01/07/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import Foundation
import RxSwift

public class SmoothCommerceDebug{
    //1.
    private var isDebug: Bool!
    
    //2.
    public init() {
        self.isDebug = false
    }
    
    //3.
    public func setup(isDebug: Bool) {
        self.isDebug = isDebug
        ViewController.initiateFramework()
        print("Project is in Debug mode: \(isDebug)")
    }
    
    //4.
    public func YPrint<T>(value: T) {
        if self.isDebug == true {
            print(value)
        } else {
            //Do any stuff for production mode
        }
    }
}
