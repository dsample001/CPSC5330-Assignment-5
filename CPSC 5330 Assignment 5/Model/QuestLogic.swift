//
//  QuestLogic.swift
//  CPSC 5330 Assignment 5
//
//  Created by user273384 on 2/15/25.
//

import Foundation

struct QuestLogic {
    
    var questIndex : Int = 0
    
    let quest = [
        // 0
        Quest(1,
              "You found a map to a treasure on a remote island, what do you want to do next?",
              "Rent a boat",
              "Rent a helicopter",
              1,    //101,
              4),   //102),
        
        // 1
        Quest(101,
              "You rented a boat, now what?",
              "Hire a boat captain.",
              "Pilot the boat yourself.",
              2,    //201,
              3),   //202),
        
        // 2
        Quest(201,
              "You hired a boat captain, he stole your map and left you on a deserted island.",
              "You Lost, Start Over",
              "",
              0,    //1,
              0),   // 1),
        
        // 3
        Quest(202,
              "You sail the boat yourself, and find the treasure!",
              "You won!, Try again?",
              "",
              0,    //1,
              0),   //1),
        
        // 4
        Quest(102,
              "You rented a helicopter, now what?",
              "Hire a pilot.",
              "Fly it yourself.",
              5,    //203,
              6),   //204),
        
        // 5
        Quest(203,
             "You hired a pilot, he takes your map, and leaves you on a deserted isalnd.",
             "You Lost, Start Over",
             "",
             0,    //1,
             0),   //1),
        
        // 6
        Quest(204,
             "You don't know how to fly a helicoptor!.  You crash.",
             "You Lost, Start Over",
             "",
             0,     //1,
             0),    //1)
        
    ]
    
    mutating func newIndexOne() {
        questIndex = quest[questIndex].oneNext
    }
    
    mutating func newIndexTwo() {
        questIndex = quest[questIndex].twoNext
    }
    
    func getImageName() -> Int {
        return quest[questIndex].index
    }
    
    func getNextQuest() -> String {
        return quest[questIndex].quest
    }
    
    func getChoiceOne() -> String {
        return quest[questIndex].option_one
    }
    
    func getChoiceTwo() -> String {
        return quest[questIndex].option_two
    }
}
