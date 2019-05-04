//
//  Node.swift
//  Destini
//
//  Created by Nabyl Bennouri on 5/3/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Node {
    var story: Story
    var nodeLeft: Node?
    var nodeRight: Node?
    
    init(s: Story, nL: Node?, nR: Node?) {
        story = s
        nodeLeft = nL
        nodeRight = nR
    }
}
