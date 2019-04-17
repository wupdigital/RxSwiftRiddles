//
//  Riddle14.swift
//  RxSwiftRiddles
//
//  Created by Balázs Varga on 2019. 04. 17..
//  Copyright © 2019. W.UP Ltd. All rights reserved.
//

import Foundation
import RxSwift

struct IllegalArgumentError: Error { }

class Riddle14 {
    /**
     * Retry the given [source] up to three times unless an [IllegalArgumentError] has been emitted.
     *
     * Use case: Retry an operation for a number of times or until a valid error occurred.
     */
    func solve(source: Single<Void>) -> Single<Void> {
        TODO()
    }
}
