//
//  Riddle2Test.swift
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

class Riddle2Test: XCTestCase {
    
    func testSolve() {
        let result = try! Riddle2().solve(source: Observable.of(-1, 0, 5))
            .toBlocking()
            .toArray()
        
        XCTAssertTrue([0, 1, 6].elementsEqual(result))
    }
    
}
