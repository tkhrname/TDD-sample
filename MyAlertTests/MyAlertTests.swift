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
        let card1 = Card(rank: .ace, suit: .heart)
        let card2 = Card(rank: .two, suit: .heart)
        XCTAssertTrue(card1.hasSameSuit(card2))
        // 三角測量
        let card3 = Card(rank: .ace, suit: .spade)
        let card4 = Card(rank: .two, suit: .heart)
        XCTAssertFalse(card3.hasSameSuit(card4))
        
    }
    
    override func setUp() {}

    override func tearDown() {}

    func testExample() {}

    func testPerformanceExample() {
        self.measure {}
    }

}
