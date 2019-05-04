//
//  BinaryTree.swift
//  Destini
//
//  Created by Nabyl Bennouri on 5/3/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

enum BinaryTree<T> {
    case empty
    indirect case node(BinaryTree, T, BinaryTree)
}
