//
//  Riddle9.swift
//  RxSwiftRiddles
//
//  Created by Balázs Varga on 2019. 04. 17..
//  Copyright © 2019. W.UP Ltd. All rights reserved.
//

import Foundation
import RxSwift

class Riddle9 {
    /**
     * As long as the [trigger] Observable does not emit an item, keep the [main] Observable alive.
     *
     * Use case: Cancel an Observable when something has happened. For instance, stop polling when the user has been logged out.
     */
    func solve(main: Observable<Void>, trigger: Observable<Void>) -> Observable<Void> {
        TODO()
    }
}
