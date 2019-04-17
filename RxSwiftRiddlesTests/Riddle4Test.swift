//
//  Riddle4Test.swift
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

class Riddle4Test: XCTestCase {
    
    func testSolve4() {
        
        let subject = Observable.of(Void(), Void(), Void())

        
        let o = Riddle4().solve(source: subject)
       
        let result = try! o.toBlocking().toArray()

        XCTAssertTrue([false, true, false, true].elementsEqual(result))
    }
}
