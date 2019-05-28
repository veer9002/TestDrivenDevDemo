//
//  Flow.swift
//  TestDrivenDevDemo
//
//  Created by Manish Sharma on 27/05/19.
//  Copyright © 2019 Manish Sharma. All rights reserved.
//

import Foundation

protocol Router {
    func routeTo(question: String)
}

class Flow {
    let router: Router
    let questions: [String]
    
    init(questions: [String], router: Router) {
        self.router = router
        self.questions = questions
    }
    
    func start() {
        if let firstQuestions = questions.first {
            router.routeTo(question: firstQuestions)
        }
    }
    
}
