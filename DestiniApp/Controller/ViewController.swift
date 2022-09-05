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

    var storyBrain = StoryBrain()
    var storyNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(storyNumber: storyNumber)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let buttonTapped = sender.currentTitle!
        storyNumber = storyBrain.nextStory(userChoice: buttonTapped)
        if storyNumber>0{
            updateUI(storyNumber: storyNumber)}
    }
    
    func updateUI(storyNumber: Int){
        storyLabel.text = storyBrain.stories[storyNumber].storyTitle
        firstChoiceButton.setTitle(storyBrain.stories[storyNumber].firstChoiceValue, for: .normal)
        secondChoiceButon.setTitle(storyBrain.stories[storyNumber].secondChoiceValue, for: .normal)
    }
    
}

