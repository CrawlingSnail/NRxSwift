//
//  NKResult.swift
//  NRxSwift
//
//  Created by Nghia Nguyen on 6/25/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import Foundation
import RxSwift

import Foundation
import RxSwift

public typealias NKObservable = Observable<NKResult>

public class NKResult: AnyObject {
    
    private(set) var value: Any? {
        didSet {
            self.type = self.value.dynamicType.self
        }
    }
    private(set) var type: Any.Type?
    private(set) var error: ErrorType?
    
    public static var Empty: NKResult {
        return NKResult()
    }
    
    public init() {}
    
    public init(value: Any?) {
        self.value = value
    }
    
    public init(error: ErrorType) {
        self.error = error
    }
}
