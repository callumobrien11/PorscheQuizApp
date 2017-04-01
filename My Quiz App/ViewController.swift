//
//  ViewController.swift
//  My Quiz App
//
//  Created by Callum O'Brien on 2017-03-30.
//  Copyright © 2017 Callum. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        questions.displayQuestions(questionLabel: questionLabel, buttonLabel1:buttonLabel1 , buttonLabel2: buttonLabel2, buttonLabel3: buttonLabel3, buttonLabel4: buttonLabel4, nextButton: nextQuestion)
        questionResult.isHidden = true
        nextQuestion.isHidden = true
        playAgain.isHidden = true
        yourScore.isHidden = true
    }
    
    
    var currentRound: Int = 0
    var correctAnswers = 0
    let numberOfQuestions = 5
    var seconds = 10
    
    
    

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var buttonLabel1: UIButton!
    @IBOutlet weak var buttonLabel2: UIButton!
    @IBOutlet weak var buttonLabel3: UIButton!
    @IBOutlet weak var buttonLabel4: UIButton!
    @IBOutlet weak var nextQuestion: UIButton!
    
    @IBOutlet weak var questionResult: UILabel!
    @IBOutlet weak var playAgain: UIButton!
    @IBOutlet weak var yourScore: UILabel!
        
    
    
  func didReceiveMemoryWarning(_ sender: Any) {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }
    
        @IBAction func changeQuestion() {
            if currentRound == numberOfQuestions {
                displayScore()
            } else{
            questions.displayQuestions(questionLabel: questionLabel, buttonLabel1:buttonLabel1 , buttonLabel2: buttonLabel2, buttonLabel3: buttonLabel3, buttonLabel4: buttonLabel4, nextButton: nextQuestion)
            nextQuestion.isHidden = true
            questionResult.isHidden = true
            playAgain.isHidden = true
            yourScore.isHidden = true
            }
           
         }
    

            
            
    
    
    @IBAction func checkAnswers(_ sender: UIButton) {
        if (sender.currentTitle == questions.questions[0]["rightAnswer"]) || (sender.currentTitle == questions.questions[1]["rightAnswer"]) || (sender.currentTitle == questions.questions[2]["rightAnswer"]) || (sender.currentTitle == questions.questions[3]["rightAnswer"]) || (sender.currentTitle == questions.questions[4]["rightAnswer"]) {
            questionResult.text = "Correct!"
            questionResult.isHidden = false
            nextQuestion.isHidden = false
            correctAnswers += 1
            currentRound += 1
            playAgain.isHidden = true
            yourScore.isHidden = true
            
        } else {
        questionResult.text = "Wrong!"
            questionResult.isHidden = false
            nextQuestion.isHidden = false
            playAgain.isHidden = true
            yourScore.isHidden = true
            currentRound += 1
            
               }
        }
    
        
        func displayScore() {
            buttonLabel1.isHidden = true
            buttonLabel2.isHidden = true
            buttonLabel3.isHidden = true
            buttonLabel4.isHidden = true
            questionLabel.isHidden = true
            nextQuestion.isHidden = true
            playAgain.isHidden = false
            yourScore.text = "Great! You got \(correctAnswers) / \(numberOfQuestions)"
            yourScore.isHidden = false
            questionResult.isHidden = true
        }
    
    
    @IBAction func playAgainAction(_ sender: Any) {
        buttonLabel1.isHidden = false
        buttonLabel2.isHidden = false
        buttonLabel3.isHidden = false
        buttonLabel4.isHidden = false
        questionLabel.isHidden = false
        nextQuestion.isHidden = true
        playAgain.isHidden = true
        yourScore.isHidden = true
        correctAnswers = 0
        currentRound = 0
        usedIndex.removeAll()
        
            }
}



    
    
    
    


    
    

   
    
        
  


