//
//  FlowTest.swift
//  TestDrivenDevDemoTests
//
//  Created by Manish Sharma on 27/05/19.
//  Copyright © 2019 Manish Sharma. All rights reserved.
//

import Foundation
import XCTest
@testable import TestDrivenDevDemo

class FlowTest: XCTestCase {
    
    func testStartWithNoQuestions_RouteNowhere() {
        
        let router = RouterSpy()
        let sut = Flow(questions: [], router: router)
        sut.start()
        
        XCTAssertEqual(router.routeQuestionCount, 0, "There is question in question bank")
    
    }
    
    func testStartWithOneQuestions_RouteToQuestions() {
        
        let router = RouterSpy()
        let sut = Flow(questions: ["01"], router: router)
        sut.start()
        
        XCTAssertEqual(router.routeQuestionCount, 1, "There is question in question bank")
        
    }
    
    class RouterSpy: Router {
        var routeQuestionCount: Int = 0
        
        func routeTo(question: String) {
            routeQuestionCount += 1
        }
    }
    
}
