//
//  MemoryGame.swift
//  Memorize
//
//  Created by Mateus on 13/04/24.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        
        // add a pair of cards to the array of cards
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            
            cards.append(Card(cardContent: content))
            cards.append(Card(cardContent: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMateched: Bool = false
        var cardContent: CardContent
    }
}
