//
//  Riddle3Test.swift
//  RxSwiftRiddlesTests
//
//  Created by Balázs Varga on 2019. 04. 17..
//  Copyright © 2019. W.UP Ltd. All rights reserved.
//

import Foundation
import RxSwift
import RxTest
import RxBlocking
import XCTest
@testable import RxSwiftRiddles

class Riddle3Test: XCTestCase {
    
    func testSolve() {
        let result = try! Riddle3().solve(source: Observable.range(start: 0, count: 10))
            .toBlocking()
            .toArray()
        
        XCTAssertTrue([0, 2, 4, 6, 8].elementsEqual(result))
    }
}
