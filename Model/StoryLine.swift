//
//  StoryLine.swift
//  Destini
//
//  Created by Nabyl Bennouri on 5/3/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

let story1 = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
let answer1a = "I\'ll hop in. Thanks for the help!"
let answer1b = "Better ask him if he\'s a murderer first."


let story2 = "He nods slowly, unphased by the question."
let answer2a = "At least he\'s honest. I\'ll climb in."
let answer2b = "Wait, I know how to change a tire."

let story3 = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
let answer3a = "I love Elton John! Hand him the cassette tape."
let answer3b = "It\'s him or me! You take the knife and stab him."

let story4 = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
let story5 = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
let story6 = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""


let st1 = Story(d: story1, aL: answer1a, aR: answer1b)
let st2 = Story(d: story2, aL: answer2a, aR: answer2b)
let st3 = Story(d: story3, aL: answer3a, aR: answer3b)
let st4 = Story(d: story4, aL: nil, aR:  nil)
let st5 = Story(d: story5, aL: nil, aR: nil)
let st6 = Story(d: story6, aL: nil, aR: nil)

let node1 = Node(s: st1, nL: node3, nR: node2)
let node2 = Node(s: st2, nL: node3, nR: node4)
let node3 = Node(s: st3, nL: node6, nR: node5)
let node4 = Node(s: st4, nL: nil, nR: nil)
let node5 = Node(s: st5, nL: nil, nR: nil)
let node6 = Node(s: st6, nL: nil, nR: nil)

class StoryLine {
    var list = [Node]()
    
    init() {
        list.append(node1)
        list.append(node2)
        list.append(node3)
        list.append(node4)
        list.append(node5)
        list.append(node6)
    }
}
