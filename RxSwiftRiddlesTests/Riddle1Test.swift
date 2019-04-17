//
//  Riddle1Test.swift
//  RxSwiftRiddlesTests
//
//  Created by Balázs Varga on 2019. 04. 17..
//  Copyright © 2019. W.UP Ltd. All rights reserved.
//

import Foundation
import XCTest
import RxSwift
import RxTest
import RxBlocking

@testable import RxSwiftRiddles

class Riddle1Test: XCTestCase {
    
    func testSolve() {
        let result = try? Riddle1().solve(value: 5)
            .toBlocking()
            .toArray()
        
        XCTAssertEqual(result?.count, 1)
        XCTAssertEqual(result?.first, 5)
    }
}
