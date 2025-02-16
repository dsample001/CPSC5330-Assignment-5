//
//  Quest.swift
//  CPSC 5330 Assignment 5
//
//  Created by user273384 on 2/15/25.
//

import Foundation

struct Quest {
    
    init (_ questIndex: Int, _ questIn: String, _ o_one: String, _ o_two: String, _ optionOneNext: Int, _ optionTwoNext: Int) {
        
        index = questIndex
        quest = questIn
        option_one = o_one
        option_two = o_two
        oneNext = optionOneNext
        twoNext = optionTwoNext
    }
    
    var index: Int
    var quest: String
    var option_one: String
    var option_two: String
    var oneNext: Int
    var twoNext: Int
    
}
