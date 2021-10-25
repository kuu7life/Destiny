//
//  ViewController.swift
//  Destiny
//
//  Created by Amangeldiev Kutman on 25/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabelText: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choicePressed(_ sender: UIButton) {
        if let currentTitle  = sender.currentTitle{
            storyBrain.nextStory(userChoice: currentTitle)
            updateUI()
        }
    }
    
    func updateUI(){
        storyLabelText.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}

