//
//  questionPicker.swift
//  My Quiz App
//
//  Created by Callum O'Brien on 2017-03-30.
//  Copyright © 2017 Callum. All rights reserved.
//

import Foundation
import UIKit
import GameKit

var usedIndex: [Int] = []


struct QuestionPicker {
    let questions: [[String: String]]


func checkQuestions() -> Int {
    var redo = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
    
    while usedIndex.contains(redo) == true {
        redo = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)

    }
    usedIndex.append(redo)
    return redo
    
  }
    func displayQuestions(questionLabel: UILabel, buttonLabel1: UIButton, buttonLabel2: UIButton, buttonLabel3: UIButton, buttonLabel4: UIButton, nextButton: UIButton) {

    let noRepeat = checkQuestions()
        
        var index =  GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)

        while index != noRepeat  {
           index =  GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)

        }
        questionLabel.text = questions[index]["question"]
        
        if index == 0 {
            buttonLabel3.setTitle(questions[index]["rightAnswer"], for: .normal)
            buttonLabel1.setTitle(questions[index]["false2"], for: .normal)
            buttonLabel2.setTitle(questions[index]["false1"], for: .normal)
            buttonLabel4.setTitle(questions[index]["false3"], for: .normal)
        
        } else if index == 1{
            buttonLabel1.setTitle(questions[index]["rightAnswer"], for: .normal)
            buttonLabel3.setTitle(questions[index]["false2"], for: .normal)
            buttonLabel4.setTitle(questions[index]["false1"], for: .normal)
            buttonLabel2.setTitle(questions[index]["false3"], for: .normal)

        } else if index == 2 {
            buttonLabel4.setTitle(questions[index]["rightAnswer"], for: .normal)
            buttonLabel1.setTitle(questions[index]["false2"], for: .normal)
            buttonLabel2.setTitle(questions[index]["false1"], for: .normal)
            buttonLabel3.setTitle(questions[index]["false3"], for: .normal)

        } else if index == 3 {
            buttonLabel1.setTitle(questions[index]["rightAnswer"], for: .normal)
            buttonLabel2.setTitle(questions[index]["false2"], for: .normal)
            buttonLabel3.setTitle(questions[index]["false1"], for: .normal)
            buttonLabel4.setTitle(questions[index]["false3"], for: .normal)

        } else {
            buttonLabel2.setTitle(questions[index]["rightAnswer"], for: .normal)
            buttonLabel4.setTitle(questions[index]["false2"], for: .normal)
            buttonLabel1.setTitle(questions[index]["false1"], for: .normal)
            buttonLabel3.setTitle(questions[index]["false3"], for: .normal)

        }
        
    
    }
}



    let questions = QuestionPicker(questions: [
    ["question": "When was the first porsche made", "rightAnswer": "1931", "false1": "1942", "false2": "1926", "false3": "2009"],
    ["question": "In which German city is the Porsche headquartered?", "rightAnswer": "Stuttgart", "false1": "Wurzburg", "false2": "Ingolstadt", "false3": "Wolfsburg"],
    ["question": "Who founded Porsche?", "rightAnswer": "Ferdinand Porsche", "false1": "Leopold Porsche","false2": "Callum O'Brien", "false3": "Kristof Porsche"],
    ["question": "Which vehicle has the most horsepower?", "rightAnswer": "2008 Porsche Cayenne Turbo S", "false1": "1997 Porsche 911 Turbo S", "false2": "2006 Porsche Cayman S", "false3": "2012 Porsche Panamera Turbo"],
    ["question": "What is the base MSRP for a 2014 Porsche 918 Spyder?", "rightAnswer": "$845,000", "false1": "$1,125,000", "false2": "$765,000", "false3": "$990,000"]
    ])

















