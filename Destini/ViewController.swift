//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Our strings
    let storyLine = StoryLine()
    var currentNode: Node = Node(s: Story(d: "", aL: "", aR: "") ,nL: nil,nR: nil)
    
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    // TODO Step 5: Initialise instance variables here
    override func viewDidLoad() {
        super.viewDidLoad()

        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        currentNode = storyLine.list[0];
        updateDisplay()
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        var endStory = false
        let tag = sender.tag
        
        if (tag == 1) {
            if (currentNode.nodeLeft == nil) {
                updateLastDisplay()
                endStory = true
            } else {
                currentNode = currentNode.nodeLeft!
            }
        } else {
            if (currentNode.nodeRight == nil) {
                updateLastDisplay()
                endStory = true
            } else {
                currentNode = currentNode.nodeRight!
            }
        }
        if (endStory) {
            restart()
        } else {
            updateDisplay()
        }
    }
    
    func updateLastDisplay() {
        topButton.isHidden = true
        bottomButton.setTitle("Restart", for: .normal)
    }
    
    func updateDisplay() {
        storyTextView.text = currentNode.story.description
        if (currentNode.story.answerLeft == nil ||
            currentNode.story.answerRight == nil) {
            updateLastDisplay()
            return
        }
        topButton.setTitle(currentNode.story.answerLeft, for: .normal)
        bottomButton.setTitle(currentNode.story.answerRight, for: .normal)
    }
    
    func restart() {
        currentNode = storyLine.list[0]
        topButton.isHidden = false
        updateDisplay()
    }
}

