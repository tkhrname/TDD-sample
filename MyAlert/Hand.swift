//
//  Hand.swift
//  MyAlert
//
//  Created by 渡邊丈洋 on 2019/02/16.
//  Copyright © 2019 渡邊丈洋. All rights reserved.
//

import Foundation

struct Hand {
    let cards: [Card]
    
    var isPair: Bool {
        return cards[0].rank == cards[1].rank
    }
    
    var isFlash: Bool {
        return cards[0].suit == cards[1].suit
    }
}
