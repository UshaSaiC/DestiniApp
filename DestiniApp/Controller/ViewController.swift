//
//  ViewController.swift
//  DestiniApp
//
//  Created by Usha Sai Chintha on 05/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButon: UIButton!
    
    let stories = [
        Story(storyTitle: "You see a fork in the road.", firstChoiceValue: "Take a left.", secondChoiceValue: "Take a right."),
        Story(storyTitle: "You see a tiger", firstChoiceValue: "Shout for help.", secondChoiceValue: "Play dead."),
        Story(storyTitle: "You find a treasure chest.", firstChoiceValue: "Open it.", secondChoiceValue: "Check for traps.")
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let buttonTapped = sender.currentTitle!
        if buttonTapped == stories[0].firstChoiceValue{
            questionNumber = 1
            updateUI()
        } else if buttonTapped == stories[0].secondChoiceValue{
            questionNumber = 2
            updateUI()
        }
    }
    
    func updateUI(){
        storyLabel.text = stories[questionNumber].storyTitle
        firstChoiceButton.setTitle(stories[questionNumber].firstChoiceValue, for: .normal)
        secondChoiceButon.setTitle(stories[questionNumber].secondChoiceValue, for: .normal)
    }
    
}

