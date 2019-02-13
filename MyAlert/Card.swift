//
//  Card.swift
//  MyAlert
//
//  Created by 渡邊丈洋 on 2019/01/29.
//  Copyright © 2019 渡邊丈洋. All rights reserved.
//

import Foundation

struct Card {
    
    enum Suit: String {
        case spade
        case heart
        case club
        case diamond
    }
    
    enum Rank: String {
        case ace = "A"
        case two = "2"
        case three = "3"
        case four = "4"
        case five = "5"
        case six = "6"
        case seven = "7"
        case eight = "8"
        case nine = "9"
        case ten = "10"
        case jack = "J"
        case queen = "Q"
        case king = "K"
    }
    
    let rank: Rank
    let suit: Suit
    
    var notation: String {
        return rank.rawValue + suit.rawValue
    }
    
    func hasSameSuit(_ card: Card) -> Bool {
        return true
    }
}
