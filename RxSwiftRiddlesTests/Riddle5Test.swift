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

class Riddle5Test: XCTestCase {
    
    func testSolve() {
        
        let scheduler = TestScheduler(initialClock: 0)
        
        let first = BehaviorSubject(value: 0)
        let second = BehaviorSubject(value: 0)
        
        let o = Riddle5().solve(first: first, second: second)
        
        let result1 = scheduler.createObserver(Int.self)
        let subscription1 = o.subscribe(result1)
        
        scheduler.scheduleAt(100) {
            subscription1.dispose()
        }
        
        let result2 = scheduler.createObserver(Int.self)
        let subscription2 = o.subscribe(result2)
        
        scheduler.scheduleAt(200) {
            first.onNext(5)
        }
        
        scheduler.scheduleAt(300) {
            subscription2.dispose()
        }
        
        let result3 = scheduler.createObserver(Int.self)
        let subscription3 = o.subscribe(result3)
        
        scheduler.scheduleAt(400) {
            second.onNext(6)
        }
        
        scheduler.scheduleAt(500) {
            subscription3.dispose()
        }
        
        let result4 = scheduler.createObserver(Int.self)
        let subscription4 = o.subscribe(result4)
        
        scheduler.scheduleAt(500) {
            first.onNext(-6)
        }
        
        scheduler.scheduleAt(600) {
            subscription4.dispose()
        }
        
        scheduler.start()
        
        XCTAssertEqual(result1.events, [.next(0,0)])
        XCTAssertEqual(result2.events, [.next(0,0), .next(200, 5)])
        XCTAssertEqual(result3.events, [.next(0,0), .next(200, 5), .next(400, 11)])
        XCTAssertEqual(result4.events, [.next(0,0), .next(200, 5), .next(400, 11), .next(500, 0)])
    }
}
