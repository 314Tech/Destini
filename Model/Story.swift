//
//  Story.swift
//  Destini
//
//  Created by Nabyl Bennouri on 5/3/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    var description: String
    var answerLeft: String?
    var answerRight: String?
    
    init(d: String, aL: String?, aR: String?) {
        description = d
        answerLeft = aL
        answerRight = aR
    }
}
