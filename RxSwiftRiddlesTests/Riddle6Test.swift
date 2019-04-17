//
//  Riddle6Test.swift
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

class Riddle6Test: XCTestCase {
    
    func testSolve() {
        
        let scheduler = TestScheduler(initialClock: 0)
        
        var subscribeCounter: Int32 = 0
        
        let first = Single<Int>.timer(5, scheduler: scheduler)
            .map { _ in 10 }
            .do(onSubscribe: {
                OSAtomicIncrement32(&subscribeCounter)
            })
        
        let second = Single.just(5)
            .do(onSubscribe: {
                OSAtomicIncrement32(&subscribeCounter)
            })
        
        let o = Riddle6().solve(first: first, second: second)

        let result1 = scheduler.createObserver((Int, Int).self)
        let subscription1 = o.asObservable().subscribe(result1)
    
        let result2 = scheduler.createObserver((Int, Int).self)
        var subscription2: Disposable! = nil
        
        let result3 = scheduler.createObserver((Int, Int).self)
        var subscription3: Disposable! = nil
        
        scheduler.scheduleAt(4) {
            subscription1.dispose()
            subscription2 = o.asObservable().subscribe(result2)
        }
        
        scheduler.scheduleAt(5) {
            subscription2.dispose()
            subscription3 = o.asObservable().subscribe(result3)
        }
        
        scheduler.start()
        
        XCTAssertEqual(subscribeCounter, 6)
        XCTAssertTrue(result1.events.isEmpty)
        XCTAssertTrue(result2.events.isEmpty)
        let firstEvent = result3.events.first!
        let (a, b) = firstEvent.value.element!
        XCTAssertEqual(a, 10)
        XCTAssertEqual(b, 5)
        
    }
}
