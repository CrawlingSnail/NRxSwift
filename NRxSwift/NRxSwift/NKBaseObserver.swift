//
//  NKBaseObserver.swift
//  NRxSwift
//
//  Created by Nghia Nguyen on 7/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import Foundation
import RxSwift

public class NKBaseObserver<T>: AnyObject {
    public let anyObserver: AnyObserver<T>

    public init(anyObserver: AnyObserver<T>) {
        self.anyObserver = anyObserver
    }

    public func nk_setValue(value: T) {
        self.anyObserver.onNext(value)
        self.anyObserver.onCompleted()
    }

    public func nk_setError(error: ErrorType) {
        self.anyObserver.onError(error)
    }
}