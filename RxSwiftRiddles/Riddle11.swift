//
//  Riddle11.swift
//  RxSwiftRiddles
//
//  Created by Balázs Varga on 2019. 04. 17..
//  Copyright © 2019. W.UP Ltd. All rights reserved.
//

import Foundation
import RxSwift

class Riddle11 {
    /**
     * Let the first emission of the [source] within a time window of 300ms travel downstream but don't emit any other events until the next time window.
     *
     * Use case: Handle the click of a button right away but prevent double clicking by not handling multiple click events within a given time window.
     */
    func solve(source: Observable<Void>) -> Observable<Void> {
        TODO()
    }
}
