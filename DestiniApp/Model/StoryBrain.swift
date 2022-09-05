//
//  StoryBrain.swift
//  DestiniApp
//
//  Created by Usha Sai Chintha on 05/09/22.
//

import Foundation

struct StoryBrain{
    let stories = [
        Story(storyTitle: "You see a fork in the road.", firstChoiceValue: "Take a left.", secondChoiceValue: "Take a right."),
        Story(storyTitle: "You see a tiger", firstChoiceValue: "Shout for help.", secondChoiceValue: "Play dead."),
        Story(storyTitle: "You find a treasure chest.", firstChoiceValue: "Open it.", secondChoiceValue: "Check for traps.")
    ]
    
    var storyNumber = 0
    
    mutating func nextStory(userChoice: String) -> Int{
        if userChoice == stories[storyNumber].firstChoiceValue{
            return 1
        } else if userChoice == stories[storyNumber].secondChoiceValue{
            return 2
        }
        return 0
    }
    
}

