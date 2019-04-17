//
//  Riddle10.swift
//  RxSwiftRiddles
//
//  Created by Balázs Varga on 2019. 04. 17..
//  Copyright © 2019. W.UP Ltd. All rights reserved.
//

import Foundation
import RxSwift

class Riddle10 {
    /**
     * Use the [first] Observable and flatten it with the results of the [function] that returns an Observable.
     *
     * Use case: Get some user data and perform a network request with the user data and have both data accessible afterwards.
     */
    func solve(first: Observable<Int>, function: (Int) -> Observable<String>) -> Observable<(Int, String)> {
        TODO()
    }
}
