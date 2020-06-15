//
//  MemoryGame.swift
//  Memorize
//
//  Created by Chris on 6/14/20.
//  Copyright © 2020 Chris Arnoult. All rights reserved.
//

import Foundation
//
// Whenever creating a model, I always ask myself what this mdoel do. So I always get the vars and functions in place to describe what this thing does.
struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    //
    // Notice this struct is inside MemoryGame struct. So the full name of this is MemoryGame.Card. This is for naming so we know this is not some other kind of card (playing card, etc). This is a MemoryGame Card.
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
