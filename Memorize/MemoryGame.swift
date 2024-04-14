//
//  MemoryGame.swift
//  Memorize
//
//  Created by Mateus on 13/04/24.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
    private(set) var cards: Array<Card>
    
    private var indexOfOnlyCardFaceUp: Int?
    
    mutating func choose(_ card: Card) {
        if let chosenIndex = cards.firstIndex(where: { cardInCardsArray in cardInCardsArray.id == card.id }),
           !cards[chosenIndex].isFaceUp,
           !cards[chosenIndex].isMatched
        {
            if let potentialMatchIndex = indexOfOnlyCardFaceUp {
                if cards[chosenIndex].cardContent == cards[potentialMatchIndex].cardContent {
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
                
                indexOfOnlyCardFaceUp = nil
            } else {
                for index in cards.indices {
                    cards[index].isFaceUp = false
                }
                
                indexOfOnlyCardFaceUp = chosenIndex
            }
            cards[chosenIndex].isFaceUp.toggle()
        }
        
        print("chosenCard: \(cards)")
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        
        // add a pair of cards to the array of cards
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            
            cards.append(Card(id: pairIndex*2,cardContent: content))
            cards.append(Card(id: pairIndex*2+1,cardContent: content))
        }
    }
    
    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var cardContent: CardContent
    }
}
