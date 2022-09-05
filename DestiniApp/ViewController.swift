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
    
    let firstStory = "You see a fork in the road."
    let firstChoice = "Take a left."
    let secondChoice = "Take a right."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = firstStory
        firstChoiceButton.setTitle(firstChoice, for: .normal)
        secondChoiceButon.setTitle(secondChoice, for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
    }
    
}

