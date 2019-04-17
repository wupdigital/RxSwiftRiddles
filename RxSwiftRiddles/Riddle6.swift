//
//  Riddle6.swift
//  RxSwiftRiddles
//
//  Created by Balázs Varga on 2019. 04. 17..
//  Copyright © 2019. W.UP Ltd. All rights reserved.
//

import Foundation
import RxSwift

class Riddle6 {
    /**
     * Execute both [first] and [second] Single's in parallel and provide both results as a pair.
     * Assume both [first] and [second] will execute on a different thread already.
     * This is a slightly simpler version of [Riddle102], where no schedulers are applied by default.
     *
     * Use case: Execute two network requests in parallel and wait for each other and process the combined data.
     */
    func solve(first: Single<Int>, second: Single<Int>) -> Single<(Int, Int)> {
        TODO()
    }
}
