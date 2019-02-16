//
//  MyAlertTests.swift
//  MyAlertTests
//
//  Created by 渡邊丈洋 on 2019/01/28.
//  Copyright © 2019 渡邊丈洋. All rights reserved.
//

import XCTest
@testable import MyAlert

class MyAlertTests: XCTestCase {
    
    func testInitializeCard(){
        
        var card: Card
        
        card = Card(rank: .three, suit: .heart)
        XCTAssertEqual(card.suit, .heart)
        XCTAssertEqual(card.rank, .three)
        
        card = Card(rank: .jack, suit: .spade)
        XCTAssertEqual(card.suit, .spade)
        XCTAssertEqual(card.rank, .jack)
    }
    
    func testCardNation() {
        var card: Card
        card = Card(rank: .three, suit: .heart)
        XCTAssertEqual(card.notation, "3heart")
        
        card = Card(rank: .jack, suit: .spade)
        XCTAssertEqual(card.notation, "Jspade")
    }
    
    func testHasSameSuit() {
        var card1: Card
        var card2: Card
        card1 = Card(rank: .ace, suit: .heart)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertTrue(card1.hasSameSuit(card2))
        // 三角測量
        card1 = Card(rank: .ace, suit: .spade)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertFalse(card1.hasSameSuit(card2))
        
    }
    
    func testHasSameRank() {
        var card1: Card
        var card2: Card
        card1 = Card(rank: .two, suit: .spade)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertTrue(card1.hasSameRank(card2))
        // 三角測量
        card1 = Card(rank: .ace, suit: .spade)
        card2 = Card(rank: .two, suit: .heart)
        XCTAssertFalse(card1.hasSameRank(card2))
    }
    
    func testCardEqual() {
        var card1: Card
        var card2: Card
        card1 = Card(rank: .jack, suit: .club)
        card2 = Card(rank: .jack, suit: .club)
        XCTAssertEqual(card1, card2)
        // 三角測量
        card1 = Card(rank: .queen, suit: .diamond)
        card2 = Card(rank: .jack, suit: .club)
        XCTAssertNotEqual(card1, card2)
        // 考慮漏れ防ぐ
        card1 = Card(rank: .jack, suit: .diamond)
        card2 = Card(rank: .jack, suit: .club)
        XCTAssertNotEqual(card1, card2)
        // 考慮漏れ防ぐ
        card1 = Card(rank: .queen, suit: .club)
        card2 = Card(rank: .jack, suit: .club)
        XCTAssertNotEqual(card1, card2)
        
    }
    
    func testIsPair() {
//        let card1 = Card(rank: .king, suit: .spade)
//        let card2 = Card(rank: .king, suit: .heart)
//        let hand = Hand(cards: [card1, card2])
//        XCTAssertTrue(hand.isPair)
        
        XCTAssertTrue(Hand(cards: [Card(rank: .king, suit: .spade), Card(rank: .king, suit: .heart)]).isPair)
        
        XCTAssertFalse(Hand(cards: [Card(rank: .king, suit: .spade), Card(rank: .jack, suit: .heart)]).isPair)
    }
    
    func testIsFlash() {
        XCTAssertTrue(Hand(cards: [Card(rank: .king, suit: .spade), Card(rank: .jack, suit: .spade)]).isFlash)
        
        XCTAssertFalse(Hand(cards: [Card(rank: .king, suit: .spade), Card(rank: .jack, suit: .heart)]).isPair)
    }
    
    override func setUp() {}

    override func tearDown() {}

    func testExample() {}

    func testPerformanceExample() {
        self.measure {}
    }

}
