//
//  Riddle5Test.swift
//  RxSwiftRiddlesTests
//
//  Created by Balázs Varga on 2019. 04. 17..
//  Copyright © 2019. W.UP Ltd. All rights reserved.
//

import RxSwift
import RxTest
import RxBlocking
import XCTest
@testable import RxSwiftRiddles

class Riddle7Test: XCTestCase {
    
    func testSolve() {
        let result = try! Riddle7().solve(source: Observable.of(1, 2, 3, 1, 2, 4, 4, 5, 4))
            .toBlocking()
            .toArray()
        
        XCTAssertEqual(result, [1, 2, 3, 4, 5])
    }
}
